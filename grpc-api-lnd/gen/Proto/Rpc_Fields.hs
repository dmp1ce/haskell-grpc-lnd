{- This file was auto-generated from rpc.proto by the proto-lens-protoc program. -}
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
module Proto.Rpc_Fields where
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
import qualified Proto.Google.Api.Annotations

abandoned ::
          forall f s a .
            (Prelude.Functor f,
             Data.ProtoLens.Field.HasField s "abandoned" a) =>
            Lens.Family2.LensLike' f s a
abandoned = Data.ProtoLens.Field.field @"abandoned"
active ::
       forall f s a .
         (Prelude.Functor f, Data.ProtoLens.Field.HasField s "active" a) =>
         Lens.Family2.LensLike' f s a
active = Data.ProtoLens.Field.field @"active"
activeChannel ::
              forall f s a .
                (Prelude.Functor f,
                 Data.ProtoLens.Field.HasField s "activeChannel" a) =>
                Lens.Family2.LensLike' f s a
activeChannel = Data.ProtoLens.Field.field @"activeChannel"
activeOnly ::
           forall f s a .
             (Prelude.Functor f,
              Data.ProtoLens.Field.HasField s "activeOnly" a) =>
             Lens.Family2.LensLike' f s a
activeOnly = Data.ProtoLens.Field.field @"activeOnly"
addIndex ::
         forall f s a .
           (Prelude.Functor f,
            Data.ProtoLens.Field.HasField s "addIndex" a) =>
           Lens.Family2.LensLike' f s a
addIndex = Data.ProtoLens.Field.field @"addIndex"
addr ::
     forall f s a .
       (Prelude.Functor f, Data.ProtoLens.Field.HasField s "addr" a) =>
       Lens.Family2.LensLike' f s a
addr = Data.ProtoLens.Field.field @"addr"
addrToAmount ::
             forall f s a .
               (Prelude.Functor f,
                Data.ProtoLens.Field.HasField s "addrToAmount" a) =>
               Lens.Family2.LensLike' f s a
addrToAmount = Data.ProtoLens.Field.field @"addrToAmount"
address ::
        forall f s a .
          (Prelude.Functor f, Data.ProtoLens.Field.HasField s "address" a) =>
          Lens.Family2.LensLike' f s a
address = Data.ProtoLens.Field.field @"address"
addresses ::
          forall f s a .
            (Prelude.Functor f,
             Data.ProtoLens.Field.HasField s "addresses" a) =>
            Lens.Family2.LensLike' f s a
addresses = Data.ProtoLens.Field.field @"addresses"
advertisingNode ::
                forall f s a .
                  (Prelude.Functor f,
                   Data.ProtoLens.Field.HasField s "advertisingNode" a) =>
                  Lens.Family2.LensLike' f s a
advertisingNode = Data.ProtoLens.Field.field @"advertisingNode"
aezeedPassphrase ::
                 forall f s a .
                   (Prelude.Functor f,
                    Data.ProtoLens.Field.HasField s "aezeedPassphrase" a) =>
                   Lens.Family2.LensLike' f s a
aezeedPassphrase = Data.ProtoLens.Field.field @"aezeedPassphrase"
alias ::
      forall f s a .
        (Prelude.Functor f, Data.ProtoLens.Field.HasField s "alias" a) =>
        Lens.Family2.LensLike' f s a
alias = Data.ProtoLens.Field.field @"alias"
amount ::
       forall f s a .
         (Prelude.Functor f, Data.ProtoLens.Field.HasField s "amount" a) =>
         Lens.Family2.LensLike' f s a
amount = Data.ProtoLens.Field.field @"amount"
amountSat ::
          forall f s a .
            (Prelude.Functor f,
             Data.ProtoLens.Field.HasField s "amountSat" a) =>
            Lens.Family2.LensLike' f s a
amountSat = Data.ProtoLens.Field.field @"amountSat"
amt ::
    forall f s a .
      (Prelude.Functor f, Data.ProtoLens.Field.HasField s "amt" a) =>
      Lens.Family2.LensLike' f s a
amt = Data.ProtoLens.Field.field @"amt"
amtIn ::
      forall f s a .
        (Prelude.Functor f, Data.ProtoLens.Field.HasField s "amtIn" a) =>
        Lens.Family2.LensLike' f s a
amtIn = Data.ProtoLens.Field.field @"amtIn"
amtOut ::
       forall f s a .
         (Prelude.Functor f, Data.ProtoLens.Field.HasField s "amtOut" a) =>
         Lens.Family2.LensLike' f s a
amtOut = Data.ProtoLens.Field.field @"amtOut"
amtPaid ::
        forall f s a .
          (Prelude.Functor f, Data.ProtoLens.Field.HasField s "amtPaid" a) =>
          Lens.Family2.LensLike' f s a
amtPaid = Data.ProtoLens.Field.field @"amtPaid"
amtPaidMsat ::
            forall f s a .
              (Prelude.Functor f,
               Data.ProtoLens.Field.HasField s "amtPaidMsat" a) =>
              Lens.Family2.LensLike' f s a
amtPaidMsat = Data.ProtoLens.Field.field @"amtPaidMsat"
amtPaidSat ::
           forall f s a .
             (Prelude.Functor f,
              Data.ProtoLens.Field.HasField s "amtPaidSat" a) =>
             Lens.Family2.LensLike' f s a
amtPaidSat = Data.ProtoLens.Field.field @"amtPaidSat"
amtToForward ::
             forall f s a .
               (Prelude.Functor f,
                Data.ProtoLens.Field.HasField s "amtToForward" a) =>
               Lens.Family2.LensLike' f s a
amtToForward = Data.ProtoLens.Field.field @"amtToForward"
amtToForwardMsat ::
                 forall f s a .
                   (Prelude.Functor f,
                    Data.ProtoLens.Field.HasField s "amtToForwardMsat" a) =>
                   Lens.Family2.LensLike' f s a
amtToForwardMsat = Data.ProtoLens.Field.field @"amtToForwardMsat"
avgChannelSize ::
               forall f s a .
                 (Prelude.Functor f,
                  Data.ProtoLens.Field.HasField s "avgChannelSize" a) =>
                 Lens.Family2.LensLike' f s a
avgChannelSize = Data.ProtoLens.Field.field @"avgChannelSize"
avgOutDegree ::
             forall f s a .
               (Prelude.Functor f,
                Data.ProtoLens.Field.HasField s "avgOutDegree" a) =>
               Lens.Family2.LensLike' f s a
avgOutDegree = Data.ProtoLens.Field.field @"avgOutDegree"
balance ::
        forall f s a .
          (Prelude.Functor f, Data.ProtoLens.Field.HasField s "balance" a) =>
          Lens.Family2.LensLike' f s a
balance = Data.ProtoLens.Field.field @"balance"
baseFeeMsat ::
            forall f s a .
              (Prelude.Functor f,
               Data.ProtoLens.Field.HasField s "baseFeeMsat" a) =>
              Lens.Family2.LensLike' f s a
baseFeeMsat = Data.ProtoLens.Field.field @"baseFeeMsat"
bestHeaderTimestamp ::
                    forall f s a .
                      (Prelude.Functor f,
                       Data.ProtoLens.Field.HasField s "bestHeaderTimestamp" a) =>
                      Lens.Family2.LensLike' f s a
bestHeaderTimestamp
  = Data.ProtoLens.Field.field @"bestHeaderTimestamp"
blockHash ::
          forall f s a .
            (Prelude.Functor f,
             Data.ProtoLens.Field.HasField s "blockHash" a) =>
            Lens.Family2.LensLike' f s a
blockHash = Data.ProtoLens.Field.field @"blockHash"
blockHeight ::
            forall f s a .
              (Prelude.Functor f,
               Data.ProtoLens.Field.HasField s "blockHeight" a) =>
              Lens.Family2.LensLike' f s a
blockHeight = Data.ProtoLens.Field.field @"blockHeight"
blockSha ::
         forall f s a .
           (Prelude.Functor f,
            Data.ProtoLens.Field.HasField s "blockSha" a) =>
           Lens.Family2.LensLike' f s a
blockSha = Data.ProtoLens.Field.field @"blockSha"
blocksTilMaturity ::
                  forall f s a .
                    (Prelude.Functor f,
                     Data.ProtoLens.Field.HasField s "blocksTilMaturity" a) =>
                    Lens.Family2.LensLike' f s a
blocksTilMaturity = Data.ProtoLens.Field.field @"blocksTilMaturity"
breach ::
       forall f s a .
         (Prelude.Functor f, Data.ProtoLens.Field.HasField s "breach" a) =>
         Lens.Family2.LensLike' f s a
breach = Data.ProtoLens.Field.field @"breach"
bytesRecv ::
          forall f s a .
            (Prelude.Functor f,
             Data.ProtoLens.Field.HasField s "bytesRecv" a) =>
            Lens.Family2.LensLike' f s a
bytesRecv = Data.ProtoLens.Field.field @"bytesRecv"
bytesSent ::
          forall f s a .
            (Prelude.Functor f,
             Data.ProtoLens.Field.HasField s "bytesSent" a) =>
            Lens.Family2.LensLike' f s a
bytesSent = Data.ProtoLens.Field.field @"bytesSent"
capacity ::
         forall f s a .
           (Prelude.Functor f,
            Data.ProtoLens.Field.HasField s "capacity" a) =>
           Lens.Family2.LensLike' f s a
capacity = Data.ProtoLens.Field.field @"capacity"
chain ::
      forall f s a .
        (Prelude.Functor f, Data.ProtoLens.Field.HasField s "chain" a) =>
        Lens.Family2.LensLike' f s a
chain = Data.ProtoLens.Field.field @"chain"
chainHash ::
          forall f s a .
            (Prelude.Functor f,
             Data.ProtoLens.Field.HasField s "chainHash" a) =>
            Lens.Family2.LensLike' f s a
chainHash = Data.ProtoLens.Field.field @"chainHash"
chains ::
       forall f s a .
         (Prelude.Functor f, Data.ProtoLens.Field.HasField s "chains" a) =>
         Lens.Family2.LensLike' f s a
chains = Data.ProtoLens.Field.field @"chains"
chanBackup ::
           forall f s a .
             (Prelude.Functor f,
              Data.ProtoLens.Field.HasField s "chanBackup" a) =>
             Lens.Family2.LensLike' f s a
chanBackup = Data.ProtoLens.Field.field @"chanBackup"
chanBackups ::
            forall f s a .
              (Prelude.Functor f,
               Data.ProtoLens.Field.HasField s "chanBackups" a) =>
              Lens.Family2.LensLike' f s a
chanBackups = Data.ProtoLens.Field.field @"chanBackups"
chanCapacity ::
             forall f s a .
               (Prelude.Functor f,
                Data.ProtoLens.Field.HasField s "chanCapacity" a) =>
               Lens.Family2.LensLike' f s a
chanCapacity = Data.ProtoLens.Field.field @"chanCapacity"
chanClose ::
          forall f s a .
            (Prelude.Functor f,
             Data.ProtoLens.Field.HasField s "chanClose" a) =>
            Lens.Family2.LensLike' f s a
chanClose = Data.ProtoLens.Field.field @"chanClose"
chanId ::
       forall f s a .
         (Prelude.Functor f, Data.ProtoLens.Field.HasField s "chanId" a) =>
         Lens.Family2.LensLike' f s a
chanId = Data.ProtoLens.Field.field @"chanId"
chanIdIn ::
         forall f s a .
           (Prelude.Functor f,
            Data.ProtoLens.Field.HasField s "chanIdIn" a) =>
           Lens.Family2.LensLike' f s a
chanIdIn = Data.ProtoLens.Field.field @"chanIdIn"
chanIdOut ::
          forall f s a .
            (Prelude.Functor f,
             Data.ProtoLens.Field.HasField s "chanIdOut" a) =>
            Lens.Family2.LensLike' f s a
