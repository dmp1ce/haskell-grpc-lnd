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
module Proto.Walletrpc.Walletkit
       (WalletKit(..), AddrRequest(), AddrResponse(),
        EstimateFeeRequest(), EstimateFeeResponse(), KeyReq(),
        PublishResponse(), SendOutputsRequest(), SendOutputsResponse(),
        Transaction())
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
import qualified Proto.Signrpc.Signer

{- | Fields :

 -}
data AddrRequest = AddrRequest{_AddrRequest'_unknownFields ::
                               !Data.ProtoLens.FieldSet}
                     deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show AddrRequest where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message AddrRequest where
        messageName _ = Data.Text.pack "walletrpc.AddrRequest"
        fieldsByTag = let in Data.Map.fromList []
        unknownFields
          = Lens.Family2.Unchecked.lens _AddrRequest'_unknownFields
              (\ x__ y__ -> x__{_AddrRequest'_unknownFields = y__})
        defMessage = AddrRequest{_AddrRequest'_unknownFields = ([])}
        parseMessage
          = let loop ::
                     AddrRequest -> Data.ProtoLens.Encoding.Bytes.Parser AddrRequest
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
                Data.ProtoLens.Encoding.Bytes.<?> "AddrRequest"
        buildMessage
          = (\ _x ->
               Data.ProtoLens.Encoding.Wire.buildFieldSet
                 (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData AddrRequest where
        rnf
          = (\ x__ ->
               Control.DeepSeq.deepseq (_AddrRequest'_unknownFields x__) (()))
{- | Fields :

    * 'Proto.Walletrpc.Walletkit_Fields.addr' @:: Lens' AddrResponse Data.Text.Text@
 -}
data AddrResponse = AddrResponse{_AddrResponse'addr ::
                                 !Data.Text.Text,
                                 _AddrResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
                      deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show AddrResponse where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField AddrResponse "addr"
           (Data.Text.Text)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _AddrResponse'addr
               (\ x__ y__ -> x__{_AddrResponse'addr = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Message AddrResponse where
        messageName _ = Data.Text.pack "walletrpc.AddrResponse"
        fieldsByTag
          = let addr__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "addr"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Data.ProtoLens.Field.field @"addr"))
                      :: Data.ProtoLens.FieldDescriptor AddrResponse
              in
              Data.Map.fromList [(Data.ProtoLens.Tag 1, addr__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _AddrResponse'_unknownFields
              (\ x__ y__ -> x__{_AddrResponse'_unknownFields = y__})
        defMessage
          = AddrResponse{_AddrResponse'addr = Data.ProtoLens.fieldDefault,
                         _AddrResponse'_unknownFields = ([])}
        parseMessage
          = let loop ::
                     AddrResponse -> Data.ProtoLens.Encoding.Bytes.Parser AddrResponse
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
                                10 -> do y <- (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                              Data.ProtoLens.Encoding.Bytes.getBytes
                                                                (Prelude.fromIntegral len)
                                                  Data.ProtoLens.Encoding.Bytes.runEither
                                                    (case Data.Text.Encoding.decodeUtf8' value of
                                                         Prelude.Left err -> Prelude.Left
                                                                               (Prelude.show err)
                                                         Prelude.Right r -> Prelude.Right r))
                                                Data.ProtoLens.Encoding.Bytes.<?> "addr"
                                         loop
                                           (Lens.Family2.set (Data.ProtoLens.Field.field @"addr") y
                                              x)
                                wire -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                                   wire
                                           loop
                                             (Lens.Family2.over Data.ProtoLens.unknownFields
                                                (\ !t -> (:) y t)
                                                x)
              in
              (do loop Data.ProtoLens.defMessage)
                Data.ProtoLens.Encoding.Bytes.<?> "AddrResponse"
        buildMessage
          = (\ _x ->
               (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"addr") _x
                  in
                  if (_v) Prelude.== Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty else
                    (Data.ProtoLens.Encoding.Bytes.putVarInt 10) Data.Monoid.<>
                      (((\ bs ->
                           (Data.ProtoLens.Encoding.Bytes.putVarInt
                              (Prelude.fromIntegral (Data.ByteString.length bs)))
                             Data.Monoid.<> Data.ProtoLens.Encoding.Bytes.putBytes bs))
                         Prelude.. Data.Text.Encoding.encodeUtf8)
                        _v)
                 Data.Monoid.<>
                 Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData AddrResponse where
        rnf
          = (\ x__ ->
               Control.DeepSeq.deepseq (_AddrResponse'_unknownFields x__)
                 (Control.DeepSeq.deepseq (_AddrResponse'addr x__) (())))
{- | Fields :

    * 'Proto.Walletrpc.Walletkit_Fields.confTarget' @:: Lens' EstimateFeeRequest Data.Int.Int32@
 -}
data EstimateFeeRequest = EstimateFeeRequest{_EstimateFeeRequest'confTarget
                                             :: !Data.Int.Int32,
                                             _EstimateFeeRequest'_unknownFields ::
                                             !Data.ProtoLens.FieldSet}
                            deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show EstimateFeeRequest where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField EstimateFeeRequest
           "confTarget"
           (Data.Int.Int32)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _EstimateFeeRequest'confTarget
               (\ x__ y__ -> x__{_EstimateFeeRequest'confTarget = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Message EstimateFeeRequest where
        messageName _ = Data.Text.pack "walletrpc.EstimateFeeRequest"
        fieldsByTag
          = let confTarget__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "conf_target"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Data.ProtoLens.Field.field @"confTarget"))
                      :: Data.ProtoLens.FieldDescriptor EstimateFeeRequest
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, confTarget__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _EstimateFeeRequest'_unknownFields
              (\ x__ y__ -> x__{_EstimateFeeRequest'_unknownFields = y__})
        defMessage
          = EstimateFeeRequest{_EstimateFeeRequest'confTarget =
                                 Data.ProtoLens.fieldDefault,
                               _EstimateFeeRequest'_unknownFields = ([])}
        parseMessage
          = let loop ::
                     EstimateFeeRequest ->
                       Data.ProtoLens.Encoding.Bytes.Parser EstimateFeeRequest
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
                                8 -> do y <- (Prelude.fmap Prelude.fromIntegral
                                                Data.ProtoLens.Encoding.Bytes.getVarInt)
                                               Data.ProtoLens.Encoding.Bytes.<?> "conf_target"
                                        loop
                                          (Lens.Family2.set
                                             (Data.ProtoLens.Field.field @"confTarget")
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
                Data.ProtoLens.Encoding.Bytes.<?> "EstimateFeeRequest"
        buildMessage
          = (\ _x ->
               (let _v
                      = Lens.Family2.view (Data.ProtoLens.Field.field @"confTarget") _x
                  in
                  if (_v) Prelude.== Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty else
                    (Data.ProtoLens.Encoding.Bytes.putVarInt 8) Data.Monoid.<>
                      ((Data.ProtoLens.Encoding.Bytes.putVarInt) Prelude..
                         Prelude.fromIntegral)
                        _v)
                 Data.Monoid.<>
                 Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData EstimateFeeRequest where
        rnf
          = (\ x__ ->
               Control.DeepSeq.deepseq (_EstimateFeeRequest'_unknownFields x__)
                 (Control.DeepSeq.deepseq (_EstimateFeeRequest'confTarget x__)
                    (())))
{- | Fields :

    * 'Proto.Walletrpc.Walletkit_Fields.satPerKw' @:: Lens' EstimateFeeResponse Data.Int.Int64@
 -}
data EstimateFeeResponse = EstimateFeeResponse{_EstimateFeeResponse'satPerKw
                                               :: !Data.Int.Int64,
                                               _EstimateFeeResponse'_unknownFields ::
                                               !Data.ProtoLens.FieldSet}
                             deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show EstimateFeeResponse where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField EstimateFeeResponse
           "satPerKw"
           (Data.Int.Int64)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _EstimateFeeResponse'satPerKw
               (\ x__ y__ -> x__{_EstimateFeeResponse'satPerKw = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Message EstimateFeeResponse where
        messageName _ = Data.Text.pack "walletrpc.EstimateFeeResponse"
        fieldsByTag
          = let satPerKw__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "sat_per_kw"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Data.ProtoLens.Field.field @"satPerKw"))
                      :: Data.ProtoLens.FieldDescriptor EstimateFeeResponse
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, satPerKw__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _EstimateFeeResponse'_unknownFields
              (\ x__ y__ -> x__{_EstimateFeeResponse'_unknownFields = y__})
        defMessage
          = EstimateFeeResponse{_EstimateFeeResponse'satPerKw =
                                  Data.ProtoLens.fieldDefault,
                                _EstimateFeeResponse'_unknownFields = ([])}
        parseMessage
          = let loop ::
                     EstimateFeeResponse ->
                       Data.ProtoLens.Encoding.Bytes.Parser EstimateFeeResponse
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
                                8 -> do y <- (Prelude.fmap Prelude.fromIntegral
                                                Data.ProtoLens.Encoding.Bytes.getVarInt)
                                               Data.ProtoLens.Encoding.Bytes.<?> "sat_per_kw"
                                        loop
                                          (Lens.Family2.set (Data.ProtoLens.Field.field @"satPerKw")
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
                Data.ProtoLens.Encoding.Bytes.<?> "EstimateFeeResponse"
        buildMessage
          = (\ _x ->
               (let _v
                      = Lens.Family2.view (Data.ProtoLens.Field.field @"satPerKw") _x
                  in
                  if (_v) Prelude.== Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty else
                    (Data.ProtoLens.Encoding.Bytes.putVarInt 8) Data.Monoid.<>
                      ((Data.ProtoLens.Encoding.Bytes.putVarInt) Prelude..
                         Prelude.fromIntegral)
                        _v)
                 Data.Monoid.<>
                 Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData EstimateFeeResponse where
        rnf
          = (\ x__ ->
               Control.DeepSeq.deepseq (_EstimateFeeResponse'_unknownFields x__)
                 (Control.DeepSeq.deepseq (_EstimateFeeResponse'satPerKw x__) (())))
{- | Fields :

    * 'Proto.Walletrpc.Walletkit_Fields.keyFingerPrint' @:: Lens' KeyReq Data.Int.Int32@
    * 'Proto.Walletrpc.Walletkit_Fields.keyFamily' @:: Lens' KeyReq Data.Int.Int32@
 -}
data KeyReq = KeyReq{_KeyReq'keyFingerPrint :: !Data.Int.Int32,
                     _KeyReq'keyFamily :: !Data.Int.Int32,
                     _KeyReq'_unknownFields :: !Data.ProtoLens.FieldSet}
                deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show KeyReq where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField KeyReq "keyFingerPrint"
           (Data.Int.Int32)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _KeyReq'keyFingerPrint
               (\ x__ y__ -> x__{_KeyReq'keyFingerPrint = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Field.HasField KeyReq "keyFamily"
           (Data.Int.Int32)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _KeyReq'keyFamily
               (\ x__ y__ -> x__{_KeyReq'keyFamily = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Message KeyReq where
        messageName _ = Data.Text.pack "walletrpc.KeyReq"
        fieldsByTag
          = let keyFingerPrint__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "key_finger_print"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Data.ProtoLens.Field.field @"keyFingerPrint"))
                      :: Data.ProtoLens.FieldDescriptor KeyReq
                keyFamily__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "key_family"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Data.ProtoLens.Field.field @"keyFamily"))
                      :: Data.ProtoLens.FieldDescriptor KeyReq
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, keyFingerPrint__field_descriptor),
                 (Data.ProtoLens.Tag 2, keyFamily__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _KeyReq'_unknownFields
              (\ x__ y__ -> x__{_KeyReq'_unknownFields = y__})
        defMessage
          = KeyReq{_KeyReq'keyFingerPrint = Data.ProtoLens.fieldDefault,
                   _KeyReq'keyFamily = Data.ProtoLens.fieldDefault,
                   _KeyReq'_unknownFields = ([])}
        parseMessage
          = let loop :: KeyReq -> Data.ProtoLens.Encoding.Bytes.Parser KeyReq
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
                                8 -> do y <- (Prelude.fmap Prelude.fromIntegral
                                                Data.ProtoLens.Encoding.Bytes.getVarInt)
                                               Data.ProtoLens.Encoding.Bytes.<?> "key_finger_print"
                                        loop
                                          (Lens.Family2.set
                                             (Data.ProtoLens.Field.field @"keyFingerPrint")
                                             y
                                             x)
                                16 -> do y <- (Prelude.fmap Prelude.fromIntegral
                                                 Data.ProtoLens.Encoding.Bytes.getVarInt)
                                                Data.ProtoLens.Encoding.Bytes.<?> "key_family"
                                         loop
                                           (Lens.Family2.set
                                              (Data.ProtoLens.Field.field @"keyFamily")
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
                Data.ProtoLens.Encoding.Bytes.<?> "KeyReq"
        buildMessage
          = (\ _x ->
               (let _v
                      = Lens.Family2.view (Data.ProtoLens.Field.field @"keyFingerPrint")
                          _x
                  in
                  if (_v) Prelude.== Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty else
                    (Data.ProtoLens.Encoding.Bytes.putVarInt 8) Data.Monoid.<>
                      ((Data.ProtoLens.Encoding.Bytes.putVarInt) Prelude..
                         Prelude.fromIntegral)
                        _v)
                 Data.Monoid.<>
                 (let _v
                        = Lens.Family2.view (Data.ProtoLens.Field.field @"keyFamily") _x
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
instance Control.DeepSeq.NFData KeyReq where
        rnf
          = (\ x__ ->
               Control.DeepSeq.deepseq (_KeyReq'_unknownFields x__)
                 (Control.DeepSeq.deepseq (_KeyReq'keyFingerPrint x__)
                    (Control.DeepSeq.deepseq (_KeyReq'keyFamily x__) (()))))
{- | Fields :

    * 'Proto.Walletrpc.Walletkit_Fields.publishError' @:: Lens' PublishResponse Data.Text.Text@
 -}
data PublishResponse = PublishResponse{_PublishResponse'publishError
                                       :: !Data.Text.Text,
                                       _PublishResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
                         deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show PublishResponse where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField PublishResponse
           "publishError"
           (Data.Text.Text)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _PublishResponse'publishError
               (\ x__ y__ -> x__{_PublishResponse'publishError = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Message PublishResponse where
        messageName _ = Data.Text.pack "walletrpc.PublishResponse"
        fieldsByTag
          = let publishError__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "publish_error"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Data.ProtoLens.Field.field @"publishError"))
                      :: Data.ProtoLens.FieldDescriptor PublishResponse
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, publishError__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _PublishResponse'_unknownFields
              (\ x__ y__ -> x__{_PublishResponse'_unknownFields = y__})
        defMessage
          = PublishResponse{_PublishResponse'publishError =
                              Data.ProtoLens.fieldDefault,
                            _PublishResponse'_unknownFields = ([])}
        parseMessage
          = let loop ::
                     PublishResponse ->
                       Data.ProtoLens.Encoding.Bytes.Parser PublishResponse
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
                                10 -> do y <- (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                              Data.ProtoLens.Encoding.Bytes.getBytes
                                                                (Prelude.fromIntegral len)
                                                  Data.ProtoLens.Encoding.Bytes.runEither
                                                    (case Data.Text.Encoding.decodeUtf8' value of
                                                         Prelude.Left err -> Prelude.Left
                                                                               (Prelude.show err)
                                                         Prelude.Right r -> Prelude.Right r))
                                                Data.ProtoLens.Encoding.Bytes.<?> "publish_error"
                                         loop
                                           (Lens.Family2.set
                                              (Data.ProtoLens.Field.field @"publishError")
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
                Data.ProtoLens.Encoding.Bytes.<?> "PublishResponse"
        buildMessage
          = (\ _x ->
               (let _v
                      = Lens.Family2.view (Data.ProtoLens.Field.field @"publishError") _x
                  in
                  if (_v) Prelude.== Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty else
                    (Data.ProtoLens.Encoding.Bytes.putVarInt 10) Data.Monoid.<>
                      (((\ bs ->
                           (Data.ProtoLens.Encoding.Bytes.putVarInt
                              (Prelude.fromIntegral (Data.ByteString.length bs)))
                             Data.Monoid.<> Data.ProtoLens.Encoding.Bytes.putBytes bs))
                         Prelude.. Data.Text.Encoding.encodeUtf8)
                        _v)
                 Data.Monoid.<>
                 Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData PublishResponse where
        rnf
          = (\ x__ ->
               Control.DeepSeq.deepseq (_PublishResponse'_unknownFields x__)
                 (Control.DeepSeq.deepseq (_PublishResponse'publishError x__) (())))
{- | Fields :

    * 'Proto.Walletrpc.Walletkit_Fields.satPerKw' @:: Lens' SendOutputsRequest Data.Int.Int64@
    * 'Proto.Walletrpc.Walletkit_Fields.outputs' @:: Lens' SendOutputsRequest [Proto.Signrpc.Signer.TxOut]@
    * 'Proto.Walletrpc.Walletkit_Fields.vec'outputs' @:: Lens' SendOutputsRequest
  (Data.Vector.Vector Proto.Signrpc.Signer.TxOut)@
 -}
data SendOutputsRequest = SendOutputsRequest{_SendOutputsRequest'satPerKw
                                             :: !Data.Int.Int64,
                                             _SendOutputsRequest'outputs ::
                                             !(Data.Vector.Vector Proto.Signrpc.Signer.TxOut),
                                             _SendOutputsRequest'_unknownFields ::
                                             !Data.ProtoLens.FieldSet}
                            deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show SendOutputsRequest where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField SendOutputsRequest
           "satPerKw"
           (Data.Int.Int64)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _SendOutputsRequest'satPerKw
               (\ x__ y__ -> x__{_SendOutputsRequest'satPerKw = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Field.HasField SendOutputsRequest "outputs"
           ([Proto.Signrpc.Signer.TxOut])
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _SendOutputsRequest'outputs
               (\ x__ y__ -> x__{_SendOutputsRequest'outputs = y__}))
              Prelude..
              Lens.Family2.Unchecked.lens Data.Vector.Generic.toList
                (\ _ y__ -> Data.Vector.Generic.fromList y__)
instance Data.ProtoLens.Field.HasField SendOutputsRequest
           "vec'outputs"
           (Data.Vector.Vector Proto.Signrpc.Signer.TxOut)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _SendOutputsRequest'outputs
               (\ x__ y__ -> x__{_SendOutputsRequest'outputs = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Message SendOutputsRequest where
        messageName _ = Data.Text.pack "walletrpc.SendOutputsRequest"
        fieldsByTag
          = let satPerKw__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "sat_per_kw"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Data.ProtoLens.Field.field @"satPerKw"))
                      :: Data.ProtoLens.FieldDescriptor SendOutputsRequest
                outputs__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "outputs"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor Proto.Signrpc.Signer.TxOut)
                      (Data.ProtoLens.RepeatedField Data.ProtoLens.Unpacked
                         (Data.ProtoLens.Field.field @"outputs"))
                      :: Data.ProtoLens.FieldDescriptor SendOutputsRequest
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, satPerKw__field_descriptor),
                 (Data.ProtoLens.Tag 2, outputs__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _SendOutputsRequest'_unknownFields
              (\ x__ y__ -> x__{_SendOutputsRequest'_unknownFields = y__})
        defMessage
          = SendOutputsRequest{_SendOutputsRequest'satPerKw =
                                 Data.ProtoLens.fieldDefault,
                               _SendOutputsRequest'outputs = Data.Vector.Generic.empty,
                               _SendOutputsRequest'_unknownFields = ([])}
        parseMessage
          = let loop ::
                     SendOutputsRequest ->
                       Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector
                         Data.ProtoLens.Encoding.Growing.RealWorld
                         Proto.Signrpc.Signer.TxOut
                         -> Data.ProtoLens.Encoding.Bytes.Parser SendOutputsRequest
                loop x mutable'outputs
                  = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
                       if end then
                         do frozen'outputs <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                   mutable'outputs)
                            let missing = [] in
                              if Prelude.null missing then Prelude.return () else
                                Prelude.fail
                                  (("Missing required fields: ") Prelude.++
                                     Prelude.show (missing :: ([Prelude.String])))
                            Prelude.return
                              (Lens.Family2.over Data.ProtoLens.unknownFields
                                 (\ !t -> Prelude.reverse t)
                                 (Lens.Family2.set (Data.ProtoLens.Field.field @"vec'outputs")
                                    frozen'outputs
                                    x))
                         else
                         do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                            case tag of
                                8 -> do y <- (Prelude.fmap Prelude.fromIntegral
                                                Data.ProtoLens.Encoding.Bytes.getVarInt)
                                               Data.ProtoLens.Encoding.Bytes.<?> "sat_per_kw"
                                        loop
                                          (Lens.Family2.set (Data.ProtoLens.Field.field @"satPerKw")
                                             y
                                             x)
                                          mutable'outputs
                                18 -> do !y <- (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                   Data.ProtoLens.Encoding.Bytes.isolate
                                                     (Prelude.fromIntegral len)
                                                     Data.ProtoLens.parseMessage)
                                                 Data.ProtoLens.Encoding.Bytes.<?> "outputs"
                                         v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                (Data.ProtoLens.Encoding.Growing.append
                                                   mutable'outputs
                                                   y)
                                         loop x v
                                wire -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                                   wire
                                           loop
                                             (Lens.Family2.over Data.ProtoLens.unknownFields
                                                (\ !t -> (:) y t)
                                                x)
                                             mutable'outputs
              in
              (do mutable'outputs <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       Data.ProtoLens.Encoding.Growing.new
                  loop Data.ProtoLens.defMessage mutable'outputs)
                Data.ProtoLens.Encoding.Bytes.<?> "SendOutputsRequest"
        buildMessage
          = (\ _x ->
               (let _v
                      = Lens.Family2.view (Data.ProtoLens.Field.field @"satPerKw") _x
                  in
                  if (_v) Prelude.== Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty else
                    (Data.ProtoLens.Encoding.Bytes.putVarInt 8) Data.Monoid.<>
                      ((Data.ProtoLens.Encoding.Bytes.putVarInt) Prelude..
                         Prelude.fromIntegral)
                        _v)
                 Data.Monoid.<>
                 (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                    (\ _v ->
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 18) Data.Monoid.<>
                         (((\ bs ->
                              (Data.ProtoLens.Encoding.Bytes.putVarInt
                                 (Prelude.fromIntegral (Data.ByteString.length bs)))
                                Data.Monoid.<> Data.ProtoLens.Encoding.Bytes.putBytes bs))
                            Prelude.. Data.ProtoLens.encodeMessage)
                           _v)
                    (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'outputs") _x))
                   Data.Monoid.<>
                   Data.ProtoLens.Encoding.Wire.buildFieldSet
                     (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData SendOutputsRequest where
        rnf
          = (\ x__ ->
               Control.DeepSeq.deepseq (_SendOutputsRequest'_unknownFields x__)
                 (Control.DeepSeq.deepseq (_SendOutputsRequest'satPerKw x__)
                    (Control.DeepSeq.deepseq (_SendOutputsRequest'outputs x__) (()))))
{- | Fields :

    * 'Proto.Walletrpc.Walletkit_Fields.rawTx' @:: Lens' SendOutputsResponse Data.ByteString.ByteString@
 -}
data SendOutputsResponse = SendOutputsResponse{_SendOutputsResponse'rawTx
                                               :: !Data.ByteString.ByteString,
                                               _SendOutputsResponse'_unknownFields ::
                                               !Data.ProtoLens.FieldSet}
                             deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show SendOutputsResponse where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField SendOutputsResponse "rawTx"
           (Data.ByteString.ByteString)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _SendOutputsResponse'rawTx
               (\ x__ y__ -> x__{_SendOutputsResponse'rawTx = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Message SendOutputsResponse where
        messageName _ = Data.Text.pack "walletrpc.SendOutputsResponse"
        fieldsByTag
          = let rawTx__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "raw_tx"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Data.ProtoLens.Field.field @"rawTx"))
                      :: Data.ProtoLens.FieldDescriptor SendOutputsResponse
              in
              Data.Map.fromList [(Data.ProtoLens.Tag 1, rawTx__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _SendOutputsResponse'_unknownFields
              (\ x__ y__ -> x__{_SendOutputsResponse'_unknownFields = y__})
        defMessage
          = SendOutputsResponse{_SendOutputsResponse'rawTx =
                                  Data.ProtoLens.fieldDefault,
                                _SendOutputsResponse'_unknownFields = ([])}
        parseMessage
          = let loop ::
                     SendOutputsResponse ->
                       Data.ProtoLens.Encoding.Bytes.Parser SendOutputsResponse
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
                                wire -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                                   wire
                                           loop
                                             (Lens.Family2.over Data.ProtoLens.unknownFields
                                                (\ !t -> (:) y t)
                                                x)
              in
              (do loop Data.ProtoLens.defMessage)
                Data.ProtoLens.Encoding.Bytes.<?> "SendOutputsResponse"
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
                 Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData SendOutputsResponse where
        rnf
          = (\ x__ ->
               Control.DeepSeq.deepseq (_SendOutputsResponse'_unknownFields x__)
                 (Control.DeepSeq.deepseq (_SendOutputsResponse'rawTx x__) (())))
{- | Fields :

    * 'Proto.Walletrpc.Walletkit_Fields.txHex' @:: Lens' Transaction Data.ByteString.ByteString@
 -}
data Transaction = Transaction{_Transaction'txHex ::
                               !Data.ByteString.ByteString,
                               _Transaction'_unknownFields :: !Data.ProtoLens.FieldSet}
                     deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Transaction where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Transaction "txHex"
           (Data.ByteString.ByteString)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _Transaction'txHex
               (\ x__ y__ -> x__{_Transaction'txHex = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Message Transaction where
        messageName _ = Data.Text.pack "walletrpc.Transaction"
        fieldsByTag
          = let txHex__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "tx_hex"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Data.ProtoLens.Field.field @"txHex"))
                      :: Data.ProtoLens.FieldDescriptor Transaction
              in
              Data.Map.fromList [(Data.ProtoLens.Tag 1, txHex__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _Transaction'_unknownFields
              (\ x__ y__ -> x__{_Transaction'_unknownFields = y__})
        defMessage
          = Transaction{_Transaction'txHex = Data.ProtoLens.fieldDefault,
                        _Transaction'_unknownFields = ([])}
        parseMessage
          = let loop ::
                     Transaction -> Data.ProtoLens.Encoding.Bytes.Parser Transaction
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
                                                Data.ProtoLens.Encoding.Bytes.<?> "tx_hex"
                                         loop
                                           (Lens.Family2.set (Data.ProtoLens.Field.field @"txHex") y
                                              x)
                                wire -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                                   wire
                                           loop
                                             (Lens.Family2.over Data.ProtoLens.unknownFields
                                                (\ !t -> (:) y t)
                                                x)
              in
              (do loop Data.ProtoLens.defMessage)
                Data.ProtoLens.Encoding.Bytes.<?> "Transaction"
        buildMessage
          = (\ _x ->
               (let _v
                      = Lens.Family2.view (Data.ProtoLens.Field.field @"txHex") _x
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
                 Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData Transaction where
        rnf
          = (\ x__ ->
               Control.DeepSeq.deepseq (_Transaction'_unknownFields x__)
                 (Control.DeepSeq.deepseq (_Transaction'txHex x__) (())))
data WalletKit = WalletKit{}
                   deriving ()
instance Data.ProtoLens.Service.Types.Service WalletKit where
        type ServiceName WalletKit = "WalletKit"
        type ServicePackage WalletKit = "walletrpc"
        type ServiceMethods WalletKit =
             '["deriveKey", "deriveNextKey", "estimateFee", "nextAddr",
               "publishTransaction", "sendOutputs"]
instance Data.ProtoLens.Service.Types.HasMethodImpl WalletKit
           "deriveNextKey"
         where
        type MethodName WalletKit "deriveNextKey" = "DeriveNextKey"
        type MethodInput WalletKit "deriveNextKey" = KeyReq
        type MethodOutput WalletKit "deriveNextKey" =
             Proto.Signrpc.Signer.KeyDescriptor
        type MethodStreamingType WalletKit "deriveNextKey" =
             'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl WalletKit
           "deriveKey"
         where
        type MethodName WalletKit "deriveKey" = "DeriveKey"
        type MethodInput WalletKit "deriveKey" =
             Proto.Signrpc.Signer.KeyLocator
        type MethodOutput WalletKit "deriveKey" =
             Proto.Signrpc.Signer.KeyDescriptor
        type MethodStreamingType WalletKit "deriveKey" =
             'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl WalletKit
           "nextAddr"
         where
        type MethodName WalletKit "nextAddr" = "NextAddr"
        type MethodInput WalletKit "nextAddr" = AddrRequest
        type MethodOutput WalletKit "nextAddr" = AddrResponse
        type MethodStreamingType WalletKit "nextAddr" =
             'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl WalletKit
           "publishTransaction"
         where
        type MethodName WalletKit "publishTransaction" =
             "PublishTransaction"
        type MethodInput WalletKit "publishTransaction" = Transaction
        type MethodOutput WalletKit "publishTransaction" = PublishResponse
        type MethodStreamingType WalletKit "publishTransaction" =
             'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl WalletKit
           "sendOutputs"
         where
        type MethodName WalletKit "sendOutputs" = "SendOutputs"
        type MethodInput WalletKit "sendOutputs" = SendOutputsRequest
        type MethodOutput WalletKit "sendOutputs" = SendOutputsResponse
        type MethodStreamingType WalletKit "sendOutputs" =
             'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl WalletKit
           "estimateFee"
         where
        type MethodName WalletKit "estimateFee" = "EstimateFee"
        type MethodInput WalletKit "estimateFee" = EstimateFeeRequest
        type MethodOutput WalletKit "estimateFee" = EstimateFeeResponse
        type MethodStreamingType WalletKit "estimateFee" =
             'Data.ProtoLens.Service.Types.NonStreaming