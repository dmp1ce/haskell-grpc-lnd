-- | Access LND over gRPC.
--
-- This library offers a low-on-details LND APIs to easily add distributed
-- system mechanisms into your Haskell applications.
--
-- This library uses the 'Network.GRPC.Client.Helpers' module from
-- 'http2-client-grpc', which may trade some functionalities for the sake of
-- simplicity. A typically hidden functionality is the possibility to abort a
-- query upon a client decision (e.g., while waiting for some Lock).
module Network.Lnd
  (
  -- * Generalities.
    lndClientConfigSimple
  -- * Unlock
  , unlockWallet
  ) where

import Network.GRPC.Client.Helpers
  ( _grpcClientConfigCompression
  , _grpcClientConfigTLS
  , setupGrpcClient
  , grpcClientConfigSimple
  , tlsSettings
  , GrpcClient
  )
import Network.GRPC.Client
  ( gzip
  , uncompressed
  , RPC (RPC)
  )
import Control.Lens
  ( (&)
  , (.~)
  , preview
  )
import Network.GRPC.Client.Helpers ( rawUnary, unaryOutput )
import Data.ProtoLens.Message (defMessage)

import Proto.Rpc (WalletUnlocker, UnlockWalletResponse)
import Proto.Rpc_Fields (walletPassword)
import Network.Socket (HostName, PortNumber)
import Data.X509.CertificateStore (CertificateStore)
import Data.X509.Validation (validateDefault)
import qualified Network.TLS as TLS
import Data.Default.Class (def)
import qualified Data.ByteString as B

-- | LndClient configuration
lndClientConfigSimple :: HostName -> PortNumber -> Bool -> Bool -> Maybe CertificateStore -> IO GrpcClient
lndClientConfigSimple host port tlsEnabled doCompress mstore = do
  setupGrpcClient ((grpcClientConfigSimple host port tlsEnabled)
                     { _grpcClientConfigCompression = compression
                     , _grpcClientConfigTLS = mClientParams
                     })
  where
    compression = if doCompress then gzip else uncompressed
    mClientParams = setParams <$> (tlsSettings tlsEnabled host port)
    setParams cp = cp { TLS.clientShared = setStore mstore
                      , TLS.clientHooks = def { TLS.onServerCertificate = validateDefault }
                      }
    setStore (Just store) = def { TLS.sharedCAStore = store }
    setStore Nothing = def

-- | Type alias to simplify type signatures.
type LndQuery a = IO (Maybe a)

-- | wallet unlocker
unlockWallet :: GrpcClient -> B.ByteString -> LndQuery UnlockWalletResponse
unlockWallet grpc p = preview unaryOutput <$> rawUnary (RPC :: RPC WalletUnlocker "unlockWallet") grpc (
  defMessage
    & walletPassword .~ p
  )