chanIdOut = Data.ProtoLens.Field.field @"chanIdOut"
chanOpen ::
         forall f s a .
           (Prelude.Functor f,
            Data.ProtoLens.Field.HasField s "chanOpen" a) =>
           Lens.Family2.LensLike' f s a
chanOpen = Data.ProtoLens.Field.field @"chanOpen"
chanPending ::
            forall f s a .
              (Prelude.Functor f,
               Data.ProtoLens.Field.HasField s "chanPending" a) =>
              Lens.Family2.LensLike' f s a
chanPending = Data.ProtoLens.Field.field @"chanPending"
chanPoint ::
          forall f s a .
            (Prelude.Functor f,
             Data.ProtoLens.Field.HasField s "chanPoint" a) =>
            Lens.Family2.LensLike' f s a
chanPoint = Data.ProtoLens.Field.field @"chanPoint"
chanPoints ::
           forall f s a .
             (Prelude.Functor f,
              Data.ProtoLens.Field.HasField s "chanPoints" a) =>
             Lens.Family2.LensLike' f s a
chanPoints = Data.ProtoLens.Field.field @"chanPoints"
chanStatusFlags ::
                forall f s a .
                  (Prelude.Functor f,
                   Data.ProtoLens.Field.HasField s "chanStatusFlags" a) =>
                  Lens.Family2.LensLike' f s a
chanStatusFlags = Data.ProtoLens.Field.field @"chanStatusFlags"
channel ::
        forall f s a .
          (Prelude.Functor f, Data.ProtoLens.Field.HasField s "channel" a) =>
          Lens.Family2.LensLike' f s a
channel = Data.ProtoLens.Field.field @"channel"
channelBackups ::
               forall f s a .
                 (Prelude.Functor f,
                  Data.ProtoLens.Field.HasField s "channelBackups" a) =>
                 Lens.Family2.LensLike' f s a
channelBackups = Data.ProtoLens.Field.field @"channelBackups"
channelFees ::
            forall f s a .
              (Prelude.Functor f,
               Data.ProtoLens.Field.HasField s "channelFees" a) =>
              Lens.Family2.LensLike' f s a
channelFees = Data.ProtoLens.Field.field @"channelFees"
channelId ::
          forall f s a .
            (Prelude.Functor f,
             Data.ProtoLens.Field.HasField s "channelId" a) =>
            Lens.Family2.LensLike' f s a
channelId = Data.ProtoLens.Field.field @"channelId"
channelPoint ::
             forall f s a .
               (Prelude.Functor f,
                Data.ProtoLens.Field.HasField s "channelPoint" a) =>
               Lens.Family2.LensLike' f s a
channelPoint = Data.ProtoLens.Field.field @"channelPoint"
channelUpdates ::
               forall f s a .
                 (Prelude.Functor f,
                  Data.ProtoLens.Field.HasField s "channelUpdates" a) =>
                 Lens.Family2.LensLike' f s a
channelUpdates = Data.ProtoLens.Field.field @"channelUpdates"
channels ::
         forall f s a .
           (Prelude.Functor f,
            Data.ProtoLens.Field.HasField s "channels" a) =>
           Lens.Family2.LensLike' f s a
channels = Data.ProtoLens.Field.field @"channels"
cipherSeedMnemonic ::
                   forall f s a .
                     (Prelude.Functor f,
                      Data.ProtoLens.Field.HasField s "cipherSeedMnemonic" a) =>
                     Lens.Family2.LensLike' f s a
cipherSeedMnemonic
  = Data.ProtoLens.Field.field @"cipherSeedMnemonic"
closeHeight ::
            forall f s a .
              (Prelude.Functor f,
               Data.ProtoLens.Field.HasField s "closeHeight" a) =>
              Lens.Family2.LensLike' f s a
closeHeight = Data.ProtoLens.Field.field @"closeHeight"
closePending ::
             forall f s a .
               (Prelude.Functor f,
                Data.ProtoLens.Field.HasField s "closePending" a) =>
               Lens.Family2.LensLike' f s a
closePending = Data.ProtoLens.Field.field @"closePending"
closeType ::
          forall f s a .
            (Prelude.Functor f,
             Data.ProtoLens.Field.HasField s "closeType" a) =>
            Lens.Family2.LensLike' f s a
closeType = Data.ProtoLens.Field.field @"closeType"
closedChannel ::
              forall f s a .
                (Prelude.Functor f,
                 Data.ProtoLens.Field.HasField s "closedChannel" a) =>
                Lens.Family2.LensLike' f s a
closedChannel = Data.ProtoLens.Field.field @"closedChannel"
closedChans ::
            forall f s a .
              (Prelude.Functor f,
               Data.ProtoLens.Field.HasField s "closedChans" a) =>
              Lens.Family2.LensLike' f s a
closedChans = Data.ProtoLens.Field.field @"closedChans"
closedHeight ::
             forall f s a .
               (Prelude.Functor f,
                Data.ProtoLens.Field.HasField s "closedHeight" a) =>
               Lens.Family2.LensLike' f s a
closedHeight = Data.ProtoLens.Field.field @"closedHeight"
closingTxHash ::
              forall f s a .
                (Prelude.Functor f,
                 Data.ProtoLens.Field.HasField s "closingTxHash" a) =>
                Lens.Family2.LensLike' f s a
closingTxHash = Data.ProtoLens.Field.field @"closingTxHash"
closingTxid ::
            forall f s a .
              (Prelude.Functor f,
               Data.ProtoLens.Field.HasField s "closingTxid" a) =>
              Lens.Family2.LensLike' f s a
closingTxid = Data.ProtoLens.Field.field @"closingTxid"
cltvExpiry ::
           forall f s a .
             (Prelude.Functor f,
              Data.ProtoLens.Field.HasField s "cltvExpiry" a) =>
             Lens.Family2.LensLike' f s a
cltvExpiry = Data.ProtoLens.Field.field @"cltvExpiry"
cltvExpiryDelta ::
                forall f s a .
                  (Prelude.Functor f,
                   Data.ProtoLens.Field.HasField s "cltvExpiryDelta" a) =>
                  Lens.Family2.LensLike' f s a
cltvExpiryDelta = Data.ProtoLens.Field.field @"cltvExpiryDelta"
cltvLimit ::
          forall f s a .
            (Prelude.Functor f,
             Data.ProtoLens.Field.HasField s "cltvLimit" a) =>
            Lens.Family2.LensLike' f s a
cltvLimit = Data.ProtoLens.Field.field @"cltvLimit"
color ::
      forall f s a .
        (Prelude.Functor f, Data.ProtoLens.Field.HasField s "color" a) =>
        Lens.Family2.LensLike' f s a
color = Data.ProtoLens.Field.field @"color"
commitFee ::
          forall f s a .
            (Prelude.Functor f,
             Data.ProtoLens.Field.HasField s "commitFee" a) =>
            Lens.Family2.LensLike' f s a
commitFee = Data.ProtoLens.Field.field @"commitFee"
commitWeight ::
             forall f s a .
               (Prelude.Functor f,
                Data.ProtoLens.Field.HasField s "commitWeight" a) =>
               Lens.Family2.LensLike' f s a
commitWeight = Data.ProtoLens.Field.field @"commitWeight"
confirmationHeight ::
                   forall f s a .
                     (Prelude.Functor f,
                      Data.ProtoLens.Field.HasField s "confirmationHeight" a) =>
                     Lens.Family2.LensLike' f s a
confirmationHeight
  = Data.ProtoLens.Field.field @"confirmationHeight"
confirmations ::
              forall f s a .
                (Prelude.Functor f,
                 Data.ProtoLens.Field.HasField s "confirmations" a) =>
                Lens.Family2.LensLike' f s a
confirmations = Data.ProtoLens.Field.field @"confirmations"
confirmedBalance ::
                 forall f s a .
                   (Prelude.Functor f,
                    Data.ProtoLens.Field.HasField s "confirmedBalance" a) =>
                   Lens.Family2.LensLike' f s a
confirmedBalance = Data.ProtoLens.Field.field @"confirmedBalance"
connectingNode ::
               forall f s a .
                 (Prelude.Functor f,
                  Data.ProtoLens.Field.HasField s "connectingNode" a) =>
                 Lens.Family2.LensLike' f s a
connectingNode = Data.ProtoLens.Field.field @"connectingNode"
cooperative ::
            forall f s a .
              (Prelude.Functor f,
               Data.ProtoLens.Field.HasField s "cooperative" a) =>
              Lens.Family2.LensLike' f s a
cooperative = Data.ProtoLens.Field.field @"cooperative"
creationDate ::
             forall f s a .
               (Prelude.Functor f,
                Data.ProtoLens.Field.HasField s "creationDate" a) =>
               Lens.Family2.LensLike' f s a
creationDate = Data.ProtoLens.Field.field @"creationDate"
csvDelay ::
         forall f s a .
           (Prelude.Functor f,
            Data.ProtoLens.Field.HasField s "csvDelay" a) =>
           Lens.Family2.LensLike' f s a
csvDelay = Data.ProtoLens.Field.field @"csvDelay"
currentPassword ::
                forall f s a .
                  (Prelude.Functor f,
                   Data.ProtoLens.Field.HasField s "currentPassword" a) =>
                  Lens.Family2.LensLike' f s a
currentPassword = Data.ProtoLens.Field.field @"currentPassword"
dayFeeSum ::
          forall f s a .
            (Prelude.Functor f,
             Data.ProtoLens.Field.HasField s "dayFeeSum" a) =>
            Lens.Family2.LensLike' f s a
dayFeeSum = Data.ProtoLens.Field.field @"dayFeeSum"
description ::
            forall f s a .
              (Prelude.Functor f,
               Data.ProtoLens.Field.HasField s "description" a) =>
              Lens.Family2.LensLike' f s a
description = Data.ProtoLens.Field.field @"description"
descriptionHash ::
                forall f s a .
                  (Prelude.Functor f,
                   Data.ProtoLens.Field.HasField s "descriptionHash" a) =>
                  Lens.Family2.LensLike' f s a
descriptionHash = Data.ProtoLens.Field.field @"descriptionHash"
dest ::
     forall f s a .
       (Prelude.Functor f, Data.ProtoLens.Field.HasField s "dest" a) =>
       Lens.Family2.LensLike' f s a
dest = Data.ProtoLens.Field.field @"dest"
destAddresses ::
              forall f s a .
                (Prelude.Functor f,
                 Data.ProtoLens.Field.HasField s "destAddresses" a) =>
                Lens.Family2.LensLike' f s a
destAddresses = Data.ProtoLens.Field.field @"destAddresses"
destString ::
           forall f s a .
             (Prelude.Functor f,
              Data.ProtoLens.Field.HasField s "destString" a) =>
             Lens.Family2.LensLike' f s a
destString = Data.ProtoLens.Field.field @"destString"
destination ::
            forall f s a .
              (Prelude.Functor f,
               Data.ProtoLens.Field.HasField s "destination" a) =>
              Lens.Family2.LensLike' f s a
destination = Data.ProtoLens.Field.field @"destination"
directionReverse ::
                 forall f s a .
                   (Prelude.Functor f,
                    Data.ProtoLens.Field.HasField s "directionReverse" a) =>
                   Lens.Family2.LensLike' f s a
directionReverse = Data.ProtoLens.Field.field @"directionReverse"
disabled ::
         forall f s a .
           (Prelude.Functor f,
            Data.ProtoLens.Field.HasField s "disabled" a) =>
           Lens.Family2.LensLike' f s a
disabled = Data.ProtoLens.Field.field @"disabled"
edges ::
      forall f s a .
        (Prelude.Functor f, Data.ProtoLens.Field.HasField s "edges" a) =>
        Lens.Family2.LensLike' f s a
