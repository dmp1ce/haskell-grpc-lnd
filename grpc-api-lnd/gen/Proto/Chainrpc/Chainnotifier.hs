{- This file was auto-generated from chainrpc/chainnotifier.proto by the proto-lens-protoc program. -}
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
module Proto.Chainrpc.Chainnotifier
       (ChainNotifier(..), BlockEpoch(), ConfDetails(), ConfEvent(),
        ConfEvent'Event(..), _ConfEvent'Conf, _ConfEvent'Reorg,
        ConfRequest(), Outpoint(), Reorg(), SpendDetails(), SpendEvent(),
        SpendEvent'Event(..), _SpendEvent'Spend, _SpendEvent'Reorg,
        SpendRequest())
       where
import qualified Data.ProtoLens.Runtime.Control.DeepSeq
       as Control.DeepSeq
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Prism
       as Data.ProtoLens.Prism
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

{- | Fields :

    * 'Proto.Chainrpc.Chainnotifier_Fields.hash' @:: Lens' BlockEpoch Data.ByteString.ByteString@
    * 'Proto.Chainrpc.Chainnotifier_Fields.height' @:: Lens' BlockEpoch Data.Word.Word32@
 -}
data BlockEpoch = BlockEpoch{_BlockEpoch'hash ::
                             !Data.ByteString.ByteString,
                             _BlockEpoch'height :: !Data.Word.Word32,
                             _BlockEpoch'_unknownFields :: !Data.ProtoLens.FieldSet}
                    deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show BlockEpoch where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField BlockEpoch "hash"
           (Data.ByteString.ByteString)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _BlockEpoch'hash
               (\ x__ y__ -> x__{_BlockEpoch'hash = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Field.HasField BlockEpoch "height"
           (Data.Word.Word32)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _BlockEpoch'height
               (\ x__ y__ -> x__{_BlockEpoch'height = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Message BlockEpoch where
        messageName _ = Data.Text.pack "chainrpc.BlockEpoch"
        fieldsByTag
          = let hash__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "hash"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Data.ProtoLens.Field.field @"hash"))
                      :: Data.ProtoLens.FieldDescriptor BlockEpoch
                height__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "height"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Data.ProtoLens.Field.field @"height"))
                      :: Data.ProtoLens.FieldDescriptor BlockEpoch
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, hash__field_descriptor),
                 (Data.ProtoLens.Tag 2, height__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _BlockEpoch'_unknownFields
              (\ x__ y__ -> x__{_BlockEpoch'_unknownFields = y__})
        defMessage
          = BlockEpoch{_BlockEpoch'hash = Data.ProtoLens.fieldDefault,
                       _BlockEpoch'height = Data.ProtoLens.fieldDefault,
                       _BlockEpoch'_unknownFields = ([])}
        parseMessage
          = let loop ::
                     BlockEpoch -> Data.ProtoLens.Encoding.Bytes.Parser BlockEpoch
                loop x
                  = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
                       if end then
                         do let missing = [] in
                              if Prelude.null missing then Prelude.return () else
                                Prelude.fail
                                  (("Missing required fields: ") Prelude.++
                                     Prelude.show (missing :: ([Prelude.String])))
                            Prelude.return
                              (Lens.Family2.over Data.ProtoLens.unknownFields
                                 (\ !t -> Prelude.reverse t)
                                 x)
                         else
                         do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                            case tag of
                                10 -> do y <- (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                  Data.ProtoLens.Encoding.Bytes.getBytes
                                                    (Prelude.fromIntegral len))
                                                Data.ProtoLens.Encoding.Bytes.<?> "hash"
                                         loop
                                           (Lens.Family2.set (Data.ProtoLens.Field.field @"hash") y
                                              x)
                                16 -> do y <- (Prelude.fmap Prelude.fromIntegral
                                                 Data.ProtoLens.Encoding.Bytes.getVarInt)
                                                Data.ProtoLens.Encoding.Bytes.<?> "height"
                                         loop
                                           (Lens.Family2.set (Data.ProtoLens.Field.field @"height")
                                              y
                                              x)
                                wire -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                                   wire
                                           loop
                                             (Lens.Family2.over Data.ProtoLens.unknownFields
                                                (\ !t -> (:) y t)
                                                x)
              in
              (do loop Data.ProtoLens.defMessage)
                Data.ProtoLens.Encoding.Bytes.<?> "BlockEpoch"
        buildMessage
          = (\ _x ->
               (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"hash") _x
                  in
                  if (_v) Prelude.== Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty else
                    (Data.ProtoLens.Encoding.Bytes.putVarInt 10) Data.Monoid.<>
                      (\ bs ->
                         (Data.ProtoLens.Encoding.Bytes.putVarInt
                            (Prelude.fromIntegral (Data.ByteString.length bs)))
                           Data.Monoid.<> Data.ProtoLens.Encoding.Bytes.putBytes bs)
                        _v)
                 Data.Monoid.<>
                 (let _v
                        = Lens.Family2.view (Data.ProtoLens.Field.field @"height") _x
                    in
                    if (_v) Prelude.== Data.ProtoLens.fieldDefault then
                      Data.Monoid.mempty else
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 16) Data.Monoid.<>
                        ((Data.ProtoLens.Encoding.Bytes.putVarInt) Prelude..
                           Prelude.fromIntegral)
                          _v)
                   Data.Monoid.<>
                   Data.ProtoLens.Encoding.Wire.buildFieldSet
                     (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData BlockEpoch where
        rnf
          = (\ x__ ->
               Control.DeepSeq.deepseq (_BlockEpoch'_unknownFields x__)
                 (Control.DeepSeq.deepseq (_BlockEpoch'hash x__)
                    (Control.DeepSeq.deepseq (_BlockEpoch'height x__) (()))))
{- | Fields :

    * 'Proto.Chainrpc.Chainnotifier_Fields.rawTx' @:: Lens' ConfDetails Data.ByteString.ByteString@
    * 'Proto.Chainrpc.Chainnotifier_Fields.blockHash' @:: Lens' ConfDetails Data.ByteString.ByteString@
    * 'Proto.Chainrpc.Chainnotifier_Fields.blockHeight' @:: Lens' ConfDetails Data.Word.Word32@
    * 'Proto.Chainrpc.Chainnotifier_Fields.txIndex' @:: Lens' ConfDetails Data.Word.Word32@
 -}
data ConfDetails = ConfDetails{_ConfDetails'rawTx ::
                               !Data.ByteString.ByteString,
                               _ConfDetails'blockHash :: !Data.ByteString.ByteString,
                               _ConfDetails'blockHeight :: !Data.Word.Word32,
                               _ConfDetails'txIndex :: !Data.Word.Word32,
                               _ConfDetails'_unknownFields :: !Data.ProtoLens.FieldSet}
                     deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ConfDetails where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ConfDetails "rawTx"
           (Data.ByteString.ByteString)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _ConfDetails'rawTx
               (\ x__ y__ -> x__{_ConfDetails'rawTx = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Field.HasField ConfDetails "blockHash"
           (Data.ByteString.ByteString)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _ConfDetails'blockHash
               (\ x__ y__ -> x__{_ConfDetails'blockHash = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Field.HasField ConfDetails "blockHeight"
           (Data.Word.Word32)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _ConfDetails'blockHeight
               (\ x__ y__ -> x__{_ConfDetails'blockHeight = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Field.HasField ConfDetails "txIndex"
           (Data.Word.Word32)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _ConfDetails'txIndex
               (\ x__ y__ -> x__{_ConfDetails'txIndex = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Message ConfDetails where
        messageName _ = Data.Text.pack "chainrpc.ConfDetails"
        fieldsByTag
          = let rawTx__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "raw_tx"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Data.ProtoLens.Field.field @"rawTx"))
                      :: Data.ProtoLens.FieldDescriptor ConfDetails
                blockHash__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "block_hash"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Data.ProtoLens.Field.field @"blockHash"))
                      :: Data.ProtoLens.FieldDescriptor ConfDetails
                blockHeight__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "block_height"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Data.ProtoLens.Field.field @"blockHeight"))
                      :: Data.ProtoLens.FieldDescriptor ConfDetails
                txIndex__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "tx_index"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Data.ProtoLens.Field.field @"txIndex"))
                      :: Data.ProtoLens.FieldDescriptor ConfDetails
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, rawTx__field_descriptor),
                 (Data.ProtoLens.Tag 2, blockHash__field_descriptor),
                 (Data.ProtoLens.Tag 3, blockHeight__field_descriptor),
                 (Data.ProtoLens.Tag 4, txIndex__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _ConfDetails'_unknownFields
              (\ x__ y__ -> x__{_ConfDetails'_unknownFields = y__})
        defMessage
          = ConfDetails{_ConfDetails'rawTx = Data.ProtoLens.fieldDefault,
                        _ConfDetails'blockHash = Data.ProtoLens.fieldDefault,
                        _ConfDetails'blockHeight = Data.ProtoLens.fieldDefault,
                        _ConfDetails'txIndex = Data.ProtoLens.fieldDefault,
                        _ConfDetails'_unknownFields = ([])}
        parseMessage
          = let loop ::
                     ConfDetails -> Data.ProtoLens.Encoding.Bytes.Parser ConfDetails
                loop x
                  = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
                       if end then
                         do let missing = [] in
                              if Prelude.null missing then Prelude.return () else
                                Prelude.fail
                                  (("Missing required fields: ") Prelude.++
                                     Prelude.show (missing :: ([Prelude.String])))
                            Prelude.return
                              (Lens.Family2.over Data.ProtoLens.unknownFields
                                 (\ !t -> Prelude.reverse t)
                                 x)
                         else
                         do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                            case tag of
                                10 -> do y <- (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                  Data.ProtoLens.Encoding.Bytes.getBytes
                                                    (Prelude.fromIntegral len))
                                                Data.ProtoLens.Encoding.Bytes.<?> "raw_tx"
                                         loop
                                           (Lens.Family2.set (Data.ProtoLens.Field.field @"rawTx") y
                                              x)
                                18 -> do y <- (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                  Data.ProtoLens.Encoding.Bytes.getBytes
                                                    (Prelude.fromIntegral len))
                                                Data.ProtoLens.Encoding.Bytes.<?> "block_hash"
                                         loop
                                           (Lens.Family2.set
                                              (Data.ProtoLens.Field.field @"blockHash")
                                              y
                                              x)
                                24 -> do y <- (Prelude.fmap Prelude.fromIntegral
                                                 Data.ProtoLens.Encoding.Bytes.getVarInt)
                                                Data.ProtoLens.Encoding.Bytes.<?> "block_height"
                                         loop
                                           (Lens.Family2.set
                                              (Data.ProtoLens.Field.field @"blockHeight")
                                              y
                                              x)
                                32 -> do y <- (Prelude.fmap Prelude.fromIntegral
                                                 Data.ProtoLens.Encoding.Bytes.getVarInt)
                                                Data.ProtoLens.Encoding.Bytes.<?> "tx_index"
                                         loop
                                           (Lens.Family2.set (Data.ProtoLens.Field.field @"txIndex")
                                              y
                                              x)
                                wire -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                                   wire
                                           loop
                                             (Lens.Family2.over Data.ProtoLens.unknownFields
                                                (\ !t -> (:) y t)
                                                x)
              in
              (do loop Data.ProtoLens.defMessage)
                Data.ProtoLens.Encoding.Bytes.<?> "ConfDetails"
        buildMessage
          = (\ _x ->
               (let _v
                      = Lens.Family2.view (Data.ProtoLens.Field.field @"rawTx") _x
                  in
                  if (_v) Prelude.== Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty else
                    (Data.ProtoLens.Encoding.Bytes.putVarInt 10) Data.Monoid.<>
                      (\ bs ->
                         (Data.ProtoLens.Encoding.Bytes.putVarInt
                            (Prelude.fromIntegral (Data.ByteString.length bs)))
                           Data.Monoid.<> Data.ProtoLens.Encoding.Bytes.putBytes bs)
                        _v)
                 Data.Monoid.<>
                 (let _v
                        = Lens.Family2.view (Data.ProtoLens.Field.field @"blockHash") _x
                    in
                    if (_v) Prelude.== Data.ProtoLens.fieldDefault then
                      Data.Monoid.mempty else
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 18) Data.Monoid.<>
                        (\ bs ->
                           (Data.ProtoLens.Encoding.Bytes.putVarInt
                              (Prelude.fromIntegral (Data.ByteString.length bs)))
                             Data.Monoid.<> Data.ProtoLens.Encoding.Bytes.putBytes bs)
                          _v)
                   Data.Monoid.<>
                   (let _v
                          = Lens.Family2.view (Data.ProtoLens.Field.field @"blockHeight") _x
                      in
                      if (_v) Prelude.== Data.ProtoLens.fieldDefault then
                        Data.Monoid.mempty else
                        (Data.ProtoLens.Encoding.Bytes.putVarInt 24) Data.Monoid.<>
                          ((Data.ProtoLens.Encoding.Bytes.putVarInt) Prelude..
                             Prelude.fromIntegral)
                            _v)
                     Data.Monoid.<>
                     (let _v
                            = Lens.Family2.view (Data.ProtoLens.Field.field @"txIndex") _x
                        in
                        if (_v) Prelude.== Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty else
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 32) Data.Monoid.<>
                            ((Data.ProtoLens.Encoding.Bytes.putVarInt) Prelude..
                               Prelude.fromIntegral)
                              _v)
                       Data.Monoid.<>
                       Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData ConfDetails where
        rnf
          = (\ x__ ->
               Control.DeepSeq.deepseq (_ConfDetails'_unknownFields x__)
                 (Control.DeepSeq.deepseq (_ConfDetails'rawTx x__)
                    (Control.DeepSeq.deepseq (_ConfDetails'blockHash x__)
                       (Control.DeepSeq.deepseq (_ConfDetails'blockHeight x__)
                          (Control.DeepSeq.deepseq (_ConfDetails'txIndex x__) (()))))))
{- | Fields :

    * 'Proto.Chainrpc.Chainnotifier_Fields.maybe'event' @:: Lens' ConfEvent (Prelude.Maybe ConfEvent'Event)@
    * 'Proto.Chainrpc.Chainnotifier_Fields.maybe'conf' @:: Lens' ConfEvent (Prelude.Maybe ConfDetails)@
    * 'Proto.Chainrpc.Chainnotifier_Fields.conf' @:: Lens' ConfEvent ConfDetails@
    * 'Proto.Chainrpc.Chainnotifier_Fields.maybe'reorg' @:: Lens' ConfEvent (Prelude.Maybe Reorg)@
    * 'Proto.Chainrpc.Chainnotifier_Fields.reorg' @:: Lens' ConfEvent Reorg@
 -}
data ConfEvent = ConfEvent{_ConfEvent'event ::
                           !(Prelude.Maybe ConfEvent'Event),
                           _ConfEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
                   deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ConfEvent where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
data ConfEvent'Event = ConfEvent'Conf !ConfDetails
                     | ConfEvent'Reorg !Reorg
                         deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField ConfEvent "maybe'event"
           (Prelude.Maybe ConfEvent'Event)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _ConfEvent'event
               (\ x__ y__ -> x__{_ConfEvent'event = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Field.HasField ConfEvent "maybe'conf"
           (Prelude.Maybe ConfDetails)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _ConfEvent'event
               (\ x__ y__ -> x__{_ConfEvent'event = y__}))
              Prelude..
              Lens.Family2.Unchecked.lens
                (\ x__ ->
                   case x__ of
                       Prelude.Just (ConfEvent'Conf x__val) -> Prelude.Just x__val
                       _otherwise -> Prelude.Nothing)
                (\ _ y__ -> Prelude.fmap ConfEvent'Conf y__)
instance Data.ProtoLens.Field.HasField ConfEvent "conf"
           (ConfDetails)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _ConfEvent'event
               (\ x__ y__ -> x__{_ConfEvent'event = y__}))
              Prelude..
              (Lens.Family2.Unchecked.lens
                 (\ x__ ->
                    case x__ of
                        Prelude.Just (ConfEvent'Conf x__val) -> Prelude.Just x__val
                        _otherwise -> Prelude.Nothing)
                 (\ _ y__ -> Prelude.fmap ConfEvent'Conf y__))
                Prelude.. Data.ProtoLens.maybeLens Data.ProtoLens.defMessage
instance Data.ProtoLens.Field.HasField ConfEvent "maybe'reorg"
           (Prelude.Maybe Reorg)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _ConfEvent'event
               (\ x__ y__ -> x__{_ConfEvent'event = y__}))
              Prelude..
              Lens.Family2.Unchecked.lens
                (\ x__ ->
                   case x__ of
                       Prelude.Just (ConfEvent'Reorg x__val) -> Prelude.Just x__val
                       _otherwise -> Prelude.Nothing)
                (\ _ y__ -> Prelude.fmap ConfEvent'Reorg y__)
instance Data.ProtoLens.Field.HasField ConfEvent "reorg" (Reorg)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _ConfEvent'event
               (\ x__ y__ -> x__{_ConfEvent'event = y__}))
              Prelude..
              (Lens.Family2.Unchecked.lens
                 (\ x__ ->
                    case x__ of
                        Prelude.Just (ConfEvent'Reorg x__val) -> Prelude.Just x__val
                        _otherwise -> Prelude.Nothing)
                 (\ _ y__ -> Prelude.fmap ConfEvent'Reorg y__))
                Prelude.. Data.ProtoLens.maybeLens Data.ProtoLens.defMessage
instance Data.ProtoLens.Message ConfEvent where
        messageName _ = Data.Text.pack "chainrpc.ConfEvent"
        fieldsByTag
          = let conf__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "conf"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor ConfDetails)
                      (Data.ProtoLens.OptionalField
                         (Data.ProtoLens.Field.field @"maybe'conf"))
                      :: Data.ProtoLens.FieldDescriptor ConfEvent
                reorg__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "reorg"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor Reorg)
                      (Data.ProtoLens.OptionalField
                         (Data.ProtoLens.Field.field @"maybe'reorg"))
                      :: Data.ProtoLens.FieldDescriptor ConfEvent
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, conf__field_descriptor),
                 (Data.ProtoLens.Tag 2, reorg__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _ConfEvent'_unknownFields
              (\ x__ y__ -> x__{_ConfEvent'_unknownFields = y__})
        defMessage
          = ConfEvent{_ConfEvent'event = Prelude.Nothing,
                      _ConfEvent'_unknownFields = ([])}
        parseMessage
          = let loop ::
                     ConfEvent -> Data.ProtoLens.Encoding.Bytes.Parser ConfEvent
                loop x
                  = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
                       if end then
                         do let missing = [] in
                              if Prelude.null missing then Prelude.return () else
                                Prelude.fail
                                  (("Missing required fields: ") Prelude.++
                                     Prelude.show (missing :: ([Prelude.String])))
                            Prelude.return
                              (Lens.Family2.over Data.ProtoLens.unknownFields
                                 (\ !t -> Prelude.reverse t)
                                 x)
                         else
                         do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                            case tag of
                                10 -> do y <- (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                  Data.ProtoLens.Encoding.Bytes.isolate
                                                    (Prelude.fromIntegral len)
                                                    Data.ProtoLens.parseMessage)
                                                Data.ProtoLens.Encoding.Bytes.<?> "conf"
                                         loop
                                           (Lens.Family2.set (Data.ProtoLens.Field.field @"conf") y
                                              x)
                                18 -> do y <- (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                  Data.ProtoLens.Encoding.Bytes.isolate
                                                    (Prelude.fromIntegral len)
                                                    Data.ProtoLens.parseMessage)
                                                Data.ProtoLens.Encoding.Bytes.<?> "reorg"
                                         loop
                                           (Lens.Family2.set (Data.ProtoLens.Field.field @"reorg") y
                                              x)
                                wire -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                                   wire
                                           loop
                                             (Lens.Family2.over Data.ProtoLens.unknownFields
                                                (\ !t -> (:) y t)
                                                x)
              in
              (do loop Data.ProtoLens.defMessage)
                Data.ProtoLens.Encoding.Bytes.<?> "ConfEvent"
        buildMessage
          = (\ _x ->
               (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'event") _x of
                    (Prelude.Nothing) -> Data.Monoid.mempty
                    Prelude.Just
                      (ConfEvent'Conf v) -> (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                                              Data.Monoid.<>
                                              (((\ bs ->
                                                   (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                      (Prelude.fromIntegral
                                                         (Data.ByteString.length bs)))
                                                     Data.Monoid.<>
                                                     Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                                 Prelude.. Data.ProtoLens.encodeMessage)
                                                v
                    Prelude.Just
                      (ConfEvent'Reorg v) -> (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                                               Data.Monoid.<>
                                               (((\ bs ->
                                                    (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                       (Prelude.fromIntegral
                                                          (Data.ByteString.length bs)))
                                                      Data.Monoid.<>
                                                      Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                                  Prelude.. Data.ProtoLens.encodeMessage)
                                                 v)
                 Data.Monoid.<>
                 Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData ConfEvent where
        rnf
          = (\ x__ ->
               Control.DeepSeq.deepseq (_ConfEvent'_unknownFields x__)
                 (Control.DeepSeq.deepseq (_ConfEvent'event x__) (())))
instance Control.DeepSeq.NFData ConfEvent'Event where
        rnf (ConfEvent'Conf x__) = Control.DeepSeq.rnf x__
        rnf (ConfEvent'Reorg x__) = Control.DeepSeq.rnf x__
_ConfEvent'Conf ::
                Data.ProtoLens.Prism.Prism' ConfEvent'Event ConfDetails
_ConfEvent'Conf
  = Data.ProtoLens.Prism.prism' ConfEvent'Conf
      (\ p__ ->
         case p__ of
             ConfEvent'Conf p__val -> Prelude.Just p__val
             _otherwise -> Prelude.Nothing)
_ConfEvent'Reorg ::
                 Data.ProtoLens.Prism.Prism' ConfEvent'Event Reorg
_ConfEvent'Reorg
  = Data.ProtoLens.Prism.prism' ConfEvent'Reorg
      (\ p__ ->
         case p__ of
             ConfEvent'Reorg p__val -> Prelude.Just p__val
             _otherwise -> Prelude.Nothing)
{- | Fields :

    * 'Proto.Chainrpc.Chainnotifier_Fields.txid' @:: Lens' ConfRequest Data.ByteString.ByteString@
    * 'Proto.Chainrpc.Chainnotifier_Fields.script' @:: Lens' ConfRequest Data.ByteString.ByteString@
    * 'Proto.Chainrpc.Chainnotifier_Fields.numConfs' @:: Lens' ConfRequest Data.Word.Word32@
    * 'Proto.Chainrpc.Chainnotifier_Fields.heightHint' @:: Lens' ConfRequest Data.Word.Word32@
 -}
data ConfRequest = ConfRequest{_ConfRequest'txid ::
                               !Data.ByteString.ByteString,
                               _ConfRequest'script :: !Data.ByteString.ByteString,
                               _ConfRequest'numConfs :: !Data.Word.Word32,
                               _ConfRequest'heightHint :: !Data.Word.Word32,
                               _ConfRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
                     deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ConfRequest where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ConfRequest "txid"
           (Data.ByteString.ByteString)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _ConfRequest'txid
               (\ x__ y__ -> x__{_ConfRequest'txid = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Field.HasField ConfRequest "script"
           (Data.ByteString.ByteString)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _ConfRequest'script
               (\ x__ y__ -> x__{_ConfRequest'script = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Field.HasField ConfRequest "numConfs"
           (Data.Word.Word32)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _ConfRequest'numConfs
               (\ x__ y__ -> x__{_ConfRequest'numConfs = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Field.HasField ConfRequest "heightHint"
           (Data.Word.Word32)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _ConfRequest'heightHint
               (\ x__ y__ -> x__{_ConfRequest'heightHint = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Message ConfRequest where
        messageName _ = Data.Text.pack "chainrpc.ConfRequest"
        fieldsByTag
          = let txid__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "txid"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Data.ProtoLens.Field.field @"txid"))
                      :: Data.ProtoLens.FieldDescriptor ConfRequest
                script__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "script"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Data.ProtoLens.Field.field @"script"))
                      :: Data.ProtoLens.FieldDescriptor ConfRequest
                numConfs__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "num_confs"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Data.ProtoLens.Field.field @"numConfs"))
                      :: Data.ProtoLens.FieldDescriptor ConfRequest
                heightHint__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "height_hint"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Data.ProtoLens.Field.field @"heightHint"))
                      :: Data.ProtoLens.FieldDescriptor ConfRequest
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, txid__field_descriptor),
                 (Data.ProtoLens.Tag 2, script__field_descriptor),
                 (Data.ProtoLens.Tag 3, numConfs__field_descriptor),
                 (Data.ProtoLens.Tag 4, heightHint__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _ConfRequest'_unknownFields
              (\ x__ y__ -> x__{_ConfRequest'_unknownFields = y__})
        defMessage
          = ConfRequest{_ConfRequest'txid = Data.ProtoLens.fieldDefault,
                        _ConfRequest'script = Data.ProtoLens.fieldDefault,
                        _ConfRequest'numConfs = Data.ProtoLens.fieldDefault,
                        _ConfRequest'heightHint = Data.ProtoLens.fieldDefault,
                        _ConfRequest'_unknownFields = ([])}
        parseMessage
          = let loop ::
                     ConfRequest -> Data.ProtoLens.Encoding.Bytes.Parser ConfRequest
                loop x
                  = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
                       if end then
                         do let missing = [] in
                              if Prelude.null missing then Prelude.return () else
                                Prelude.fail
                                  (("Missing required fields: ") Prelude.++
                                     Prelude.show (missing :: ([Prelude.String])))
                            Prelude.return
                              (Lens.Family2.over Data.ProtoLens.unknownFields
                                 (\ !t -> Prelude.reverse t)
                                 x)
                         else
                         do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                            case tag of
                                10 -> do y <- (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                  Data.ProtoLens.Encoding.Bytes.getBytes
                                                    (Prelude.fromIntegral len))
                                                Data.ProtoLens.Encoding.Bytes.<?> "txid"
                                         loop
                                           (Lens.Family2.set (Data.ProtoLens.Field.field @"txid") y
                                              x)
                                18 -> do y <- (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                  Data.ProtoLens.Encoding.Bytes.getBytes
                                                    (Prelude.fromIntegral len))
                                                Data.ProtoLens.Encoding.Bytes.<?> "script"
                                         loop
                                           (Lens.Family2.set (Data.ProtoLens.Field.field @"script")
                                              y
                                              x)
                                24 -> do y <- (Prelude.fmap Prelude.fromIntegral
                                                 Data.ProtoLens.Encoding.Bytes.getVarInt)
                                                Data.ProtoLens.Encoding.Bytes.<?> "num_confs"
                                         loop
                                           (Lens.Family2.set
                                              (Data.ProtoLens.Field.field @"numConfs")
                                              y
                                              x)
                                32 -> do y <- (Prelude.fmap Prelude.fromIntegral
                                                 Data.ProtoLens.Encoding.Bytes.getVarInt)
                                                Data.ProtoLens.Encoding.Bytes.<?> "height_hint"
                                         loop
                                           (Lens.Family2.set
                                              (Data.ProtoLens.Field.field @"heightHint")
                                              y
                                              x)
                                wire -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                                   wire
                                           loop
                                             (Lens.Family2.over Data.ProtoLens.unknownFields
                                                (\ !t -> (:) y t)
                                                x)
              in
              (do loop Data.ProtoLens.defMessage)
                Data.ProtoLens.Encoding.Bytes.<?> "ConfRequest"
        buildMessage
          = (\ _x ->
               (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"txid") _x
                  in
                  if (_v) Prelude.== Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty else
                    (Data.ProtoLens.Encoding.Bytes.putVarInt 10) Data.Monoid.<>
                      (\ bs ->
                         (Data.ProtoLens.Encoding.Bytes.putVarInt
                            (Prelude.fromIntegral (Data.ByteString.length bs)))
                           Data.Monoid.<> Data.ProtoLens.Encoding.Bytes.putBytes bs)
                        _v)
                 Data.Monoid.<>
                 (let _v
                        = Lens.Family2.view (Data.ProtoLens.Field.field @"script") _x
                    in
                    if (_v) Prelude.== Data.ProtoLens.fieldDefault then
                      Data.Monoid.mempty else
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 18) Data.Monoid.<>
                        (\ bs ->
                           (Data.ProtoLens.Encoding.Bytes.putVarInt
                              (Prelude.fromIntegral (Data.ByteString.length bs)))
                             Data.Monoid.<> Data.ProtoLens.Encoding.Bytes.putBytes bs)
                          _v)
                   Data.Monoid.<>
                   (let _v
                          = Lens.Family2.view (Data.ProtoLens.Field.field @"numConfs") _x
                      in
                      if (_v) Prelude.== Data.ProtoLens.fieldDefault then
                        Data.Monoid.mempty else
                        (Data.ProtoLens.Encoding.Bytes.putVarInt 24) Data.Monoid.<>
                          ((Data.ProtoLens.Encoding.Bytes.putVarInt) Prelude..
                             Prelude.fromIntegral)
                            _v)
                     Data.Monoid.<>
                     (let _v
                            = Lens.Family2.view (Data.ProtoLens.Field.field @"heightHint") _x
                        in
                        if (_v) Prelude.== Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty else
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 32) Data.Monoid.<>
                            ((Data.ProtoLens.Encoding.Bytes.putVarInt) Prelude..
                               Prelude.fromIntegral)
                              _v)
                       Data.Monoid.<>
                       Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData ConfRequest where
        rnf
          = (\ x__ ->
               Control.DeepSeq.deepseq (_ConfRequest'_unknownFields x__)
                 (Control.DeepSeq.deepseq (_ConfRequest'txid x__)
                    (Control.DeepSeq.deepseq (_ConfRequest'script x__)
                       (Control.DeepSeq.deepseq (_ConfRequest'numConfs x__)
                          (Control.DeepSeq.deepseq (_ConfRequest'heightHint x__) (()))))))
{- | Fields :

    * 'Proto.Chainrpc.Chainnotifier_Fields.hash' @:: Lens' Outpoint Data.ByteString.ByteString@
    * 'Proto.Chainrpc.Chainnotifier_Fields.index' @:: Lens' Outpoint Data.Word.Word32@
 -}
data Outpoint = Outpoint{_Outpoint'hash ::
                         !Data.ByteString.ByteString,
                         _Outpoint'index :: !Data.Word.Word32,
                         _Outpoint'_unknownFields :: !Data.ProtoLens.FieldSet}
                  deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Outpoint where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Outpoint "hash"
           (Data.ByteString.ByteString)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _Outpoint'hash
               (\ x__ y__ -> x__{_Outpoint'hash = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Field.HasField Outpoint "index"
           (Data.Word.Word32)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _Outpoint'index
               (\ x__ y__ -> x__{_Outpoint'index = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Message Outpoint where
        messageName _ = Data.Text.pack "chainrpc.Outpoint"
        fieldsByTag
          = let hash__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "hash"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Data.ProtoLens.Field.field @"hash"))
                      :: Data.ProtoLens.FieldDescriptor Outpoint
                index__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "index"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Data.ProtoLens.Field.field @"index"))
                      :: Data.ProtoLens.FieldDescriptor Outpoint
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, hash__field_descriptor),
                 (Data.ProtoLens.Tag 2, index__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _Outpoint'_unknownFields
              (\ x__ y__ -> x__{_Outpoint'_unknownFields = y__})
        defMessage
          = Outpoint{_Outpoint'hash = Data.ProtoLens.fieldDefault,
                     _Outpoint'index = Data.ProtoLens.fieldDefault,
                     _Outpoint'_unknownFields = ([])}
        parseMessage
          = let loop ::
                     Outpoint -> Data.ProtoLens.Encoding.Bytes.Parser Outpoint
                loop x
                  = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
                       if end then
                         do let missing = [] in
                              if Prelude.null missing then Prelude.return () else
                                Prelude.fail
                                  (("Missing required fields: ") Prelude.++
                                     Prelude.show (missing :: ([Prelude.String])))
                            Prelude.return
                              (Lens.Family2.over Data.ProtoLens.unknownFields
                                 (\ !t -> Prelude.reverse t)
                                 x)
                         else
                         do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                            case tag of
                                10 -> do y <- (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                  Data.ProtoLens.Encoding.Bytes.getBytes
                                                    (Prelude.fromIntegral len))
                                                Data.ProtoLens.Encoding.Bytes.<?> "hash"
                                         loop
                                           (Lens.Family2.set (Data.ProtoLens.Field.field @"hash") y
                                              x)
                                16 -> do y <- (Prelude.fmap Prelude.fromIntegral
                                                 Data.ProtoLens.Encoding.Bytes.getVarInt)
                                                Data.ProtoLens.Encoding.Bytes.<?> "index"
                                         loop
                                           (Lens.Family2.set (Data.ProtoLens.Field.field @"index") y
                                              x)
                                wire -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                                   wire
                                           loop
                                             (Lens.Family2.over Data.ProtoLens.unknownFields
                                                (\ !t -> (:) y t)
                                                x)
              in
              (do loop Data.ProtoLens.defMessage)
                Data.ProtoLens.Encoding.Bytes.<?> "Outpoint"
        buildMessage
          = (\ _x ->
               (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"hash") _x
                  in
                  if (_v) Prelude.== Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty else
                    (Data.ProtoLens.Encoding.Bytes.putVarInt 10) Data.Monoid.<>
                      (\ bs ->
                         (Data.ProtoLens.Encoding.Bytes.putVarInt
                            (Prelude.fromIntegral (Data.ByteString.length bs)))
                           Data.Monoid.<> Data.ProtoLens.Encoding.Bytes.putBytes bs)
                        _v)
                 Data.Monoid.<>
                 (let _v
                        = Lens.Family2.view (Data.ProtoLens.Field.field @"index") _x
                    in
                    if (_v) Prelude.== Data.ProtoLens.fieldDefault then
                      Data.Monoid.mempty else
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 16) Data.Monoid.<>
                        ((Data.ProtoLens.Encoding.Bytes.putVarInt) Prelude..
                           Prelude.fromIntegral)
                          _v)
                   Data.Monoid.<>
                   Data.ProtoLens.Encoding.Wire.buildFieldSet
                     (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData Outpoint where
        rnf
          = (\ x__ ->
               Control.DeepSeq.deepseq (_Outpoint'_unknownFields x__)
                 (Control.DeepSeq.deepseq (_Outpoint'hash x__)
                    (Control.DeepSeq.deepseq (_Outpoint'index x__) (()))))
{- | Fields :

 -}
data Reorg = Reorg{_Reorg'_unknownFields ::
                   !Data.ProtoLens.FieldSet}
               deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Reorg where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message Reorg where
        messageName _ = Data.Text.pack "chainrpc.Reorg"
        fieldsByTag = let in Data.Map.fromList []
        unknownFields
          = Lens.Family2.Unchecked.lens _Reorg'_unknownFields
              (\ x__ y__ -> x__{_Reorg'_unknownFields = y__})
        defMessage = Reorg{_Reorg'_unknownFields = ([])}
        parseMessage
          = let loop :: Reorg -> Data.ProtoLens.Encoding.Bytes.Parser Reorg
                loop x
                  = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
                       if end then
                         do let missing = [] in
                              if Prelude.null missing then Prelude.return () else
                                Prelude.fail
                                  (("Missing required fields: ") Prelude.++
                                     Prelude.show (missing :: ([Prelude.String])))
                            Prelude.return
                              (Lens.Family2.over Data.ProtoLens.unknownFields
                                 (\ !t -> Prelude.reverse t)
                                 x)
                         else
                         do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                            case tag of
                                wire -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                                   wire
                                           loop
                                             (Lens.Family2.over Data.ProtoLens.unknownFields
                                                (\ !t -> (:) y t)
                                                x)
              in
              (do loop Data.ProtoLens.defMessage)
                Data.ProtoLens.Encoding.Bytes.<?> "Reorg"
        buildMessage
          = (\ _x ->
               Data.ProtoLens.Encoding.Wire.buildFieldSet
                 (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData Reorg where
        rnf
          = (\ x__ ->
               Control.DeepSeq.deepseq (_Reorg'_unknownFields x__) (()))
{- | Fields :

    * 'Proto.Chainrpc.Chainnotifier_Fields.spendingOutpoint' @:: Lens' SpendDetails Outpoint@
    * 'Proto.Chainrpc.Chainnotifier_Fields.maybe'spendingOutpoint' @:: Lens' SpendDetails (Prelude.Maybe Outpoint)@
    * 'Proto.Chainrpc.Chainnotifier_Fields.rawSpendingTx' @:: Lens' SpendDetails Data.ByteString.ByteString@
    * 'Proto.Chainrpc.Chainnotifier_Fields.spendingTxHash' @:: Lens' SpendDetails Data.ByteString.ByteString@
    * 'Proto.Chainrpc.Chainnotifier_Fields.spendingInputIndex' @:: Lens' SpendDetails Data.Word.Word32@
    * 'Proto.Chainrpc.Chainnotifier_Fields.spendingHeight' @:: Lens' SpendDetails Data.Word.Word32@
 -}
data SpendDetails = SpendDetails{_SpendDetails'spendingOutpoint ::
                                 !(Prelude.Maybe Outpoint),
                                 _SpendDetails'rawSpendingTx :: !Data.ByteString.ByteString,
                                 _SpendDetails'spendingTxHash :: !Data.ByteString.ByteString,
                                 _SpendDetails'spendingInputIndex :: !Data.Word.Word32,
                                 _SpendDetails'spendingHeight :: !Data.Word.Word32,
                                 _SpendDetails'_unknownFields :: !Data.ProtoLens.FieldSet}
                      deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show SpendDetails where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField SpendDetails
           "spendingOutpoint"
           (Outpoint)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _SpendDetails'spendingOutpoint
               (\ x__ y__ -> x__{_SpendDetails'spendingOutpoint = y__}))
              Prelude.. Data.ProtoLens.maybeLens Data.ProtoLens.defMessage
instance Data.ProtoLens.Field.HasField SpendDetails
           "maybe'spendingOutpoint"
           (Prelude.Maybe Outpoint)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _SpendDetails'spendingOutpoint
               (\ x__ y__ -> x__{_SpendDetails'spendingOutpoint = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Field.HasField SpendDetails "rawSpendingTx"
           (Data.ByteString.ByteString)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _SpendDetails'rawSpendingTx
               (\ x__ y__ -> x__{_SpendDetails'rawSpendingTx = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Field.HasField SpendDetails
           "spendingTxHash"
           (Data.ByteString.ByteString)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _SpendDetails'spendingTxHash
               (\ x__ y__ -> x__{_SpendDetails'spendingTxHash = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Field.HasField SpendDetails
           "spendingInputIndex"
           (Data.Word.Word32)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _SpendDetails'spendingInputIndex
               (\ x__ y__ -> x__{_SpendDetails'spendingInputIndex = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Field.HasField SpendDetails
           "spendingHeight"
           (Data.Word.Word32)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _SpendDetails'spendingHeight
               (\ x__ y__ -> x__{_SpendDetails'spendingHeight = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Message SpendDetails where
        messageName _ = Data.Text.pack "chainrpc.SpendDetails"
        fieldsByTag
          = let spendingOutpoint__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "spending_outpoint"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor Outpoint)
                      (Data.ProtoLens.OptionalField
                         (Data.ProtoLens.Field.field @"maybe'spendingOutpoint"))
                      :: Data.ProtoLens.FieldDescriptor SpendDetails
                rawSpendingTx__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "raw_spending_tx"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Data.ProtoLens.Field.field @"rawSpendingTx"))
                      :: Data.ProtoLens.FieldDescriptor SpendDetails
                spendingTxHash__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "spending_tx_hash"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Data.ProtoLens.Field.field @"spendingTxHash"))
                      :: Data.ProtoLens.FieldDescriptor SpendDetails
                spendingInputIndex__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "spending_input_index"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Data.ProtoLens.Field.field @"spendingInputIndex"))
                      :: Data.ProtoLens.FieldDescriptor SpendDetails
                spendingHeight__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "spending_height"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Data.ProtoLens.Field.field @"spendingHeight"))
                      :: Data.ProtoLens.FieldDescriptor SpendDetails
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, spendingOutpoint__field_descriptor),
                 (Data.ProtoLens.Tag 2, rawSpendingTx__field_descriptor),
                 (Data.ProtoLens.Tag 3, spendingTxHash__field_descriptor),
                 (Data.ProtoLens.Tag 4, spendingInputIndex__field_descriptor),
                 (Data.ProtoLens.Tag 5, spendingHeight__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _SpendDetails'_unknownFields
              (\ x__ y__ -> x__{_SpendDetails'_unknownFields = y__})
        defMessage
          = SpendDetails{_SpendDetails'spendingOutpoint = Prelude.Nothing,
                         _SpendDetails'rawSpendingTx = Data.ProtoLens.fieldDefault,
                         _SpendDetails'spendingTxHash = Data.ProtoLens.fieldDefault,
                         _SpendDetails'spendingInputIndex = Data.ProtoLens.fieldDefault,
                         _SpendDetails'spendingHeight = Data.ProtoLens.fieldDefault,
                         _SpendDetails'_unknownFields = ([])}
        parseMessage
          = let loop ::
                     SpendDetails -> Data.ProtoLens.Encoding.Bytes.Parser SpendDetails
                loop x
                  = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
                       if end then
                         do let missing = [] in
                              if Prelude.null missing then Prelude.return () else
                                Prelude.fail
                                  (("Missing required fields: ") Prelude.++
                                     Prelude.show (missing :: ([Prelude.String])))
                            Prelude.return
                              (Lens.Family2.over Data.ProtoLens.unknownFields
                                 (\ !t -> Prelude.reverse t)
                                 x)
                         else
                         do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                            case tag of
                                10 -> do y <- (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                  Data.ProtoLens.Encoding.Bytes.isolate
                                                    (Prelude.fromIntegral len)
                                                    Data.ProtoLens.parseMessage)
                                                Data.ProtoLens.Encoding.Bytes.<?>
                                                "spending_outpoint"
                                         loop
                                           (Lens.Family2.set
                                              (Data.ProtoLens.Field.field @"spendingOutpoint")
                                              y
                                              x)
                                18 -> do y <- (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                  Data.ProtoLens.Encoding.Bytes.getBytes
                                                    (Prelude.fromIntegral len))
                                                Data.ProtoLens.Encoding.Bytes.<?> "raw_spending_tx"
                                         loop
                                           (Lens.Family2.set
                                              (Data.ProtoLens.Field.field @"rawSpendingTx")
                                              y
                                              x)
                                26 -> do y <- (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                  Data.ProtoLens.Encoding.Bytes.getBytes
                                                    (Prelude.fromIntegral len))
                                                Data.ProtoLens.Encoding.Bytes.<?> "spending_tx_hash"
                                         loop
                                           (Lens.Family2.set
                                              (Data.ProtoLens.Field.field @"spendingTxHash")
                                              y
                                              x)
                                32 -> do y <- (Prelude.fmap Prelude.fromIntegral
                                                 Data.ProtoLens.Encoding.Bytes.getVarInt)
                                                Data.ProtoLens.Encoding.Bytes.<?>
                                                "spending_input_index"
                                         loop
                                           (Lens.Family2.set
                                              (Data.ProtoLens.Field.field @"spendingInputIndex")
                                              y
                                              x)
                                40 -> do y <- (Prelude.fmap Prelude.fromIntegral
                                                 Data.ProtoLens.Encoding.Bytes.getVarInt)
                                                Data.ProtoLens.Encoding.Bytes.<?> "spending_height"
                                         loop
                                           (Lens.Family2.set
                                              (Data.ProtoLens.Field.field @"spendingHeight")
                                              y
                                              x)
                                wire -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                                   wire
                                           loop
                                             (Lens.Family2.over Data.ProtoLens.unknownFields
                                                (\ !t -> (:) y t)
                                                x)
              in
              (do loop Data.ProtoLens.defMessage)
                Data.ProtoLens.Encoding.Bytes.<?> "SpendDetails"
        buildMessage
          = (\ _x ->
               (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'spendingOutpoint")
                    _x
                  of
                    (Prelude.Nothing) -> Data.Monoid.mempty
                    Prelude.Just _v -> (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                                         Data.Monoid.<>
                                         (((\ bs ->
                                              (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                 (Prelude.fromIntegral (Data.ByteString.length bs)))
                                                Data.Monoid.<>
                                                Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                            Prelude.. Data.ProtoLens.encodeMessage)
                                           _v)
                 Data.Monoid.<>
                 (let _v
                        = Lens.Family2.view (Data.ProtoLens.Field.field @"rawSpendingTx")
                            _x
                    in
                    if (_v) Prelude.== Data.ProtoLens.fieldDefault then
                      Data.Monoid.mempty else
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 18) Data.Monoid.<>
                        (\ bs ->
                           (Data.ProtoLens.Encoding.Bytes.putVarInt
                              (Prelude.fromIntegral (Data.ByteString.length bs)))
                             Data.Monoid.<> Data.ProtoLens.Encoding.Bytes.putBytes bs)
                          _v)
                   Data.Monoid.<>
                   (let _v
                          = Lens.Family2.view (Data.ProtoLens.Field.field @"spendingTxHash")
                              _x
                      in
                      if (_v) Prelude.== Data.ProtoLens.fieldDefault then
                        Data.Monoid.mempty else
                        (Data.ProtoLens.Encoding.Bytes.putVarInt 26) Data.Monoid.<>
                          (\ bs ->
                             (Data.ProtoLens.Encoding.Bytes.putVarInt
                                (Prelude.fromIntegral (Data.ByteString.length bs)))
                               Data.Monoid.<> Data.ProtoLens.Encoding.Bytes.putBytes bs)
                            _v)
                     Data.Monoid.<>
                     (let _v
                            = Lens.Family2.view
                                (Data.ProtoLens.Field.field @"spendingInputIndex")
                                _x
                        in
                        if (_v) Prelude.== Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty else
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 32) Data.Monoid.<>
                            ((Data.ProtoLens.Encoding.Bytes.putVarInt) Prelude..
                               Prelude.fromIntegral)
                              _v)
                       Data.Monoid.<>
                       (let _v
                              = Lens.Family2.view (Data.ProtoLens.Field.field @"spendingHeight")
                                  _x
                          in
                          if (_v) Prelude.== Data.ProtoLens.fieldDefault then
                            Data.Monoid.mempty else
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 40) Data.Monoid.<>
                              ((Data.ProtoLens.Encoding.Bytes.putVarInt) Prelude..
                                 Prelude.fromIntegral)
                                _v)
                         Data.Monoid.<>
                         Data.ProtoLens.Encoding.Wire.buildFieldSet
                           (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData SpendDetails where
        rnf
          = (\ x__ ->
               Control.DeepSeq.deepseq (_SpendDetails'_unknownFields x__)
                 (Control.DeepSeq.deepseq (_SpendDetails'spendingOutpoint x__)
                    (Control.DeepSeq.deepseq (_SpendDetails'rawSpendingTx x__)
                       (Control.DeepSeq.deepseq (_SpendDetails'spendingTxHash x__)
                          (Control.DeepSeq.deepseq (_SpendDetails'spendingInputIndex x__)
                             (Control.DeepSeq.deepseq (_SpendDetails'spendingHeight x__)
                                (())))))))
{- | Fields :

    * 'Proto.Chainrpc.Chainnotifier_Fields.maybe'event' @:: Lens' SpendEvent (Prelude.Maybe SpendEvent'Event)@
    * 'Proto.Chainrpc.Chainnotifier_Fields.maybe'spend' @:: Lens' SpendEvent (Prelude.Maybe SpendDetails)@
    * 'Proto.Chainrpc.Chainnotifier_Fields.spend' @:: Lens' SpendEvent SpendDetails@
    * 'Proto.Chainrpc.Chainnotifier_Fields.maybe'reorg' @:: Lens' SpendEvent (Prelude.Maybe Reorg)@
    * 'Proto.Chainrpc.Chainnotifier_Fields.reorg' @:: Lens' SpendEvent Reorg@
 -}
data SpendEvent = SpendEvent{_SpendEvent'event ::
                             !(Prelude.Maybe SpendEvent'Event),
                             _SpendEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
                    deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show SpendEvent where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
data SpendEvent'Event = SpendEvent'Spend !SpendDetails
                      | SpendEvent'Reorg !Reorg
                          deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField SpendEvent "maybe'event"
           (Prelude.Maybe SpendEvent'Event)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _SpendEvent'event
               (\ x__ y__ -> x__{_SpendEvent'event = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Field.HasField SpendEvent "maybe'spend"
           (Prelude.Maybe SpendDetails)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _SpendEvent'event
               (\ x__ y__ -> x__{_SpendEvent'event = y__}))
              Prelude..
              Lens.Family2.Unchecked.lens
                (\ x__ ->
                   case x__ of
                       Prelude.Just (SpendEvent'Spend x__val) -> Prelude.Just x__val
                       _otherwise -> Prelude.Nothing)
                (\ _ y__ -> Prelude.fmap SpendEvent'Spend y__)
instance Data.ProtoLens.Field.HasField SpendEvent "spend"
           (SpendDetails)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _SpendEvent'event
               (\ x__ y__ -> x__{_SpendEvent'event = y__}))
              Prelude..
              (Lens.Family2.Unchecked.lens
                 (\ x__ ->
                    case x__ of
                        Prelude.Just (SpendEvent'Spend x__val) -> Prelude.Just x__val
                        _otherwise -> Prelude.Nothing)
                 (\ _ y__ -> Prelude.fmap SpendEvent'Spend y__))
                Prelude.. Data.ProtoLens.maybeLens Data.ProtoLens.defMessage
instance Data.ProtoLens.Field.HasField SpendEvent "maybe'reorg"
           (Prelude.Maybe Reorg)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _SpendEvent'event
               (\ x__ y__ -> x__{_SpendEvent'event = y__}))
              Prelude..
              Lens.Family2.Unchecked.lens
                (\ x__ ->
                   case x__ of
                       Prelude.Just (SpendEvent'Reorg x__val) -> Prelude.Just x__val
                       _otherwise -> Prelude.Nothing)
                (\ _ y__ -> Prelude.fmap SpendEvent'Reorg y__)
instance Data.ProtoLens.Field.HasField SpendEvent "reorg" (Reorg)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _SpendEvent'event
               (\ x__ y__ -> x__{_SpendEvent'event = y__}))
              Prelude..
              (Lens.Family2.Unchecked.lens
                 (\ x__ ->
                    case x__ of
                        Prelude.Just (SpendEvent'Reorg x__val) -> Prelude.Just x__val
                        _otherwise -> Prelude.Nothing)
                 (\ _ y__ -> Prelude.fmap SpendEvent'Reorg y__))
                Prelude.. Data.ProtoLens.maybeLens Data.ProtoLens.defMessage
instance Data.ProtoLens.Message SpendEvent where
        messageName _ = Data.Text.pack "chainrpc.SpendEvent"
        fieldsByTag
          = let spend__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "spend"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor SpendDetails)
                      (Data.ProtoLens.OptionalField
                         (Data.ProtoLens.Field.field @"maybe'spend"))
                      :: Data.ProtoLens.FieldDescriptor SpendEvent
                reorg__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "reorg"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor Reorg)
                      (Data.ProtoLens.OptionalField
                         (Data.ProtoLens.Field.field @"maybe'reorg"))
                      :: Data.ProtoLens.FieldDescriptor SpendEvent
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, spend__field_descriptor),
                 (Data.ProtoLens.Tag 2, reorg__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _SpendEvent'_unknownFields
              (\ x__ y__ -> x__{_SpendEvent'_unknownFields = y__})
        defMessage
          = SpendEvent{_SpendEvent'event = Prelude.Nothing,
                       _SpendEvent'_unknownFields = ([])}
        parseMessage
          = let loop ::
                     SpendEvent -> Data.ProtoLens.Encoding.Bytes.Parser SpendEvent
                loop x
                  = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
                       if end then
                         do let missing = [] in
                              if Prelude.null missing then Prelude.return () else
                                Prelude.fail
                                  (("Missing required fields: ") Prelude.++
                                     Prelude.show (missing :: ([Prelude.String])))
                            Prelude.return
                              (Lens.Family2.over Data.ProtoLens.unknownFields
                                 (\ !t -> Prelude.reverse t)
                                 x)
                         else
                         do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                            case tag of
                                10 -> do y <- (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                  Data.ProtoLens.Encoding.Bytes.isolate
                                                    (Prelude.fromIntegral len)
                                                    Data.ProtoLens.parseMessage)
                                                Data.ProtoLens.Encoding.Bytes.<?> "spend"
                                         loop
                                           (Lens.Family2.set (Data.ProtoLens.Field.field @"spend") y
                                              x)
                                18 -> do y <- (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                  Data.ProtoLens.Encoding.Bytes.isolate
                                                    (Prelude.fromIntegral len)
                                                    Data.ProtoLens.parseMessage)
                                                Data.ProtoLens.Encoding.Bytes.<?> "reorg"
                                         loop
                                           (Lens.Family2.set (Data.ProtoLens.Field.field @"reorg") y
                                              x)
                                wire -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                                   wire
                                           loop
                                             (Lens.Family2.over Data.ProtoLens.unknownFields
                                                (\ !t -> (:) y t)
                                                x)
              in
              (do loop Data.ProtoLens.defMessage)
                Data.ProtoLens.Encoding.Bytes.<?> "SpendEvent"
        buildMessage
          = (\ _x ->
               (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'event") _x of
                    (Prelude.Nothing) -> Data.Monoid.mempty
                    Prelude.Just
                      (SpendEvent'Spend v) -> (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                 10)
                                                Data.Monoid.<>
                                                (((\ bs ->
                                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                        (Prelude.fromIntegral
                                                           (Data.ByteString.length bs)))
                                                       Data.Monoid.<>
                                                       Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                                   Prelude.. Data.ProtoLens.encodeMessage)
                                                  v
                    Prelude.Just
                      (SpendEvent'Reorg v) -> (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                 18)
                                                Data.Monoid.<>
                                                (((\ bs ->
                                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                        (Prelude.fromIntegral
                                                           (Data.ByteString.length bs)))
                                                       Data.Monoid.<>
                                                       Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                                   Prelude.. Data.ProtoLens.encodeMessage)
                                                  v)
                 Data.Monoid.<>
                 Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData SpendEvent where
        rnf
          = (\ x__ ->
               Control.DeepSeq.deepseq (_SpendEvent'_unknownFields x__)
                 (Control.DeepSeq.deepseq (_SpendEvent'event x__) (())))
instance Control.DeepSeq.NFData SpendEvent'Event where
        rnf (SpendEvent'Spend x__) = Control.DeepSeq.rnf x__
        rnf (SpendEvent'Reorg x__) = Control.DeepSeq.rnf x__
_SpendEvent'Spend ::
                  Data.ProtoLens.Prism.Prism' SpendEvent'Event SpendDetails
_SpendEvent'Spend
  = Data.ProtoLens.Prism.prism' SpendEvent'Spend
      (\ p__ ->
         case p__ of
             SpendEvent'Spend p__val -> Prelude.Just p__val
             _otherwise -> Prelude.Nothing)
_SpendEvent'Reorg ::
                  Data.ProtoLens.Prism.Prism' SpendEvent'Event Reorg
_SpendEvent'Reorg
  = Data.ProtoLens.Prism.prism' SpendEvent'Reorg
      (\ p__ ->
         case p__ of
             SpendEvent'Reorg p__val -> Prelude.Just p__val
             _otherwise -> Prelude.Nothing)
{- | Fields :

    * 'Proto.Chainrpc.Chainnotifier_Fields.outpoint' @:: Lens' SpendRequest Outpoint@
    * 'Proto.Chainrpc.Chainnotifier_Fields.maybe'outpoint' @:: Lens' SpendRequest (Prelude.Maybe Outpoint)@
    * 'Proto.Chainrpc.Chainnotifier_Fields.script' @:: Lens' SpendRequest Data.ByteString.ByteString@
    * 'Proto.Chainrpc.Chainnotifier_Fields.heightHint' @:: Lens' SpendRequest Data.Word.Word32@
 -}
data SpendRequest = SpendRequest{_SpendRequest'outpoint ::
                                 !(Prelude.Maybe Outpoint),
                                 _SpendRequest'script :: !Data.ByteString.ByteString,
                                 _SpendRequest'heightHint :: !Data.Word.Word32,
                                 _SpendRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
                      deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show SpendRequest where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField SpendRequest "outpoint"
           (Outpoint)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _SpendRequest'outpoint
               (\ x__ y__ -> x__{_SpendRequest'outpoint = y__}))
              Prelude.. Data.ProtoLens.maybeLens Data.ProtoLens.defMessage
instance Data.ProtoLens.Field.HasField SpendRequest
           "maybe'outpoint"
           (Prelude.Maybe Outpoint)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _SpendRequest'outpoint
               (\ x__ y__ -> x__{_SpendRequest'outpoint = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Field.HasField SpendRequest "script"
           (Data.ByteString.ByteString)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _SpendRequest'script
               (\ x__ y__ -> x__{_SpendRequest'script = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Field.HasField SpendRequest "heightHint"
           (Data.Word.Word32)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _SpendRequest'heightHint
               (\ x__ y__ -> x__{_SpendRequest'heightHint = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Message SpendRequest where
        messageName _ = Data.Text.pack "chainrpc.SpendRequest"
        fieldsByTag
          = let outpoint__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "outpoint"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor Outpoint)
                      (Data.ProtoLens.OptionalField
                         (Data.ProtoLens.Field.field @"maybe'outpoint"))
                      :: Data.ProtoLens.FieldDescriptor SpendRequest
                script__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "script"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Data.ProtoLens.Field.field @"script"))
                      :: Data.ProtoLens.FieldDescriptor SpendRequest
                heightHint__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "height_hint"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Data.ProtoLens.Field.field @"heightHint"))
                      :: Data.ProtoLens.FieldDescriptor SpendRequest
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, outpoint__field_descriptor),
                 (Data.ProtoLens.Tag 2, script__field_descriptor),
                 (Data.ProtoLens.Tag 3, heightHint__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _SpendRequest'_unknownFields
              (\ x__ y__ -> x__{_SpendRequest'_unknownFields = y__})
        defMessage
          = SpendRequest{_SpendRequest'outpoint = Prelude.Nothing,
                         _SpendRequest'script = Data.ProtoLens.fieldDefault,
                         _SpendRequest'heightHint = Data.ProtoLens.fieldDefault,
                         _SpendRequest'_unknownFields = ([])}
        parseMessage
          = let loop ::
                     SpendRequest -> Data.ProtoLens.Encoding.Bytes.Parser SpendRequest
                loop x
                  = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
                       if end then
                         do let missing = [] in
                              if Prelude.null missing then Prelude.return () else
                                Prelude.fail
                                  (("Missing required fields: ") Prelude.++
                                     Prelude.show (missing :: ([Prelude.String])))
                            Prelude.return
                              (Lens.Family2.over Data.ProtoLens.unknownFields
                                 (\ !t -> Prelude.reverse t)
                                 x)
                         else
                         do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                            case tag of
                                10 -> do y <- (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                  Data.ProtoLens.Encoding.Bytes.isolate
                                                    (Prelude.fromIntegral len)
                                                    Data.ProtoLens.parseMessage)
                                                Data.ProtoLens.Encoding.Bytes.<?> "outpoint"
                                         loop
                                           (Lens.Family2.set
                                              (Data.ProtoLens.Field.field @"outpoint")
                                              y
                                              x)
                                18 -> do y <- (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                  Data.ProtoLens.Encoding.Bytes.getBytes
                                                    (Prelude.fromIntegral len))
                                                Data.ProtoLens.Encoding.Bytes.<?> "script"
                                         loop
                                           (Lens.Family2.set (Data.ProtoLens.Field.field @"script")
                                              y
                                              x)
                                24 -> do y <- (Prelude.fmap Prelude.fromIntegral
                                                 Data.ProtoLens.Encoding.Bytes.getVarInt)
                                                Data.ProtoLens.Encoding.Bytes.<?> "height_hint"
                                         loop
                                           (Lens.Family2.set
                                              (Data.ProtoLens.Field.field @"heightHint")
                                              y
                                              x)
                                wire -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                                   wire
                                           loop
                                             (Lens.Family2.over Data.ProtoLens.unknownFields
                                                (\ !t -> (:) y t)
                                                x)
              in
              (do loop Data.ProtoLens.defMessage)
                Data.ProtoLens.Encoding.Bytes.<?> "SpendRequest"
        buildMessage
          = (\ _x ->
               (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'outpoint") _x
                  of
                    (Prelude.Nothing) -> Data.Monoid.mempty
                    Prelude.Just _v -> (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                                         Data.Monoid.<>
                                         (((\ bs ->
                                              (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                 (Prelude.fromIntegral (Data.ByteString.length bs)))
                                                Data.Monoid.<>
                                                Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                            Prelude.. Data.ProtoLens.encodeMessage)
                                           _v)
                 Data.Monoid.<>
                 (let _v
                        = Lens.Family2.view (Data.ProtoLens.Field.field @"script") _x
                    in
                    if (_v) Prelude.== Data.ProtoLens.fieldDefault then
                      Data.Monoid.mempty else
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 18) Data.Monoid.<>
                        (\ bs ->
                           (Data.ProtoLens.Encoding.Bytes.putVarInt
                              (Prelude.fromIntegral (Data.ByteString.length bs)))
                             Data.Monoid.<> Data.ProtoLens.Encoding.Bytes.putBytes bs)
                          _v)
                   Data.Monoid.<>
                   (let _v
                          = Lens.Family2.view (Data.ProtoLens.Field.field @"heightHint") _x
                      in
                      if (_v) Prelude.== Data.ProtoLens.fieldDefault then
                        Data.Monoid.mempty else
                        (Data.ProtoLens.Encoding.Bytes.putVarInt 24) Data.Monoid.<>
                          ((Data.ProtoLens.Encoding.Bytes.putVarInt) Prelude..
                             Prelude.fromIntegral)
                            _v)
                     Data.Monoid.<>
                     Data.ProtoLens.Encoding.Wire.buildFieldSet
                       (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData SpendRequest where
        rnf
          = (\ x__ ->
               Control.DeepSeq.deepseq (_SpendRequest'_unknownFields x__)
                 (Control.DeepSeq.deepseq (_SpendRequest'outpoint x__)
                    (Control.DeepSeq.deepseq (_SpendRequest'script x__)
                       (Control.DeepSeq.deepseq (_SpendRequest'heightHint x__) (())))))
data ChainNotifier = ChainNotifier{}
                       deriving ()
instance Data.ProtoLens.Service.Types.Service ChainNotifier where
        type ServiceName ChainNotifier = "ChainNotifier"
        type ServicePackage ChainNotifier = "chainrpc"
        type ServiceMethods ChainNotifier =
             '["registerBlockEpochNtfn", "registerConfirmationsNtfn",
               "registerSpendNtfn"]
instance Data.ProtoLens.Service.Types.HasMethodImpl ChainNotifier
           "registerConfirmationsNtfn"
         where
        type MethodName ChainNotifier "registerConfirmationsNtfn" =
             "RegisterConfirmationsNtfn"
        type MethodInput ChainNotifier "registerConfirmationsNtfn" =
             ConfRequest
        type MethodOutput ChainNotifier "registerConfirmationsNtfn" =
             ConfEvent
        type MethodStreamingType ChainNotifier "registerConfirmationsNtfn"
             = 'Data.ProtoLens.Service.Types.ServerStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl ChainNotifier
           "registerSpendNtfn"
         where
        type MethodName ChainNotifier "registerSpendNtfn" =
             "RegisterSpendNtfn"
        type MethodInput ChainNotifier "registerSpendNtfn" = SpendRequest
        type MethodOutput ChainNotifier "registerSpendNtfn" = SpendEvent
        type MethodStreamingType ChainNotifier "registerSpendNtfn" =
             'Data.ProtoLens.Service.Types.ServerStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl ChainNotifier
           "registerBlockEpochNtfn"
         where
        type MethodName ChainNotifier "registerBlockEpochNtfn" =
             "RegisterBlockEpochNtfn"
        type MethodInput ChainNotifier "registerBlockEpochNtfn" =
             BlockEpoch
        type MethodOutput ChainNotifier "registerBlockEpochNtfn" =
             BlockEpoch
        type MethodStreamingType ChainNotifier "registerBlockEpochNtfn" =
             'Data.ProtoLens.Service.Types.ServerStreaming