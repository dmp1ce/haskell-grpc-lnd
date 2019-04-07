#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

# Prepare sources by generating gRPC sources
mkdir -p "$DIR/gen"
mkdir -p "$DIR/gen-bin"
mkdir -p "$DIR/protos"

echo "Getting Goole APIs proto definitions ..."
if [ ! -d "$DIR/protos/grpc-gateway" ]; then
    git clone https://github.com/grpc-ecosystem/grpc-gateway.git "$DIR/protos/grpc-gateway"
fi
git -C "$DIR/protos/grpc-gateway" pull
GRPC_GATEWAY_VERSION=$(git -C "$DIR/protos/grpc-gateway" describe --long --tags | sed 's/^v//;s/\([^-]*-g\)/r\1/;s/-/./g')

echo "Getting LND proto definitions ..."
if [ ! -d "$DIR/protos/lnd" ]; then
    git clone https://github.com/lightningnetwork/lnd.git "$DIR/protos/lnd"
fi
git -C "$DIR/protos/lnd" pull
LND_VERSION=$(git -C "$DIR/protos/lnd" describe --long --tags | sed 's/^v//;s/\([^-]*-g\)/r\1/;s/-/./g')

echo "Building proto-lens-protoc"
stack build --copy-bins --local-bin-path="$DIR/gen-bin" proto-lens-protoc-0.5.0.0
protolens="$DIR/gen-bin/proto-lens-protoc"

if [ -x "${protolens}" ]
then
	  echo "using ${protolens}" ;
else
	  echo "no proto-lens-protoc"
	  exit 2
fi;

echo "Generating LND protos"
# Globbing all *.protos, safe bash trick
# https://github.com/koalaman/shellcheck/wiki/Sc2046
mapfile -t lnrpc_protos < <(find "$DIR/protos/lnd/lnrpc" -iname "*.proto")
protoc  "--plugin=protoc-gen-haskell-protolens=${protolens}" \
	      --haskell-protolens_out="$DIR/gen" \
        -I "$DIR/protos/grpc-gateway/third_party/googleapis" \
        -I "$DIR/protos/lnd/lnrpc" \
        "${lnrpc_protos[@]}"

echo "Generating Google API protos"
mapfile -t google_protos < <(find "$DIR/protos/grpc-gateway/third_party/googleapis/google/api" -iname "*.proto")
protoc  "--plugin=protoc-gen-haskell-protolens=${protolens}" \
	      --haskell-protolens_out="$DIR/gen" \
        -I "$DIR/protos/grpc-gateway/third_party/googleapis" \
        -I "$DIR/protos/lnd/lnrpc" \
        "${google_protos[@]}"


echo "Inserting build version comment for each module"
# shellcheck disable=SC1004
find "$DIR/gen" -name "*.hs" -exec sed -i "/^module .*/i \
-- | License: PublicDomain\n\
--\n\
-- Generated using protos from:\n\
--\n\
--   * [GRPC Gateway](https://github.com/grpc-ecosystem/grpc-gateway) version: $GRPC_GATEWAY_VERSION\n\
--   * [LND](https://github.com/lightningnetwork/lnd) version: $LND_VERSION" {} +

echo "Done. Ready to build."