edges = Data.ProtoLens.Field.field @"edges"
encipheredSeed ::
               forall f s a .
                 (Prelude.Functor f,
                  Data.ProtoLens.Field.HasField s "encipheredSeed" a) =>
                 Lens.Family2.LensLike' f s a
encipheredSeed = Data.ProtoLens.Field.field @"encipheredSeed"
endTime ::
        forall f s a .
          (Prelude.Functor f, Data.ProtoLens.Field.HasField s "endTime" a) =>
          Lens.Family2.LensLike' f s a
endTime = Data.ProtoLens.Field.field @"endTime"
expirationHeight ::
                 forall f s a .
                   (Prelude.Functor f,
                    Data.ProtoLens.Field.HasField s "expirationHeight" a) =>
                   Lens.Family2.LensLike' f s a
expirationHeight = Data.ProtoLens.Field.field @"expirationHeight"
expiry ::
       forall f s a .
         (Prelude.Functor f, Data.ProtoLens.Field.HasField s "expiry" a) =>
         Lens.Family2.LensLike' f s a
expiry = Data.ProtoLens.Field.field @"expiry"
fallbackAddr ::
             forall f s a .
               (Prelude.Functor f,
                Data.ProtoLens.Field.HasField s "fallbackAddr" a) =>
               Lens.Family2.LensLike' f s a
fallbackAddr = Data.ProtoLens.Field.field @"fallbackAddr"
fee ::
    forall f s a .
      (Prelude.Functor f, Data.ProtoLens.Field.HasField s "fee" a) =>
      Lens.Family2.LensLike' f s a
fee = Data.ProtoLens.Field.field @"fee"
feeBaseMsat ::
            forall f s a .
              (Prelude.Functor f,
               Data.ProtoLens.Field.HasField s "feeBaseMsat" a) =>
              Lens.Family2.LensLike' f s a
feeBaseMsat = Data.ProtoLens.Field.field @"feeBaseMsat"
feeLimit ::
         forall f s a .
           (Prelude.Functor f,
            Data.ProtoLens.Field.HasField s "feeLimit" a) =>
           Lens.Family2.LensLike' f s a
feeLimit = Data.ProtoLens.Field.field @"feeLimit"
feeMsat ::
        forall f s a .
          (Prelude.Functor f, Data.ProtoLens.Field.HasField s "feeMsat" a) =>
          Lens.Family2.LensLike' f s a
feeMsat = Data.ProtoLens.Field.field @"feeMsat"
feePerKw ::
         forall f s a .
           (Prelude.Functor f,
            Data.ProtoLens.Field.HasField s "feePerKw" a) =>
           Lens.Family2.LensLike' f s a
feePerKw = Data.ProtoLens.Field.field @"feePerKw"
feePerMil ::
          forall f s a .
            (Prelude.Functor f,
             Data.ProtoLens.Field.HasField s "feePerMil" a) =>
            Lens.Family2.LensLike' f s a
feePerMil = Data.ProtoLens.Field.field @"feePerMil"
feeProportionalMillionths ::
                          forall f s a .
                            (Prelude.Functor f,
                             Data.ProtoLens.Field.HasField s "feeProportionalMillionths" a) =>
                            Lens.Family2.LensLike' f s a
feeProportionalMillionths
  = Data.ProtoLens.Field.field @"feeProportionalMillionths"
feeRate ::
        forall f s a .
          (Prelude.Functor f, Data.ProtoLens.Field.HasField s "feeRate" a) =>
          Lens.Family2.LensLike' f s a
feeRate = Data.ProtoLens.Field.field @"feeRate"
feeRateMilliMsat ::
                 forall f s a .
                   (Prelude.Functor f,
                    Data.ProtoLens.Field.HasField s "feeRateMilliMsat" a) =>
                   Lens.Family2.LensLike' f s a
feeRateMilliMsat = Data.ProtoLens.Field.field @"feeRateMilliMsat"
feeSat ::
       forall f s a .
         (Prelude.Functor f, Data.ProtoLens.Field.HasField s "feeSat" a) =>
         Lens.Family2.LensLike' f s a
feeSat = Data.ProtoLens.Field.field @"feeSat"
feerateSatPerByte ::
                  forall f s a .
                    (Prelude.Functor f,
                     Data.ProtoLens.Field.HasField s "feerateSatPerByte" a) =>
                    Lens.Family2.LensLike' f s a
feerateSatPerByte = Data.ProtoLens.Field.field @"feerateSatPerByte"
finalCltvDelta ::
               forall f s a .
                 (Prelude.Functor f,
                  Data.ProtoLens.Field.HasField s "finalCltvDelta" a) =>
                 Lens.Family2.LensLike' f s a
finalCltvDelta = Data.ProtoLens.Field.field @"finalCltvDelta"
firstIndexOffset ::
                 forall f s a .
                   (Prelude.Functor f,
                    Data.ProtoLens.Field.HasField s "firstIndexOffset" a) =>
                   Lens.Family2.LensLike' f s a
firstIndexOffset = Data.ProtoLens.Field.field @"firstIndexOffset"
fixed ::
      forall f s a .
        (Prelude.Functor f, Data.ProtoLens.Field.HasField s "fixed" a) =>
        Lens.Family2.LensLike' f s a
fixed = Data.ProtoLens.Field.field @"fixed"
force ::
      forall f s a .
        (Prelude.Functor f, Data.ProtoLens.Field.HasField s "force" a) =>
        Lens.Family2.LensLike' f s a
force = Data.ProtoLens.Field.field @"force"
forwardingEvents ::
                 forall f s a .
                   (Prelude.Functor f,
                    Data.ProtoLens.Field.HasField s "forwardingEvents" a) =>
                   Lens.Family2.LensLike' f s a
forwardingEvents = Data.ProtoLens.Field.field @"forwardingEvents"
fundingCanceled ::
                forall f s a .
                  (Prelude.Functor f,
                   Data.ProtoLens.Field.HasField s "fundingCanceled" a) =>
                  Lens.Family2.LensLike' f s a
fundingCanceled = Data.ProtoLens.Field.field @"fundingCanceled"
fundingTxidBytes ::
                 forall f s a .
                   (Prelude.Functor f,
                    Data.ProtoLens.Field.HasField s "fundingTxidBytes" a) =>
                   Lens.Family2.LensLike' f s a
fundingTxidBytes = Data.ProtoLens.Field.field @"fundingTxidBytes"
fundingTxidStr ::
               forall f s a .
                 (Prelude.Functor f,
                  Data.ProtoLens.Field.HasField s "fundingTxidStr" a) =>
                 Lens.Family2.LensLike' f s a
fundingTxidStr = Data.ProtoLens.Field.field @"fundingTxidStr"
global ::
       forall f s a .
         (Prelude.Functor f, Data.ProtoLens.Field.HasField s "global" a) =>
         Lens.Family2.LensLike' f s a
global = Data.ProtoLens.Field.field @"global"
globalFeatures ::
               forall f s a .
                 (Prelude.Functor f,
                  Data.ProtoLens.Field.HasField s "globalFeatures" a) =>
                 Lens.Family2.LensLike' f s a
globalFeatures = Data.ProtoLens.Field.field @"globalFeatures"
graphDiameter ::
              forall f s a .
                (Prelude.Functor f,
                 Data.ProtoLens.Field.HasField s "graphDiameter" a) =>
                Lens.Family2.LensLike' f s a
graphDiameter = Data.ProtoLens.Field.field @"graphDiameter"
hashLock ::
         forall f s a .
           (Prelude.Functor f,
            Data.ProtoLens.Field.HasField s "hashLock" a) =>
           Lens.Family2.LensLike' f s a
hashLock = Data.ProtoLens.Field.field @"hashLock"
hopHints ::
         forall f s a .
           (Prelude.Functor f,
            Data.ProtoLens.Field.HasField s "hopHints" a) =>
           Lens.Family2.LensLike' f s a
hopHints = Data.ProtoLens.Field.field @"hopHints"
hops ::
     forall f s a .
       (Prelude.Functor f, Data.ProtoLens.Field.HasField s "hops" a) =>
       Lens.Family2.LensLike' f s a
hops = Data.ProtoLens.Field.field @"hops"
host ::
     forall f s a .
       (Prelude.Functor f, Data.ProtoLens.Field.HasField s "host" a) =>
       Lens.Family2.LensLike' f s a
host = Data.ProtoLens.Field.field @"host"
identityKey ::
            forall f s a .
              (Prelude.Functor f,
               Data.ProtoLens.Field.HasField s "identityKey" a) =>
              Lens.Family2.LensLike' f s a
identityKey = Data.ProtoLens.Field.field @"identityKey"
identityPubkey ::
               forall f s a .
                 (Prelude.Functor f,
                  Data.ProtoLens.Field.HasField s "identityPubkey" a) =>
                 Lens.Family2.LensLike' f s a
identityPubkey = Data.ProtoLens.Field.field @"identityPubkey"
ignoredEdges ::
             forall f s a .
               (Prelude.Functor f,
                Data.ProtoLens.Field.HasField s "ignoredEdges" a) =>
               Lens.Family2.LensLike' f s a
ignoredEdges = Data.ProtoLens.Field.field @"ignoredEdges"
ignoredNodes ::
             forall f s a .
               (Prelude.Functor f,
                Data.ProtoLens.Field.HasField s "ignoredNodes" a) =>
               Lens.Family2.LensLike' f s a
ignoredNodes = Data.ProtoLens.Field.field @"ignoredNodes"
inactiveChannel ::
                forall f s a .
                  (Prelude.Functor f,
                   Data.ProtoLens.Field.HasField s "inactiveChannel" a) =>
                  Lens.Family2.LensLike' f s a
inactiveChannel = Data.ProtoLens.Field.field @"inactiveChannel"
inactiveOnly ::
             forall f s a .
               (Prelude.Functor f,
                Data.ProtoLens.Field.HasField s "inactiveOnly" a) =>
               Lens.Family2.LensLike' f s a
inactiveOnly = Data.ProtoLens.Field.field @"inactiveOnly"
inbound ::
        forall f s a .
          (Prelude.Functor f, Data.ProtoLens.Field.HasField s "inbound" a) =>
          Lens.Family2.LensLike' f s a
inbound = Data.ProtoLens.Field.field @"inbound"
includeUnannounced ::
                   forall f s a .
                     (Prelude.Functor f,
                      Data.ProtoLens.Field.HasField s "includeUnannounced" a) =>
                     Lens.Family2.LensLike' f s a
includeUnannounced
  = Data.ProtoLens.Field.field @"includeUnannounced"
incoming ::
         forall f s a .
           (Prelude.Functor f,
            Data.ProtoLens.Field.HasField s "incoming" a) =>
           Lens.Family2.LensLike' f s a
incoming = Data.ProtoLens.Field.field @"incoming"
indexOffset ::
            forall f s a .
              (Prelude.Functor f,
               Data.ProtoLens.Field.HasField s "indexOffset" a) =>
              Lens.Family2.LensLike' f s a
indexOffset = Data.ProtoLens.Field.field @"indexOffset"
initiator ::
          forall f s a .
            (Prelude.Functor f,
             Data.ProtoLens.Field.HasField s "initiator" a) =>
            Lens.Family2.LensLike' f s a
initiator = Data.ProtoLens.Field.field @"initiator"
invoices ::
         forall f s a .
           (Prelude.Functor f,
            Data.ProtoLens.Field.HasField s "invoices" a) =>
           Lens.Family2.LensLike' f s a
invoices = Data.ProtoLens.Field.field @"invoices"
key ::
    forall f s a .
      (Prelude.Functor f, Data.ProtoLens.Field.HasField s "key" a) =>
      Lens.Family2.LensLike' f s a
