{- This file was auto-generated from signrpc/signer.proto by the proto-lens-protoc program. -}
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
module Proto.Signrpc.Signer_Fields where
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

doubleTweak ::
            forall f s a .
              (Prelude.Functor f,
               Data.ProtoLens.Field.HasField s "doubleTweak" a) =>
              Lens.Family2.LensLike' f s a
doubleTweak = Data.ProtoLens.Field.field @"doubleTweak"
inputIndex ::
           forall f s a .
             (Prelude.Functor f,
              Data.ProtoLens.Field.HasField s "inputIndex" a) =>
             Lens.Family2.LensLike' f s a
inputIndex = Data.ProtoLens.Field.field @"inputIndex"
inputScripts ::
             forall f s a .
               (Prelude.Functor f,
                Data.ProtoLens.Field.HasField s "inputScripts" a) =>
               Lens.Family2.LensLike' f s a
inputScripts = Data.ProtoLens.Field.field @"inputScripts"
keyDesc ::
        forall f s a .
          (Prelude.Functor f, Data.ProtoLens.Field.HasField s "keyDesc" a) =>
          Lens.Family2.LensLike' f s a
keyDesc = Data.ProtoLens.Field.field @"keyDesc"
keyFamily ::
          forall f s a .
            (Prelude.Functor f,
             Data.ProtoLens.Field.HasField s "keyFamily" a) =>
            Lens.Family2.LensLike' f s a
keyFamily = Data.ProtoLens.Field.field @"keyFamily"
keyIndex ::
         forall f s a .
           (Prelude.Functor f,
            Data.ProtoLens.Field.HasField s "keyIndex" a) =>
           Lens.Family2.LensLike' f s a
keyIndex = Data.ProtoLens.Field.field @"keyIndex"
keyLoc ::
       forall f s a .
         (Prelude.Functor f, Data.ProtoLens.Field.HasField s "keyLoc" a) =>
         Lens.Family2.LensLike' f s a
keyLoc = Data.ProtoLens.Field.field @"keyLoc"
maybe'keyDesc ::
              forall f s a .
                (Prelude.Functor f,
                 Data.ProtoLens.Field.HasField s "maybe'keyDesc" a) =>
                Lens.Family2.LensLike' f s a
maybe'keyDesc = Data.ProtoLens.Field.field @"maybe'keyDesc"
maybe'keyLoc ::
             forall f s a .
               (Prelude.Functor f,
                Data.ProtoLens.Field.HasField s "maybe'keyLoc" a) =>
               Lens.Family2.LensLike' f s a
maybe'keyLoc = Data.ProtoLens.Field.field @"maybe'keyLoc"
maybe'output ::
             forall f s a .
               (Prelude.Functor f,
                Data.ProtoLens.Field.HasField s "maybe'output" a) =>
               Lens.Family2.LensLike' f s a
maybe'output = Data.ProtoLens.Field.field @"maybe'output"
output ::
       forall f s a .
         (Prelude.Functor f, Data.ProtoLens.Field.HasField s "output" a) =>
         Lens.Family2.LensLike' f s a
output = Data.ProtoLens.Field.field @"output"
pkScript ::
         forall f s a .
           (Prelude.Functor f,
            Data.ProtoLens.Field.HasField s "pkScript" a) =>
           Lens.Family2.LensLike' f s a
pkScript = Data.ProtoLens.Field.field @"pkScript"
rawKeyBytes ::
            forall f s a .
              (Prelude.Functor f,
               Data.ProtoLens.Field.HasField s "rawKeyBytes" a) =>
              Lens.Family2.LensLike' f s a
rawKeyBytes = Data.ProtoLens.Field.field @"rawKeyBytes"
rawSigs ::
        forall f s a .
          (Prelude.Functor f, Data.ProtoLens.Field.HasField s "rawSigs" a) =>
          Lens.Family2.LensLike' f s a
rawSigs = Data.ProtoLens.Field.field @"rawSigs"
rawTxBytes ::
           forall f s a .
             (Prelude.Functor f,
              Data.ProtoLens.Field.HasField s "rawTxBytes" a) =>
             Lens.Family2.LensLike' f s a
rawTxBytes = Data.ProtoLens.Field.field @"rawTxBytes"
sigScript ::
          forall f s a .
            (Prelude.Functor f,
             Data.ProtoLens.Field.HasField s "sigScript" a) =>
            Lens.Family2.LensLike' f s a
sigScript = Data.ProtoLens.Field.field @"sigScript"
sighash ::
        forall f s a .
          (Prelude.Functor f, Data.ProtoLens.Field.HasField s "sighash" a) =>
          Lens.Family2.LensLike' f s a
sighash = Data.ProtoLens.Field.field @"sighash"
signDescs ::
          forall f s a .
            (Prelude.Functor f,
             Data.ProtoLens.Field.HasField s "signDescs" a) =>
            Lens.Family2.LensLike' f s a
signDescs = Data.ProtoLens.Field.field @"signDescs"
singleTweak ::
            forall f s a .
              (Prelude.Functor f,
               Data.ProtoLens.Field.HasField s "singleTweak" a) =>
              Lens.Family2.LensLike' f s a
singleTweak = Data.ProtoLens.Field.field @"singleTweak"
value ::
      forall f s a .
        (Prelude.Functor f, Data.ProtoLens.Field.HasField s "value" a) =>
        Lens.Family2.LensLike' f s a
value = Data.ProtoLens.Field.field @"value"
vec'inputScripts ::
                 forall f s a .
                   (Prelude.Functor f,
                    Data.ProtoLens.Field.HasField s "vec'inputScripts" a) =>
                   Lens.Family2.LensLike' f s a
vec'inputScripts = Data.ProtoLens.Field.field @"vec'inputScripts"
vec'rawSigs ::
            forall f s a .
              (Prelude.Functor f,
               Data.ProtoLens.Field.HasField s "vec'rawSigs" a) =>
              Lens.Family2.LensLike' f s a
vec'rawSigs = Data.ProtoLens.Field.field @"vec'rawSigs"
vec'signDescs ::
              forall f s a .
                (Prelude.Functor f,
                 Data.ProtoLens.Field.HasField s "vec'signDescs" a) =>
                Lens.Family2.LensLike' f s a
vec'signDescs = Data.ProtoLens.Field.field @"vec'signDescs"
vec'witness ::
            forall f s a .
              (Prelude.Functor f,
               Data.ProtoLens.Field.HasField s "vec'witness" a) =>
              Lens.Family2.LensLike' f s a
vec'witness = Data.ProtoLens.Field.field @"vec'witness"
witness ::
        forall f s a .
          (Prelude.Functor f, Data.ProtoLens.Field.HasField s "witness" a) =>
          Lens.Family2.LensLike' f s a
witness = Data.ProtoLens.Field.field @"witness"
witnessScript ::
              forall f s a .
                (Prelude.Functor f,
                 Data.ProtoLens.Field.HasField s "witnessScript" a) =>
                Lens.Family2.LensLike' f s a
witnessScript = Data.ProtoLens.Field.field @"witnessScript"