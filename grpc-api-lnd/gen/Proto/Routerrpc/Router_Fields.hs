{- This file was auto-generated from routerrpc/router.proto by the proto-lens-protoc program. -}
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
module Proto.Routerrpc.Router_Fields where
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

amtSat ::
       forall f s a .
         (Prelude.Functor f, Data.ProtoLens.Field.HasField s "amtSat" a) =>
         Lens.Family2.LensLike' f s a
amtSat = Data.ProtoLens.Field.field @"amtSat"
cltvLimit ::
          forall f s a .
            (Prelude.Functor f,
             Data.ProtoLens.Field.HasField s "cltvLimit" a) =>
            Lens.Family2.LensLike' f s a
cltvLimit = Data.ProtoLens.Field.field @"cltvLimit"
dest ::
     forall f s a .
       (Prelude.Functor f, Data.ProtoLens.Field.HasField s "dest" a) =>
       Lens.Family2.LensLike' f s a
dest = Data.ProtoLens.Field.field @"dest"
feeLimitSat ::
            forall f s a .
              (Prelude.Functor f,
               Data.ProtoLens.Field.HasField s "feeLimitSat" a) =>
              Lens.Family2.LensLike' f s a
feeLimitSat = Data.ProtoLens.Field.field @"feeLimitSat"
outgoingChannelId ::
                  forall f s a .
                    (Prelude.Functor f,
                     Data.ProtoLens.Field.HasField s "outgoingChannelId" a) =>
                    Lens.Family2.LensLike' f s a
outgoingChannelId = Data.ProtoLens.Field.field @"outgoingChannelId"
payHash ::
        forall f s a .
          (Prelude.Functor f, Data.ProtoLens.Field.HasField s "payHash" a) =>
          Lens.Family2.LensLike' f s a
payHash = Data.ProtoLens.Field.field @"payHash"
payReq ::
       forall f s a .
         (Prelude.Functor f, Data.ProtoLens.Field.HasField s "payReq" a) =>
         Lens.Family2.LensLike' f s a
payReq = Data.ProtoLens.Field.field @"payReq"
paymentErr ::
           forall f s a .
             (Prelude.Functor f,
              Data.ProtoLens.Field.HasField s "paymentErr" a) =>
             Lens.Family2.LensLike' f s a
paymentErr = Data.ProtoLens.Field.field @"paymentErr"
preImage ::
         forall f s a .
           (Prelude.Functor f,
            Data.ProtoLens.Field.HasField s "preImage" a) =>
           Lens.Family2.LensLike' f s a
preImage = Data.ProtoLens.Field.field @"preImage"
routingFeeMsat ::
               forall f s a .
                 (Prelude.Functor f,
                  Data.ProtoLens.Field.HasField s "routingFeeMsat" a) =>
                 Lens.Family2.LensLike' f s a
routingFeeMsat = Data.ProtoLens.Field.field @"routingFeeMsat"
timeLockDelay ::
              forall f s a .
                (Prelude.Functor f,
                 Data.ProtoLens.Field.HasField s "timeLockDelay" a) =>
                Lens.Family2.LensLike' f s a
timeLockDelay = Data.ProtoLens.Field.field @"timeLockDelay"
timeoutSeconds ::
               forall f s a .
                 (Prelude.Functor f,
                  Data.ProtoLens.Field.HasField s "timeoutSeconds" a) =>
                 Lens.Family2.LensLike' f s a
timeoutSeconds = Data.ProtoLens.Field.field @"timeoutSeconds"