key = Data.ProtoLens.Field.field @"key"
lastIndexOffset ::
                forall f s a .
                  (Prelude.Functor f,
                   Data.ProtoLens.Field.HasField s "lastIndexOffset" a) =>
                  Lens.Family2.LensLike' f s a
lastIndexOffset = Data.ProtoLens.Field.field @"lastIndexOffset"
lastOffsetIndex ::
                forall f s a .
                  (Prelude.Functor f,
                   Data.ProtoLens.Field.HasField s "lastOffsetIndex" a) =>
                  Lens.Family2.LensLike' f s a
lastOffsetIndex = Data.ProtoLens.Field.field @"lastOffsetIndex"
lastUpdate ::
           forall f s a .
             (Prelude.Functor f,
              Data.ProtoLens.Field.HasField s "lastUpdate" a) =>
             Lens.Family2.LensLike' f s a
lastUpdate = Data.ProtoLens.Field.field @"lastUpdate"
levelSpec ::
          forall f s a .
            (Prelude.Functor f,
             Data.ProtoLens.Field.HasField s "levelSpec" a) =>
            Lens.Family2.LensLike' f s a
levelSpec = Data.ProtoLens.Field.field @"levelSpec"
limboBalance ::
             forall f s a .
               (Prelude.Functor f,
                Data.ProtoLens.Field.HasField s "limboBalance" a) =>
               Lens.Family2.LensLike' f s a
limboBalance = Data.ProtoLens.Field.field @"limboBalance"
localBalance ::
             forall f s a .
               (Prelude.Functor f,
                Data.ProtoLens.Field.HasField s "localBalance" a) =>
               Lens.Family2.LensLike' f s a
localBalance = Data.ProtoLens.Field.field @"localBalance"
localForce ::
           forall f s a .
             (Prelude.Functor f,
              Data.ProtoLens.Field.HasField s "localForce" a) =>
             Lens.Family2.LensLike' f s a
localForce = Data.ProtoLens.Field.field @"localForce"
localFundingAmount ::
                   forall f s a .
                     (Prelude.Functor f,
                      Data.ProtoLens.Field.HasField s "localFundingAmount" a) =>
                     Lens.Family2.LensLike' f s a
localFundingAmount
  = Data.ProtoLens.Field.field @"localFundingAmount"
maturityHeight ::
               forall f s a .
                 (Prelude.Functor f,
                  Data.ProtoLens.Field.HasField s "maturityHeight" a) =>
                 Lens.Family2.LensLike' f s a
maturityHeight = Data.ProtoLens.Field.field @"maturityHeight"
maxChannelSize ::
               forall f s a .
                 (Prelude.Functor f,
                  Data.ProtoLens.Field.HasField s "maxChannelSize" a) =>
                 Lens.Family2.LensLike' f s a
maxChannelSize = Data.ProtoLens.Field.field @"maxChannelSize"
maxConfs ::
         forall f s a .
           (Prelude.Functor f,
            Data.ProtoLens.Field.HasField s "maxConfs" a) =>
           Lens.Family2.LensLike' f s a
maxConfs = Data.ProtoLens.Field.field @"maxConfs"
maxHtlcMsat ::
            forall f s a .
              (Prelude.Functor f,
               Data.ProtoLens.Field.HasField s "maxHtlcMsat" a) =>
              Lens.Family2.LensLike' f s a
maxHtlcMsat = Data.ProtoLens.Field.field @"maxHtlcMsat"
maxOutDegree ::
             forall f s a .
               (Prelude.Functor f,
                Data.ProtoLens.Field.HasField s "maxOutDegree" a) =>
               Lens.Family2.LensLike' f s a
maxOutDegree = Data.ProtoLens.Field.field @"maxOutDegree"
maybe'activeChannel ::
                    forall f s a .
                      (Prelude.Functor f,
                       Data.ProtoLens.Field.HasField s "maybe'activeChannel" a) =>
                      Lens.Family2.LensLike' f s a
maybe'activeChannel
  = Data.ProtoLens.Field.field @"maybe'activeChannel"
maybe'addr ::
           forall f s a .
             (Prelude.Functor f,
              Data.ProtoLens.Field.HasField s "maybe'addr" a) =>
             Lens.Family2.LensLike' f s a
maybe'addr = Data.ProtoLens.Field.field @"maybe'addr"
maybe'backup ::
             forall f s a .
               (Prelude.Functor f,
                Data.ProtoLens.Field.HasField s "maybe'backup" a) =>
               Lens.Family2.LensLike' f s a
maybe'backup = Data.ProtoLens.Field.field @"maybe'backup"
maybe'chanBackups ::
                  forall f s a .
                    (Prelude.Functor f,
                     Data.ProtoLens.Field.HasField s "maybe'chanBackups" a) =>
                    Lens.Family2.LensLike' f s a
maybe'chanBackups = Data.ProtoLens.Field.field @"maybe'chanBackups"
maybe'chanClose ::
                forall f s a .
                  (Prelude.Functor f,
                   Data.ProtoLens.Field.HasField s "maybe'chanClose" a) =>
                  Lens.Family2.LensLike' f s a
maybe'chanClose = Data.ProtoLens.Field.field @"maybe'chanClose"
maybe'chanOpen ::
               forall f s a .
                 (Prelude.Functor f,
                  Data.ProtoLens.Field.HasField s "maybe'chanOpen" a) =>
                 Lens.Family2.LensLike' f s a
maybe'chanOpen = Data.ProtoLens.Field.field @"maybe'chanOpen"
maybe'chanPending ::
                  forall f s a .
                    (Prelude.Functor f,
                     Data.ProtoLens.Field.HasField s "maybe'chanPending" a) =>
                    Lens.Family2.LensLike' f s a
maybe'chanPending = Data.ProtoLens.Field.field @"maybe'chanPending"
maybe'chanPoint ::
                forall f s a .
                  (Prelude.Functor f,
                   Data.ProtoLens.Field.HasField s "maybe'chanPoint" a) =>
                  Lens.Family2.LensLike' f s a
maybe'chanPoint = Data.ProtoLens.Field.field @"maybe'chanPoint"
maybe'channel ::
              forall f s a .
                (Prelude.Functor f,
                 Data.ProtoLens.Field.HasField s "maybe'channel" a) =>
                Lens.Family2.LensLike' f s a
maybe'channel = Data.ProtoLens.Field.field @"maybe'channel"
maybe'channelBackups ::
                     forall f s a .
                       (Prelude.Functor f,
                        Data.ProtoLens.Field.HasField s "maybe'channelBackups" a) =>
                       Lens.Family2.LensLike' f s a
maybe'channelBackups
  = Data.ProtoLens.Field.field @"maybe'channelBackups"
maybe'channelPoint ::
                   forall f s a .
                     (Prelude.Functor f,
                      Data.ProtoLens.Field.HasField s "maybe'channelPoint" a) =>
                     Lens.Family2.LensLike' f s a
maybe'channelPoint
  = Data.ProtoLens.Field.field @"maybe'channelPoint"
maybe'closePending ::
                   forall f s a .
                     (Prelude.Functor f,
                      Data.ProtoLens.Field.HasField s "maybe'closePending" a) =>
                     Lens.Family2.LensLike' f s a
maybe'closePending
  = Data.ProtoLens.Field.field @"maybe'closePending"
maybe'closedChannel ::
                    forall f s a .
                      (Prelude.Functor f,
                       Data.ProtoLens.Field.HasField s "maybe'closedChannel" a) =>
                      Lens.Family2.LensLike' f s a
maybe'closedChannel
  = Data.ProtoLens.Field.field @"maybe'closedChannel"
maybe'feeLimit ::
               forall f s a .
                 (Prelude.Functor f,
                  Data.ProtoLens.Field.HasField s "maybe'feeLimit" a) =>
                 Lens.Family2.LensLike' f s a
maybe'feeLimit = Data.ProtoLens.Field.field @"maybe'feeLimit"
maybe'fixed ::
            forall f s a .
              (Prelude.Functor f,
               Data.ProtoLens.Field.HasField s "maybe'fixed" a) =>
              Lens.Family2.LensLike' f s a
maybe'fixed = Data.ProtoLens.Field.field @"maybe'fixed"
maybe'fundingTxid ::
                  forall f s a .
                    (Prelude.Functor f,
                     Data.ProtoLens.Field.HasField s "maybe'fundingTxid" a) =>
                    Lens.Family2.LensLike' f s a
maybe'fundingTxid = Data.ProtoLens.Field.field @"maybe'fundingTxid"
maybe'fundingTxidBytes ::
                       forall f s a .
                         (Prelude.Functor f,
                          Data.ProtoLens.Field.HasField s "maybe'fundingTxidBytes" a) =>
                         Lens.Family2.LensLike' f s a
maybe'fundingTxidBytes
  = Data.ProtoLens.Field.field @"maybe'fundingTxidBytes"
maybe'fundingTxidStr ::
                     forall f s a .
                       (Prelude.Functor f,
                        Data.ProtoLens.Field.HasField s "maybe'fundingTxidStr" a) =>
                       Lens.Family2.LensLike' f s a
maybe'fundingTxidStr
  = Data.ProtoLens.Field.field @"maybe'fundingTxidStr"
maybe'global ::
             forall f s a .
               (Prelude.Functor f,
                Data.ProtoLens.Field.HasField s "maybe'global" a) =>
               Lens.Family2.LensLike' f s a
maybe'global = Data.ProtoLens.Field.field @"maybe'global"
maybe'inactiveChannel ::
                      forall f s a .
                        (Prelude.Functor f,
                         Data.ProtoLens.Field.HasField s "maybe'inactiveChannel" a) =>
                        Lens.Family2.LensLike' f s a
maybe'inactiveChannel
  = Data.ProtoLens.Field.field @"maybe'inactiveChannel"
maybe'limit ::
            forall f s a .
              (Prelude.Functor f,
               Data.ProtoLens.Field.HasField s "maybe'limit" a) =>
              Lens.Family2.LensLike' f s a
maybe'limit = Data.ProtoLens.Field.field @"maybe'limit"
maybe'multiChanBackup ::
                      forall f s a .
                        (Prelude.Functor f,
                         Data.ProtoLens.Field.HasField s "maybe'multiChanBackup" a) =>
                        Lens.Family2.LensLike' f s a
maybe'multiChanBackup
  = Data.ProtoLens.Field.field @"maybe'multiChanBackup"
maybe'node ::
           forall f s a .
             (Prelude.Functor f,
              Data.ProtoLens.Field.HasField s "maybe'node" a) =>
             Lens.Family2.LensLike' f s a
maybe'node = Data.ProtoLens.Field.field @"maybe'node"
maybe'node1Policy ::
                  forall f s a .
                    (Prelude.Functor f,
                     Data.ProtoLens.Field.HasField s "maybe'node1Policy" a) =>
                    Lens.Family2.LensLike' f s a
maybe'node1Policy = Data.ProtoLens.Field.field @"maybe'node1Policy"
maybe'node2Policy ::
                  forall f s a .
                    (Prelude.Functor f,
                     Data.ProtoLens.Field.HasField s "maybe'node2Policy" a) =>
                    Lens.Family2.LensLike' f s a
maybe'node2Policy = Data.ProtoLens.Field.field @"maybe'node2Policy"
maybe'openChannel ::
                  forall f s a .
                    (Prelude.Functor f,
                     Data.ProtoLens.Field.HasField s "maybe'openChannel" a) =>
                    Lens.Family2.LensLike' f s a
maybe'openChannel = Data.ProtoLens.Field.field @"maybe'openChannel"
maybe'outpoint ::
               forall f s a .
                 (Prelude.Functor f,
                  Data.ProtoLens.Field.HasField s "maybe'outpoint" a) =>
                 Lens.Family2.LensLike' f s a
