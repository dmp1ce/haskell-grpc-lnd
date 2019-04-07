{- This file was auto-generated from walletrpc/walletkit.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies,
  UndecidableInstances, GeneralizedNewtypeDeriving,
  MultiParamTypeClasses, FlexibleContexts, FlexibleInstances,
  PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds,
  BangPatterns, TypeApplications #-}
{-# OPTIONS_GHC -fno-warn-unused-imports#-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports#-}
-- | License: PublicDomain
--
-- Generated using protos from:
--
--   * [GRPC Gateway](https://github.com/grpc-ecosystem/grpc-gateway) version: 1.8.5.r2.g79ff520
--   * [LND](https://github.com/lightningnetwork/lnd) version: 0.6.beta.rc3.r2.g1fea5b09
module Proto.Walletrpc.Walletkit_Fields where
import qualified Data.ProtoLens.Runtime.Prelude as Prelude
import qualified Data.ProtoLens.Runtime.Data.Int as Data.Int
import qualified Data.ProtoLens.Runtime.Data.Monoid as Data.Monoid
import qualified Data.ProtoLens.Runtime.Data.Word as Data.Word
import qualified Data.ProtoLens.Runtime.Data.ProtoLens
       as Data.ProtoLens
import qualified
       Data.ProtoLens.Runtime.Data.ProtoLens.Encoding.Bytes
       as Data.ProtoLens.Encoding.Bytes
import qualified
       Data.ProtoLens.Runtime.Data.ProtoLens.Encoding.Growing
       as Data.ProtoLens.Encoding.Growing
import qualified
       Data.ProtoLens.Runtime.Data.ProtoLens.Encoding.Parser.Unsafe
       as Data.ProtoLens.Encoding.Parser.Unsafe
import qualified
       Data.ProtoLens.Runtime.Data.ProtoLens.Encoding.Wire
       as Data.ProtoLens.Encoding.Wire
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Field
       as Data.ProtoLens.Field
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Message.Enum
       as Data.ProtoLens.Message.Enum
import qualified
       Data.ProtoLens.Runtime.Data.ProtoLens.Service.Types
       as Data.ProtoLens.Service.Types
import qualified Data.ProtoLens.Runtime.Lens.Family2
       as Lens.Family2
import qualified Data.ProtoLens.Runtime.Lens.Family2.Unchecked
       as Lens.Family2.Unchecked
import qualified Data.ProtoLens.Runtime.Data.Text as Data.Text
import qualified Data.ProtoLens.Runtime.Data.Map as Data.Map
import qualified Data.ProtoLens.Runtime.Data.ByteString
       as Data.ByteString
import qualified Data.ProtoLens.Runtime.Data.ByteString.Char8
       as Data.ByteString.Char8
import qualified Data.ProtoLens.Runtime.Data.Text.Encoding
       as Data.Text.Encoding
import qualified Data.ProtoLens.Runtime.Data.Vector as Data.Vector
import qualified Data.ProtoLens.Runtime.Data.Vector.Generic
       as Data.Vector.Generic
import qualified Data.ProtoLens.Runtime.Data.Vector.Unboxed
       as Data.Vector.Unboxed
import qualified Data.ProtoLens.Runtime.Text.Read as Text.Read
import qualified Proto.Signrpc.Signer

addr ::
     forall f s a .
       (Prelude.Functor f, Data.ProtoLens.Field.HasField s "addr" a) =>
       Lens.Family2.LensLike' f s a
addr = Data.ProtoLens.Field.field @"addr"
confTarget ::
           forall f s a .
             (Prelude.Functor f,
              Data.ProtoLens.Field.HasField s "confTarget" a) =>
             Lens.Family2.LensLike' f s a
confTarget = Data.ProtoLens.Field.field @"confTarget"
keyFamily ::
          forall f s a .
            (Prelude.Functor f,
             Data.ProtoLens.Field.HasField s "keyFamily" a) =>
            Lens.Family2.LensLike' f s a
keyFamily = Data.ProtoLens.Field.field @"keyFamily"
keyFingerPrint ::
               forall f s a .
                 (Prelude.Functor f,
                  Data.ProtoLens.Field.HasField s "keyFingerPrint" a) =>
                 Lens.Family2.LensLike' f s a
keyFingerPrint = Data.ProtoLens.Field.field @"keyFingerPrint"
outputs ::
        forall f s a .
          (Prelude.Functor f, Data.ProtoLens.Field.HasField s "outputs" a) =>
          Lens.Family2.LensLike' f s a
outputs = Data.ProtoLens.Field.field @"outputs"
publishError ::
             forall f s a .
               (Prelude.Functor f,
                Data.ProtoLens.Field.HasField s "publishError" a) =>
               Lens.Family2.LensLike' f s a
publishError = Data.ProtoLens.Field.field @"publishError"
rawTx ::
      forall f s a .
        (Prelude.Functor f, Data.ProtoLens.Field.HasField s "rawTx" a) =>
        Lens.Family2.LensLike' f s a
rawTx = Data.ProtoLens.Field.field @"rawTx"
satPerKw ::
         forall f s a .
           (Prelude.Functor f,
            Data.ProtoLens.Field.HasField s "satPerKw" a) =>
           Lens.Family2.LensLike' f s a
satPerKw = Data.ProtoLens.Field.field @"satPerKw"
txHex ::
      forall f s a .
        (Prelude.Functor f, Data.ProtoLens.Field.HasField s "txHex" a) =>
        Lens.Family2.LensLike' f s a
txHex = Data.ProtoLens.Field.field @"txHex"
vec'outputs ::
            forall f s a .
              (Prelude.Functor f,
               Data.ProtoLens.Field.HasField s "vec'outputs" a) =>
              Lens.Family2.LensLike' f s a
vec'outputs = Data.ProtoLens.Field.field @"vec'outputs"