maybe'outpoint = Data.ProtoLens.Field.field @"maybe'outpoint"
maybe'paymentRoute ::
                   forall f s a .
                     (Prelude.Functor f,
                      Data.ProtoLens.Field.HasField s "maybe'paymentRoute" a) =>
                     Lens.Family2.LensLike' f s a
maybe'paymentRoute
  = Data.ProtoLens.Field.field @"maybe'paymentRoute"
maybe'percent ::
              forall f s a .
                (Prelude.Functor f,
                 Data.ProtoLens.Field.HasField s "maybe'percent" a) =>
                Lens.Family2.LensLike' f s a
maybe'percent = Data.ProtoLens.Field.field @"maybe'percent"
maybe'route ::
            forall f s a .
              (Prelude.Functor f,
               Data.ProtoLens.Field.HasField s "maybe'route" a) =>
              Lens.Family2.LensLike' f s a
maybe'route = Data.ProtoLens.Field.field @"maybe'route"
maybe'routingPolicy ::
                    forall f s a .
                      (Prelude.Functor f,
                       Data.ProtoLens.Field.HasField s "maybe'routingPolicy" a) =>
                      Lens.Family2.LensLike' f s a
maybe'routingPolicy
  = Data.ProtoLens.Field.field @"maybe'routingPolicy"
maybe'scope ::
            forall f s a .
              (Prelude.Functor f,
               Data.ProtoLens.Field.HasField s "maybe'scope" a) =>
              Lens.Family2.LensLike' f s a
maybe'scope = Data.ProtoLens.Field.field @"maybe'scope"
maybe'singleChanBackups ::
                        forall f s a .
                          (Prelude.Functor f,
                           Data.ProtoLens.Field.HasField s "maybe'singleChanBackups" a) =>
                          Lens.Family2.LensLike' f s a
maybe'singleChanBackups
  = Data.ProtoLens.Field.field @"maybe'singleChanBackups"
maybe'update ::
             forall f s a .
               (Prelude.Functor f,
                Data.ProtoLens.Field.HasField s "maybe'update" a) =>
               Lens.Family2.LensLike' f s a
maybe'update = Data.ProtoLens.Field.field @"maybe'update"
medianChannelSizeSat ::
                     forall f s a .
                       (Prelude.Functor f,
                        Data.ProtoLens.Field.HasField s "medianChannelSizeSat" a) =>
                       Lens.Family2.LensLike' f s a
medianChannelSizeSat
  = Data.ProtoLens.Field.field @"medianChannelSizeSat"
memo ::
     forall f s a .
       (Prelude.Functor f, Data.ProtoLens.Field.HasField s "memo" a) =>
       Lens.Family2.LensLike' f s a
memo = Data.ProtoLens.Field.field @"memo"
minChannelSize ::
               forall f s a .
                 (Prelude.Functor f,
                  Data.ProtoLens.Field.HasField s "minChannelSize" a) =>
                 Lens.Family2.LensLike' f s a
minChannelSize = Data.ProtoLens.Field.field @"minChannelSize"
minConfs ::
         forall f s a .
           (Prelude.Functor f,
            Data.ProtoLens.Field.HasField s "minConfs" a) =>
           Lens.Family2.LensLike' f s a
minConfs = Data.ProtoLens.Field.field @"minConfs"
minHtlc ::
        forall f s a .
          (Prelude.Functor f, Data.ProtoLens.Field.HasField s "minHtlc" a) =>
          Lens.Family2.LensLike' f s a
minHtlc = Data.ProtoLens.Field.field @"minHtlc"
minHtlcMsat ::
            forall f s a .
              (Prelude.Functor f,
               Data.ProtoLens.Field.HasField s "minHtlcMsat" a) =>
              Lens.Family2.LensLike' f s a
minHtlcMsat = Data.ProtoLens.Field.field @"minHtlcMsat"
monthFeeSum ::
            forall f s a .
              (Prelude.Functor f,
               Data.ProtoLens.Field.HasField s "monthFeeSum" a) =>
              Lens.Family2.LensLike' f s a
monthFeeSum = Data.ProtoLens.Field.field @"monthFeeSum"
msg ::
    forall f s a .
      (Prelude.Functor f, Data.ProtoLens.Field.HasField s "msg" a) =>
      Lens.Family2.LensLike' f s a
msg = Data.ProtoLens.Field.field @"msg"
multiChanBackup ::
                forall f s a .
                  (Prelude.Functor f,
                   Data.ProtoLens.Field.HasField s "multiChanBackup" a) =>
                  Lens.Family2.LensLike' f s a
multiChanBackup = Data.ProtoLens.Field.field @"multiChanBackup"
network ::
        forall f s a .
          (Prelude.Functor f, Data.ProtoLens.Field.HasField s "network" a) =>
          Lens.Family2.LensLike' f s a
network = Data.ProtoLens.Field.field @"network"
newPassword ::
            forall f s a .
              (Prelude.Functor f,
               Data.ProtoLens.Field.HasField s "newPassword" a) =>
              Lens.Family2.LensLike' f s a
newPassword = Data.ProtoLens.Field.field @"newPassword"
node ::
     forall f s a .
       (Prelude.Functor f, Data.ProtoLens.Field.HasField s "node" a) =>
       Lens.Family2.LensLike' f s a
node = Data.ProtoLens.Field.field @"node"
node1Policy ::
            forall f s a .
              (Prelude.Functor f,
               Data.ProtoLens.Field.HasField s "node1Policy" a) =>
              Lens.Family2.LensLike' f s a
node1Policy = Data.ProtoLens.Field.field @"node1Policy"
node1Pub ::
         forall f s a .
           (Prelude.Functor f,
            Data.ProtoLens.Field.HasField s "node1Pub" a) =>
           Lens.Family2.LensLike' f s a
node1Pub = Data.ProtoLens.Field.field @"node1Pub"
node2Policy ::
            forall f s a .
              (Prelude.Functor f,
               Data.ProtoLens.Field.HasField s "node2Policy" a) =>
              Lens.Family2.LensLike' f s a
node2Policy = Data.ProtoLens.Field.field @"node2Policy"
node2Pub ::
         forall f s a .
           (Prelude.Functor f,
            Data.ProtoLens.Field.HasField s "node2Pub" a) =>
           Lens.Family2.LensLike' f s a
node2Pub = Data.ProtoLens.Field.field @"node2Pub"
nodeId ::
       forall f s a .
         (Prelude.Functor f, Data.ProtoLens.Field.HasField s "nodeId" a) =>
         Lens.Family2.LensLike' f s a
nodeId = Data.ProtoLens.Field.field @"nodeId"
nodePubkey ::
           forall f s a .
             (Prelude.Functor f,
              Data.ProtoLens.Field.HasField s "nodePubkey" a) =>
             Lens.Family2.LensLike' f s a
nodePubkey = Data.ProtoLens.Field.field @"nodePubkey"
nodePubkeyString ::
                 forall f s a .
                   (Prelude.Functor f,
                    Data.ProtoLens.Field.HasField s "nodePubkeyString" a) =>
                   Lens.Family2.LensLike' f s a
nodePubkeyString = Data.ProtoLens.Field.field @"nodePubkeyString"
nodeUpdates ::
            forall f s a .
              (Prelude.Functor f,
               Data.ProtoLens.Field.HasField s "nodeUpdates" a) =>
              Lens.Family2.LensLike' f s a
nodeUpdates = Data.ProtoLens.Field.field @"nodeUpdates"
nodes ::
      forall f s a .
        (Prelude.Functor f, Data.ProtoLens.Field.HasField s "nodes" a) =>
        Lens.Family2.LensLike' f s a
nodes = Data.ProtoLens.Field.field @"nodes"
numActiveChannels ::
                  forall f s a .
                    (Prelude.Functor f,
                     Data.ProtoLens.Field.HasField s "numActiveChannels" a) =>
                    Lens.Family2.LensLike' f s a
numActiveChannels = Data.ProtoLens.Field.field @"numActiveChannels"
numChannels ::
            forall f s a .
              (Prelude.Functor f,
               Data.ProtoLens.Field.HasField s "numChannels" a) =>
              Lens.Family2.LensLike' f s a
numChannels = Data.ProtoLens.Field.field @"numChannels"
numConfirmations ::
                 forall f s a .
                   (Prelude.Functor f,
                    Data.ProtoLens.Field.HasField s "numConfirmations" a) =>
                   Lens.Family2.LensLike' f s a
numConfirmations = Data.ProtoLens.Field.field @"numConfirmations"
numConfsLeft ::
             forall f s a .
               (Prelude.Functor f,
                Data.ProtoLens.Field.HasField s "numConfsLeft" a) =>
               Lens.Family2.LensLike' f s a
numConfsLeft = Data.ProtoLens.Field.field @"numConfsLeft"
numInactiveChannels ::
                    forall f s a .
                      (Prelude.Functor f,
                       Data.ProtoLens.Field.HasField s "numInactiveChannels" a) =>
                      Lens.Family2.LensLike' f s a
numInactiveChannels
  = Data.ProtoLens.Field.field @"numInactiveChannels"
numMaxEvents ::
             forall f s a .
               (Prelude.Functor f,
                Data.ProtoLens.Field.HasField s "numMaxEvents" a) =>
               Lens.Family2.LensLike' f s a
numMaxEvents = Data.ProtoLens.Field.field @"numMaxEvents"
numMaxInvoices ::
               forall f s a .
                 (Prelude.Functor f,
                  Data.ProtoLens.Field.HasField s "numMaxInvoices" a) =>
                 Lens.Family2.LensLike' f s a
numMaxInvoices = Data.ProtoLens.Field.field @"numMaxInvoices"
numNodes ::
         forall f s a .
           (Prelude.Functor f,
            Data.ProtoLens.Field.HasField s "numNodes" a) =>
           Lens.Family2.LensLike' f s a
numNodes = Data.ProtoLens.Field.field @"numNodes"
numPeers ::
         forall f s a .
           (Prelude.Functor f,
            Data.ProtoLens.Field.HasField s "numPeers" a) =>
           Lens.Family2.LensLike' f s a
numPeers = Data.ProtoLens.Field.field @"numPeers"
numPendingChannels ::
                   forall f s a .
                     (Prelude.Functor f,
                      Data.ProtoLens.Field.HasField s "numPendingChannels" a) =>
                     Lens.Family2.LensLike' f s a
numPendingChannels
  = Data.ProtoLens.Field.field @"numPendingChannels"
numRoutes ::
          forall f s a .
            (Prelude.Functor f,
             Data.ProtoLens.Field.HasField s "numRoutes" a) =>
            Lens.Family2.LensLike' f s a
numRoutes = Data.ProtoLens.Field.field @"numRoutes"
numSatoshis ::
            forall f s a .
              (Prelude.Functor f,
               Data.ProtoLens.Field.HasField s "numSatoshis" a) =>
              Lens.Family2.LensLike' f s a
numSatoshis = Data.ProtoLens.Field.field @"numSatoshis"
numUpdates ::
           forall f s a .
             (Prelude.Functor f,
              Data.ProtoLens.Field.HasField s "numUpdates" a) =>
             Lens.Family2.LensLike' f s a
numUpdates = Data.ProtoLens.Field.field @"numUpdates"
openChannel ::
            forall f s a .
              (Prelude.Functor f,
               Data.ProtoLens.Field.HasField s "openChannel" a) =>
              Lens.Family2.LensLike' f s a
openChannel = Data.ProtoLens.Field.field @"openChannel"
outgoingChanId ::
               forall f s a .
                 (Prelude.Functor f,
                  Data.ProtoLens.Field.HasField s "outgoingChanId" a) =>
                 Lens.Family2.LensLike' f s a
outgoingChanId = Data.ProtoLens.Field.field @"outgoingChanId"
outpoint ::
         forall f s a .
           (Prelude.Functor f,
            Data.ProtoLens.Field.HasField s "outpoint" a) =>
           Lens.Family2.LensLike' f s a
outpoint = Data.ProtoLens.Field.field @"outpoint"
outputIndex ::
            forall f s a .
              (Prelude.Functor f,
               Data.ProtoLens.Field.HasField s "outputIndex" a) =>
              Lens.Family2.LensLike' f s a
outputIndex = Data.ProtoLens.Field.field @"outputIndex"
path ::
     forall f s a .
       (Prelude.Functor f, Data.ProtoLens.Field.HasField s "path" a) =>
       Lens.Family2.LensLike' f s a
path = Data.ProtoLens.Field.field @"path"
payReq ::
       forall f s a .
         (Prelude.Functor f, Data.ProtoLens.Field.HasField s "payReq" a) =>
         Lens.Family2.LensLike' f s a
payReq = Data.ProtoLens.Field.field @"payReq"
paymentError ::
             forall f s a .
               (Prelude.Functor f,
                Data.ProtoLens.Field.HasField s "paymentError" a) =>
               Lens.Family2.LensLike' f s a
paymentError = Data.ProtoLens.Field.field @"paymentError"
paymentHash ::
            forall f s a .
              (Prelude.Functor f,
               Data.ProtoLens.Field.HasField s "paymentHash" a) =>
              Lens.Family2.LensLike' f s a
paymentHash = Data.ProtoLens.Field.field @"paymentHash"
paymentHashString ::
                  forall f s a .
                    (Prelude.Functor f,
                     Data.ProtoLens.Field.HasField s "paymentHashString" a) =>
                    Lens.Family2.LensLike' f s a
paymentHashString = Data.ProtoLens.Field.field @"paymentHashString"
paymentPreimage ::
                forall f s a .
                  (Prelude.Functor f,
                   Data.ProtoLens.Field.HasField s "paymentPreimage" a) =>
                  Lens.Family2.LensLike' f s a
paymentPreimage = Data.ProtoLens.Field.field @"paymentPreimage"
paymentRequest ::
               forall f s a .
                 (Prelude.Functor f,
                  Data.ProtoLens.Field.HasField s "paymentRequest" a) =>
                 Lens.Family2.LensLike' f s a
paymentRequest = Data.ProtoLens.Field.field @"paymentRequest"
paymentRoute ::
             forall f s a .
               (Prelude.Functor f,
                Data.ProtoLens.Field.HasField s "paymentRoute" a) =>
               Lens.Family2.LensLike' f s a
paymentRoute = Data.ProtoLens.Field.field @"paymentRoute"
payments ::
         forall f s a .
           (Prelude.Functor f,
            Data.ProtoLens.Field.HasField s "payments" a) =>
           Lens.Family2.LensLike' f s a
payments = Data.ProtoLens.Field.field @"payments"
peers ::
      forall f s a .
        (Prelude.Functor f, Data.ProtoLens.Field.HasField s "peers" a) =>
        Lens.Family2.LensLike' f s a
peers = Data.ProtoLens.Field.field @"peers"
pendingClosingChannels ::
                       forall f s a .
                         (Prelude.Functor f,
                          Data.ProtoLens.Field.HasField s "pendingClosingChannels" a) =>
                         Lens.Family2.LensLike' f s a
pendingClosingChannels
  = Data.ProtoLens.Field.field @"pendingClosingChannels"
pendingForceClosingChannels ::
                            forall f s a .
                              (Prelude.Functor f,
                               Data.ProtoLens.Field.HasField s "pendingForceClosingChannels" a) =>
                              Lens.Family2.LensLike' f s a
pendingForceClosingChannels
  = Data.ProtoLens.Field.field @"pendingForceClosingChannels"
pendingHtlcs ::
             forall f s a .
               (Prelude.Functor f,
                Data.ProtoLens.Field.HasField s "pendingHtlcs" a) =>
               Lens.Family2.LensLike' f s a
pendingHtlcs = Data.ProtoLens.Field.field @"pendingHtlcs"
pendingOnly ::
            forall f s a .
              (Prelude.Functor f,
               Data.ProtoLens.Field.HasField s "pendingOnly" a) =>
              Lens.Family2.LensLike' f s a
pendingOnly = Data.ProtoLens.Field.field @"pendingOnly"
pendingOpenBalance ::
                   forall f s a .
                     (Prelude.Functor f,
                      Data.ProtoLens.Field.HasField s "pendingOpenBalance" a) =>
                     Lens.Family2.LensLike' f s a
pendingOpenBalance
  = Data.ProtoLens.Field.field @"pendingOpenBalance"
pendingOpenChannels ::
                    forall f s a .
                      (Prelude.Functor f,
                       Data.ProtoLens.Field.HasField s "pendingOpenChannels" a) =>
                      Lens.Family2.LensLike' f s a
pendingOpenChannels
  = Data.ProtoLens.Field.field @"pendingOpenChannels"
percent ::
        forall f s a .
          (Prelude.Functor f, Data.ProtoLens.Field.HasField s "percent" a) =>
          Lens.Family2.LensLike' f s a
percent = Data.ProtoLens.Field.field @"percent"
perm ::
     forall f s a .
       (Prelude.Functor f, Data.ProtoLens.Field.HasField s "perm" a) =>
       Lens.Family2.LensLike' f s a
perm = Data.ProtoLens.Field.field @"perm"
pingTime ::
         forall f s a .
           (Prelude.Functor f,
            Data.ProtoLens.Field.HasField s "pingTime" a) =>
           Lens.Family2.LensLike' f s a
pingTime = Data.ProtoLens.Field.field @"pingTime"
pkScript ::
         forall f s a .
           (Prelude.Functor f,
            Data.ProtoLens.Field.HasField s "pkScript" a) =>
           Lens.Family2.LensLike' f s a
pkScript = Data.ProtoLens.Field.field @"pkScript"
private ::
        forall f s a .
          (Prelude.Functor f, Data.ProtoLens.Field.HasField s "private" a) =>
          Lens.Family2.LensLike' f s a
private = Data.ProtoLens.Field.field @"private"
privateOnly ::
            forall f s a .
              (Prelude.Functor f,
               Data.ProtoLens.Field.HasField s "privateOnly" a) =>
              Lens.Family2.LensLike' f s a
privateOnly = Data.ProtoLens.Field.field @"privateOnly"
pubKey ::
       forall f s a .
         (Prelude.Functor f, Data.ProtoLens.Field.HasField s "pubKey" a) =>
         Lens.Family2.LensLike' f s a
pubKey = Data.ProtoLens.Field.field @"pubKey"
pubkey ::
       forall f s a .
         (Prelude.Functor f, Data.ProtoLens.Field.HasField s "pubkey" a) =>
         Lens.Family2.LensLike' f s a
pubkey = Data.ProtoLens.Field.field @"pubkey"
publicOnly ::
           forall f s a .
             (Prelude.Functor f,
              Data.ProtoLens.Field.HasField s "publicOnly" a) =>
             Lens.Family2.LensLike' f s a
publicOnly = Data.ProtoLens.Field.field @"publicOnly"
pushSat ::
        forall f s a .
          (Prelude.Functor f, Data.ProtoLens.Field.HasField s "pushSat" a) =>
          Lens.Family2.LensLike' f s a
pushSat = Data.ProtoLens.Field.field @"pushSat"
rHash ::
      forall f s a .
        (Prelude.Functor f, Data.ProtoLens.Field.HasField s "rHash" a) =>
        Lens.Family2.LensLike' f s a
rHash = Data.ProtoLens.Field.field @"rHash"
rHashStr ::
         forall f s a .
           (Prelude.Functor f,
            Data.ProtoLens.Field.HasField s "rHashStr" a) =>
           Lens.Family2.LensLike' f s a
rHashStr = Data.ProtoLens.Field.field @"rHashStr"
rPreimage ::
          forall f s a .
            (Prelude.Functor f,
             Data.ProtoLens.Field.HasField s "rPreimage" a) =>
            Lens.Family2.LensLike' f s a
rPreimage = Data.ProtoLens.Field.field @"rPreimage"
receipt ::
        forall f s a .
          (Prelude.Functor f, Data.ProtoLens.Field.HasField s "receipt" a) =>
          Lens.Family2.LensLike' f s a
receipt = Data.ProtoLens.Field.field @"receipt"
recoveredBalance ::
                 forall f s a .
                   (Prelude.Functor f,
                    Data.ProtoLens.Field.HasField s "recoveredBalance" a) =>
                   Lens.Family2.LensLike' f s a
recoveredBalance = Data.ProtoLens.Field.field @"recoveredBalance"
recoveryWindow ::
               forall f s a .
                 (Prelude.Functor f,
                  Data.ProtoLens.Field.HasField s "recoveryWindow" a) =>
                 Lens.Family2.LensLike' f s a
recoveryWindow = Data.ProtoLens.Field.field @"recoveryWindow"
remoteBalance ::
              forall f s a .
                (Prelude.Functor f,
                 Data.ProtoLens.Field.HasField s "remoteBalance" a) =>
                Lens.Family2.LensLike' f s a
remoteBalance = Data.ProtoLens.Field.field @"remoteBalance"
remoteCsvDelay ::
               forall f s a .
                 (Prelude.Functor f,
                  Data.ProtoLens.Field.HasField s "remoteCsvDelay" a) =>
                 Lens.Family2.LensLike' f s a
remoteCsvDelay = Data.ProtoLens.Field.field @"remoteCsvDelay"
remoteForce ::
            forall f s a .
              (Prelude.Functor f,
               Data.ProtoLens.Field.HasField s "remoteForce" a) =>
              Lens.Family2.LensLike' f s a
remoteForce = Data.ProtoLens.Field.field @"remoteForce"
remoteNodePub ::
              forall f s a .
                (Prelude.Functor f,
                 Data.ProtoLens.Field.HasField s "remoteNodePub" a) =>
                Lens.Family2.LensLike' f s a
remoteNodePub = Data.ProtoLens.Field.field @"remoteNodePub"
remotePubkey ::
             forall f s a .
               (Prelude.Functor f,
                Data.ProtoLens.Field.HasField s "remotePubkey" a) =>
               Lens.Family2.LensLike' f s a
remotePubkey = Data.ProtoLens.Field.field @"remotePubkey"
reversed ::
         forall f s a .
           (Prelude.Functor f,
            Data.ProtoLens.Field.HasField s "reversed" a) =>
           Lens.Family2.LensLike' f s a
reversed = Data.ProtoLens.Field.field @"reversed"
route ::
      forall f s a .
        (Prelude.Functor f, Data.ProtoLens.Field.HasField s "route" a) =>
        Lens.Family2.LensLike' f s a
route = Data.ProtoLens.Field.field @"route"
routeHints ::
           forall f s a .
             (Prelude.Functor f,
              Data.ProtoLens.Field.HasField s "routeHints" a) =>
             Lens.Family2.LensLike' f s a
routeHints = Data.ProtoLens.Field.field @"routeHints"
routes ::
       forall f s a .
         (Prelude.Functor f, Data.ProtoLens.Field.HasField s "routes" a) =>
         Lens.Family2.LensLike' f s a
routes = Data.ProtoLens.Field.field @"routes"
routingPolicy ::
              forall f s a .
                (Prelude.Functor f,
                 Data.ProtoLens.Field.HasField s "routingPolicy" a) =>
                Lens.Family2.LensLike' f s a
routingPolicy = Data.ProtoLens.Field.field @"routingPolicy"
satPerByte ::
           forall f s a .
             (Prelude.Functor f,
              Data.ProtoLens.Field.HasField s "satPerByte" a) =>
             Lens.Family2.LensLike' f s a
satPerByte = Data.ProtoLens.Field.field @"satPerByte"
satRecv ::
        forall f s a .
          (Prelude.Functor f, Data.ProtoLens.Field.HasField s "satRecv" a) =>
          Lens.Family2.LensLike' f s a
satRecv = Data.ProtoLens.Field.field @"satRecv"
satSent ::
        forall f s a .
          (Prelude.Functor f, Data.ProtoLens.Field.HasField s "satSent" a) =>
          Lens.Family2.LensLike' f s a
satSent = Data.ProtoLens.Field.field @"satSent"
seedEntropy ::
            forall f s a .
              (Prelude.Functor f,
               Data.ProtoLens.Field.HasField s "seedEntropy" a) =>
              Lens.Family2.LensLike' f s a
seedEntropy = Data.ProtoLens.Field.field @"seedEntropy"
sendAll ::
        forall f s a .
          (Prelude.Functor f, Data.ProtoLens.Field.HasField s "sendAll" a) =>
          Lens.Family2.LensLike' f s a
sendAll = Data.ProtoLens.Field.field @"sendAll"
settleDate ::
           forall f s a .
             (Prelude.Functor f,
              Data.ProtoLens.Field.HasField s "settleDate" a) =>
             Lens.Family2.LensLike' f s a
settleDate = Data.ProtoLens.Field.field @"settleDate"
settleIndex ::
            forall f s a .
              (Prelude.Functor f,
               Data.ProtoLens.Field.HasField s "settleIndex" a) =>
              Lens.Family2.LensLike' f s a
settleIndex = Data.ProtoLens.Field.field @"settleIndex"
settled ::
        forall f s a .
          (Prelude.Functor f, Data.ProtoLens.Field.HasField s "settled" a) =>
          Lens.Family2.LensLike' f s a
settled = Data.ProtoLens.Field.field @"settled"
settledBalance ::
               forall f s a .
                 (Prelude.Functor f,
                  Data.ProtoLens.Field.HasField s "settledBalance" a) =>
                 Lens.Family2.LensLike' f s a
settledBalance = Data.ProtoLens.Field.field @"settledBalance"
show ::
     forall f s a .
       (Prelude.Functor f, Data.ProtoLens.Field.HasField s "show" a) =>
       Lens.Family2.LensLike' f s a
show = Data.ProtoLens.Field.field @"show"
signature ::
          forall f s a .
            (Prelude.Functor f,
             Data.ProtoLens.Field.HasField s "signature" a) =>
            Lens.Family2.LensLike' f s a
signature = Data.ProtoLens.Field.field @"signature"
singleChanBackups ::
                  forall f s a .
                    (Prelude.Functor f,
                     Data.ProtoLens.Field.HasField s "singleChanBackups" a) =>
                    Lens.Family2.LensLike' f s a
singleChanBackups = Data.ProtoLens.Field.field @"singleChanBackups"
sourcePubKey ::
             forall f s a .
               (Prelude.Functor f,
                Data.ProtoLens.Field.HasField s "sourcePubKey" a) =>
               Lens.Family2.LensLike' f s a
sourcePubKey = Data.ProtoLens.Field.field @"sourcePubKey"
spendUnconfirmed ::
                 forall f s a .
                   (Prelude.Functor f,
                    Data.ProtoLens.Field.HasField s "spendUnconfirmed" a) =>
                   Lens.Family2.LensLike' f s a
spendUnconfirmed = Data.ProtoLens.Field.field @"spendUnconfirmed"
stage ::
      forall f s a .
        (Prelude.Functor f, Data.ProtoLens.Field.HasField s "stage" a) =>
        Lens.Family2.LensLike' f s a
stage = Data.ProtoLens.Field.field @"stage"
startTime ::
          forall f s a .
            (Prelude.Functor f,
             Data.ProtoLens.Field.HasField s "startTime" a) =>
            Lens.Family2.LensLike' f s a
startTime = Data.ProtoLens.Field.field @"startTime"
state ::
      forall f s a .
        (Prelude.Functor f, Data.ProtoLens.Field.HasField s "state" a) =>
        Lens.Family2.LensLike' f s a
state = Data.ProtoLens.Field.field @"state"
subSystems ::
           forall f s a .
             (Prelude.Functor f,
              Data.ProtoLens.Field.HasField s "subSystems" a) =>
             Lens.Family2.LensLike' f s a
subSystems = Data.ProtoLens.Field.field @"subSystems"
success ::
        forall f s a .
          (Prelude.Functor f, Data.ProtoLens.Field.HasField s "success" a) =>
          Lens.Family2.LensLike' f s a
success = Data.ProtoLens.Field.field @"success"
syncType ::
         forall f s a .
           (Prelude.Functor f,
            Data.ProtoLens.Field.HasField s "syncType" a) =>
           Lens.Family2.LensLike' f s a
syncType = Data.ProtoLens.Field.field @"syncType"
syncedToChain ::
              forall f s a .
                (Prelude.Functor f,
                 Data.ProtoLens.Field.HasField s "syncedToChain" a) =>
                Lens.Family2.LensLike' f s a
syncedToChain = Data.ProtoLens.Field.field @"syncedToChain"
targetConf ::
           forall f s a .
             (Prelude.Functor f,
              Data.ProtoLens.Field.HasField s "targetConf" a) =>
             Lens.Family2.LensLike' f s a
targetConf = Data.ProtoLens.Field.field @"targetConf"
testnet ::
        forall f s a .
          (Prelude.Functor f, Data.ProtoLens.Field.HasField s "testnet" a) =>
          Lens.Family2.LensLike' f s a
testnet = Data.ProtoLens.Field.field @"testnet"
timeLockDelta ::
              forall f s a .
                (Prelude.Functor f,
                 Data.ProtoLens.Field.HasField s "timeLockDelta" a) =>
                Lens.Family2.LensLike' f s a
timeLockDelta = Data.ProtoLens.Field.field @"timeLockDelta"
timeLockedBalance ::
                  forall f s a .
                    (Prelude.Functor f,
                     Data.ProtoLens.Field.HasField s "timeLockedBalance" a) =>
                    Lens.Family2.LensLike' f s a
timeLockedBalance = Data.ProtoLens.Field.field @"timeLockedBalance"
timeStamp ::
          forall f s a .
            (Prelude.Functor f,
             Data.ProtoLens.Field.HasField s "timeStamp" a) =>
            Lens.Family2.LensLike' f s a
timeStamp = Data.ProtoLens.Field.field @"timeStamp"
timestamp ::
          forall f s a .
            (Prelude.Functor f,
             Data.ProtoLens.Field.HasField s "timestamp" a) =>
            Lens.Family2.LensLike' f s a
timestamp = Data.ProtoLens.Field.field @"timestamp"
totalAmt ::
         forall f s a .
           (Prelude.Functor f,
            Data.ProtoLens.Field.HasField s "totalAmt" a) =>
           Lens.Family2.LensLike' f s a
totalAmt = Data.ProtoLens.Field.field @"totalAmt"
totalAmtMsat ::
             forall f s a .
               (Prelude.Functor f,
                Data.ProtoLens.Field.HasField s "totalAmtMsat" a) =>
               Lens.Family2.LensLike' f s a
totalAmtMsat = Data.ProtoLens.Field.field @"totalAmtMsat"
totalBalance ::
             forall f s a .
               (Prelude.Functor f,
                Data.ProtoLens.Field.HasField s "totalBalance" a) =>
               Lens.Family2.LensLike' f s a
totalBalance = Data.ProtoLens.Field.field @"totalBalance"
totalCapacity ::
              forall f s a .
                (Prelude.Functor f,
                 Data.ProtoLens.Field.HasField s "totalCapacity" a) =>
                Lens.Family2.LensLike' f s a
totalCapacity = Data.ProtoLens.Field.field @"totalCapacity"
totalFees ::
          forall f s a .
            (Prelude.Functor f,
             Data.ProtoLens.Field.HasField s "totalFees" a) =>
            Lens.Family2.LensLike' f s a
totalFees = Data.ProtoLens.Field.field @"totalFees"
totalFeesMsat ::
              forall f s a .
                (Prelude.Functor f,
                 Data.ProtoLens.Field.HasField s "totalFeesMsat" a) =>
                Lens.Family2.LensLike' f s a
totalFeesMsat = Data.ProtoLens.Field.field @"totalFeesMsat"
totalLimboBalance ::
                  forall f s a .
                    (Prelude.Functor f,
                     Data.ProtoLens.Field.HasField s "totalLimboBalance" a) =>
                    Lens.Family2.LensLike' f s a
totalLimboBalance = Data.ProtoLens.Field.field @"totalLimboBalance"
totalNetworkCapacity ::
                     forall f s a .
                       (Prelude.Functor f,
                        Data.ProtoLens.Field.HasField s "totalNetworkCapacity" a) =>
                       Lens.Family2.LensLike' f s a
totalNetworkCapacity
  = Data.ProtoLens.Field.field @"totalNetworkCapacity"
totalSatoshisReceived ::
                      forall f s a .
                        (Prelude.Functor f,
                         Data.ProtoLens.Field.HasField s "totalSatoshisReceived" a) =>
                        Lens.Family2.LensLike' f s a
totalSatoshisReceived
  = Data.ProtoLens.Field.field @"totalSatoshisReceived"
totalSatoshisSent ::
                  forall f s a .
                    (Prelude.Functor f,
                     Data.ProtoLens.Field.HasField s "totalSatoshisSent" a) =>
                    Lens.Family2.LensLike' f s a
totalSatoshisSent = Data.ProtoLens.Field.field @"totalSatoshisSent"
totalTimeLock ::
              forall f s a .
                (Prelude.Functor f,
                 Data.ProtoLens.Field.HasField s "totalTimeLock" a) =>
                Lens.Family2.LensLike' f s a
totalTimeLock = Data.ProtoLens.Field.field @"totalTimeLock"
transactions ::
             forall f s a .
               (Prelude.Functor f,
                Data.ProtoLens.Field.HasField s "transactions" a) =>
               Lens.Family2.LensLike' f s a
transactions = Data.ProtoLens.Field.field @"transactions"
txHash ::
       forall f s a .
         (Prelude.Functor f, Data.ProtoLens.Field.HasField s "txHash" a) =>
         Lens.Family2.LensLike' f s a
txHash = Data.ProtoLens.Field.field @"txHash"
txid ::
     forall f s a .
       (Prelude.Functor f, Data.ProtoLens.Field.HasField s "txid" a) =>
       Lens.Family2.LensLike' f s a
txid = Data.ProtoLens.Field.field @"txid"
txidBytes ::
          forall f s a .
            (Prelude.Functor f,
             Data.ProtoLens.Field.HasField s "txidBytes" a) =>
            Lens.Family2.LensLike' f s a
txidBytes = Data.ProtoLens.Field.field @"txidBytes"
txidStr ::
        forall f s a .
          (Prelude.Functor f, Data.ProtoLens.Field.HasField s "txidStr" a) =>
          Lens.Family2.LensLike' f s a
txidStr = Data.ProtoLens.Field.field @"txidStr"
type' ::
      forall f s a .
        (Prelude.Functor f, Data.ProtoLens.Field.HasField s "type'" a) =>
        Lens.Family2.LensLike' f s a
type' = Data.ProtoLens.Field.field @"type'"
unconfirmedBalance ::
                   forall f s a .
                     (Prelude.Functor f,
                      Data.ProtoLens.Field.HasField s "unconfirmedBalance" a) =>
                     Lens.Family2.LensLike' f s a
unconfirmedBalance
  = Data.ProtoLens.Field.field @"unconfirmedBalance"
unsettledBalance ::
                 forall f s a .
                   (Prelude.Functor f,
                    Data.ProtoLens.Field.HasField s "unsettledBalance" a) =>
                   Lens.Family2.LensLike' f s a
unsettledBalance = Data.ProtoLens.Field.field @"unsettledBalance"
uris ::
     forall f s a .
       (Prelude.Functor f, Data.ProtoLens.Field.HasField s "uris" a) =>
       Lens.Family2.LensLike' f s a
uris = Data.ProtoLens.Field.field @"uris"
utxos ::
      forall f s a .
        (Prelude.Functor f, Data.ProtoLens.Field.HasField s "utxos" a) =>
        Lens.Family2.LensLike' f s a
utxos = Data.ProtoLens.Field.field @"utxos"
valid ::
      forall f s a .
        (Prelude.Functor f, Data.ProtoLens.Field.HasField s "valid" a) =>
        Lens.Family2.LensLike' f s a
valid = Data.ProtoLens.Field.field @"valid"
value ::
      forall f s a .
        (Prelude.Functor f, Data.ProtoLens.Field.HasField s "value" a) =>
        Lens.Family2.LensLike' f s a
value = Data.ProtoLens.Field.field @"value"
valueMsat ::
          forall f s a .
            (Prelude.Functor f,
             Data.ProtoLens.Field.HasField s "valueMsat" a) =>
            Lens.Family2.LensLike' f s a
valueMsat = Data.ProtoLens.Field.field @"valueMsat"
valueSat ::
         forall f s a .
           (Prelude.Functor f,
            Data.ProtoLens.Field.HasField s "valueSat" a) =>
           Lens.Family2.LensLike' f s a
valueSat = Data.ProtoLens.Field.field @"valueSat"
vec'addresses ::
              forall f s a .
                (Prelude.Functor f,
                 Data.ProtoLens.Field.HasField s "vec'addresses" a) =>
                Lens.Family2.LensLike' f s a
vec'addresses = Data.ProtoLens.Field.field @"vec'addresses"
vec'chains ::
           forall f s a .
             (Prelude.Functor f,
              Data.ProtoLens.Field.HasField s "vec'chains" a) =>
             Lens.Family2.LensLike' f s a
vec'chains = Data.ProtoLens.Field.field @"vec'chains"
vec'chanBackups ::
                forall f s a .
                  (Prelude.Functor f,
                   Data.ProtoLens.Field.HasField s "vec'chanBackups" a) =>
                  Lens.Family2.LensLike' f s a
vec'chanBackups = Data.ProtoLens.Field.field @"vec'chanBackups"
vec'chanPoints ::
               forall f s a .
                 (Prelude.Functor f,
                  Data.ProtoLens.Field.HasField s "vec'chanPoints" a) =>
                 Lens.Family2.LensLike' f s a
vec'chanPoints = Data.ProtoLens.Field.field @"vec'chanPoints"
vec'channelFees ::
                forall f s a .
                  (Prelude.Functor f,
                   Data.ProtoLens.Field.HasField s "vec'channelFees" a) =>
                  Lens.Family2.LensLike' f s a
vec'channelFees = Data.ProtoLens.Field.field @"vec'channelFees"
vec'channelUpdates ::
                   forall f s a .
                     (Prelude.Functor f,
                      Data.ProtoLens.Field.HasField s "vec'channelUpdates" a) =>
                     Lens.Family2.LensLike' f s a
vec'channelUpdates
  = Data.ProtoLens.Field.field @"vec'channelUpdates"
vec'channels ::
             forall f s a .
               (Prelude.Functor f,
                Data.ProtoLens.Field.HasField s "vec'channels" a) =>
               Lens.Family2.LensLike' f s a
vec'channels = Data.ProtoLens.Field.field @"vec'channels"
vec'cipherSeedMnemonic ::
                       forall f s a .
                         (Prelude.Functor f,
                          Data.ProtoLens.Field.HasField s "vec'cipherSeedMnemonic" a) =>
                         Lens.Family2.LensLike' f s a
vec'cipherSeedMnemonic
  = Data.ProtoLens.Field.field @"vec'cipherSeedMnemonic"
vec'closedChans ::
                forall f s a .
                  (Prelude.Functor f,
                   Data.ProtoLens.Field.HasField s "vec'closedChans" a) =>
                  Lens.Family2.LensLike' f s a
vec'closedChans = Data.ProtoLens.Field.field @"vec'closedChans"
vec'destAddresses ::
                  forall f s a .
                    (Prelude.Functor f,
                     Data.ProtoLens.Field.HasField s "vec'destAddresses" a) =>
                    Lens.Family2.LensLike' f s a
vec'destAddresses = Data.ProtoLens.Field.field @"vec'destAddresses"
vec'edges ::
          forall f s a .
            (Prelude.Functor f,
             Data.ProtoLens.Field.HasField s "vec'edges" a) =>
            Lens.Family2.LensLike' f s a
vec'edges = Data.ProtoLens.Field.field @"vec'edges"
vec'forwardingEvents ::
                     forall f s a .
                       (Prelude.Functor f,
                        Data.ProtoLens.Field.HasField s "vec'forwardingEvents" a) =>
                       Lens.Family2.LensLike' f s a
vec'forwardingEvents
  = Data.ProtoLens.Field.field @"vec'forwardingEvents"
vec'hopHints ::
             forall f s a .
               (Prelude.Functor f,
                Data.ProtoLens.Field.HasField s "vec'hopHints" a) =>
               Lens.Family2.LensLike' f s a
vec'hopHints = Data.ProtoLens.Field.field @"vec'hopHints"
vec'hops ::
         forall f s a .
           (Prelude.Functor f,
            Data.ProtoLens.Field.HasField s "vec'hops" a) =>
           Lens.Family2.LensLike' f s a
vec'hops = Data.ProtoLens.Field.field @"vec'hops"
vec'ignoredEdges ::
                 forall f s a .
                   (Prelude.Functor f,
                    Data.ProtoLens.Field.HasField s "vec'ignoredEdges" a) =>
                   Lens.Family2.LensLike' f s a
vec'ignoredEdges = Data.ProtoLens.Field.field @"vec'ignoredEdges"
vec'ignoredNodes ::
                 forall f s a .
                   (Prelude.Functor f,
                    Data.ProtoLens.Field.HasField s "vec'ignoredNodes" a) =>
                   Lens.Family2.LensLike' f s a
vec'ignoredNodes = Data.ProtoLens.Field.field @"vec'ignoredNodes"
vec'invoices ::
             forall f s a .
               (Prelude.Functor f,
                Data.ProtoLens.Field.HasField s "vec'invoices" a) =>
               Lens.Family2.LensLike' f s a
vec'invoices = Data.ProtoLens.Field.field @"vec'invoices"
vec'nodeUpdates ::
                forall f s a .
                  (Prelude.Functor f,
                   Data.ProtoLens.Field.HasField s "vec'nodeUpdates" a) =>
                  Lens.Family2.LensLike' f s a
vec'nodeUpdates = Data.ProtoLens.Field.field @"vec'nodeUpdates"
vec'nodes ::
          forall f s a .
            (Prelude.Functor f,
             Data.ProtoLens.Field.HasField s "vec'nodes" a) =>
            Lens.Family2.LensLike' f s a
vec'nodes = Data.ProtoLens.Field.field @"vec'nodes"
vec'path ::
         forall f s a .
           (Prelude.Functor f,
            Data.ProtoLens.Field.HasField s "vec'path" a) =>
           Lens.Family2.LensLike' f s a
vec'path = Data.ProtoLens.Field.field @"vec'path"
vec'payments ::
             forall f s a .
               (Prelude.Functor f,
                Data.ProtoLens.Field.HasField s "vec'payments" a) =>
               Lens.Family2.LensLike' f s a
vec'payments = Data.ProtoLens.Field.field @"vec'payments"
vec'peers ::
          forall f s a .
            (Prelude.Functor f,
             Data.ProtoLens.Field.HasField s "vec'peers" a) =>
            Lens.Family2.LensLike' f s a
vec'peers = Data.ProtoLens.Field.field @"vec'peers"
vec'pendingClosingChannels ::
                           forall f s a .
                             (Prelude.Functor f,
                              Data.ProtoLens.Field.HasField s "vec'pendingClosingChannels" a) =>
                             Lens.Family2.LensLike' f s a
vec'pendingClosingChannels
  = Data.ProtoLens.Field.field @"vec'pendingClosingChannels"
vec'pendingForceClosingChannels ::
                                forall f s a .
                                  (Prelude.Functor f,
                                   Data.ProtoLens.Field.HasField s "vec'pendingForceClosingChannels"
                                     a) =>
                                  Lens.Family2.LensLike' f s a
vec'pendingForceClosingChannels
  = Data.ProtoLens.Field.field @"vec'pendingForceClosingChannels"
vec'pendingHtlcs ::
                 forall f s a .
                   (Prelude.Functor f,
                    Data.ProtoLens.Field.HasField s "vec'pendingHtlcs" a) =>
                   Lens.Family2.LensLike' f s a
vec'pendingHtlcs = Data.ProtoLens.Field.field @"vec'pendingHtlcs"
vec'pendingOpenChannels ::
                        forall f s a .
                          (Prelude.Functor f,
                           Data.ProtoLens.Field.HasField s "vec'pendingOpenChannels" a) =>
                          Lens.Family2.LensLike' f s a
vec'pendingOpenChannels
  = Data.ProtoLens.Field.field @"vec'pendingOpenChannels"
vec'routeHints ::
               forall f s a .
                 (Prelude.Functor f,
                  Data.ProtoLens.Field.HasField s "vec'routeHints" a) =>
                 Lens.Family2.LensLike' f s a
vec'routeHints = Data.ProtoLens.Field.field @"vec'routeHints"
vec'routes ::
           forall f s a .
             (Prelude.Functor f,
              Data.ProtoLens.Field.HasField s "vec'routes" a) =>
             Lens.Family2.LensLike' f s a
vec'routes = Data.ProtoLens.Field.field @"vec'routes"
vec'transactions ::
                 forall f s a .
                   (Prelude.Functor f,
                    Data.ProtoLens.Field.HasField s "vec'transactions" a) =>
                   Lens.Family2.LensLike' f s a
vec'transactions = Data.ProtoLens.Field.field @"vec'transactions"
vec'uris ::
         forall f s a .
           (Prelude.Functor f,
            Data.ProtoLens.Field.HasField s "vec'uris" a) =>
           Lens.Family2.LensLike' f s a
vec'uris = Data.ProtoLens.Field.field @"vec'uris"
vec'utxos ::
          forall f s a .
            (Prelude.Functor f,
             Data.ProtoLens.Field.HasField s "vec'utxos" a) =>
            Lens.Family2.LensLike' f s a
vec'utxos = Data.ProtoLens.Field.field @"vec'utxos"
vec'waitingCloseChannels ::
                         forall f s a .
                           (Prelude.Functor f,
                            Data.ProtoLens.Field.HasField s "vec'waitingCloseChannels" a) =>
                           Lens.Family2.LensLike' f s a
vec'waitingCloseChannels
  = Data.ProtoLens.Field.field @"vec'waitingCloseChannels"
version ::
        forall f s a .
          (Prelude.Functor f, Data.ProtoLens.Field.HasField s "version" a) =>
          Lens.Family2.LensLike' f s a
version = Data.ProtoLens.Field.field @"version"
waitingCloseChannels ::
                     forall f s a .
                       (Prelude.Functor f,
                        Data.ProtoLens.Field.HasField s "waitingCloseChannels" a) =>
                       Lens.Family2.LensLike' f s a
waitingCloseChannels
  = Data.ProtoLens.Field.field @"waitingCloseChannels"
walletPassword ::
               forall f s a .
                 (Prelude.Functor f,
                  Data.ProtoLens.Field.HasField s "walletPassword" a) =>
                 Lens.Family2.LensLike' f s a
walletPassword = Data.ProtoLens.Field.field @"walletPassword"
weekFeeSum ::
           forall f s a .
             (Prelude.Functor f,
              Data.ProtoLens.Field.HasField s "weekFeeSum" a) =>
             Lens.Family2.LensLike' f s a
weekFeeSum = Data.ProtoLens.Field.field @"weekFeeSum"