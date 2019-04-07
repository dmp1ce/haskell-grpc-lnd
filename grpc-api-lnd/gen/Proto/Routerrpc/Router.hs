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
module Proto.Routerrpc.Router
       (Router(..), PaymentRequest(), PaymentResponse(),
        RouteFeeRequest(), RouteFeeResponse())
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

    * 'Proto.Routerrpc.Router_Fields.payReq' @:: Lens' PaymentRequest Data.Text.Text@
    * 'Proto.Routerrpc.Router_Fields.feeLimitSat' @:: Lens' PaymentRequest Data.Int.Int64@
    * 'Proto.Routerrpc.Router_Fields.cltvLimit' @:: Lens' PaymentRequest Data.Int.Int32@
    * 'Proto.Routerrpc.Router_Fields.timeoutSeconds' @:: Lens' PaymentRequest Data.Int.Int32@
    * 'Proto.Routerrpc.Router_Fields.outgoingChannelId' @:: Lens' PaymentRequest Data.Int.Int64@
 -}
data PaymentRequest = PaymentRequest{_PaymentRequest'payReq ::
                                     !Data.Text.Text,
                                     _PaymentRequest'feeLimitSat :: !Data.Int.Int64,
                                     _PaymentRequest'cltvLimit :: !Data.Int.Int32,
                                     _PaymentRequest'timeoutSeconds :: !Data.Int.Int32,
                                     _PaymentRequest'outgoingChannelId :: !Data.Int.Int64,
                                     _PaymentRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
                        deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show PaymentRequest where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField PaymentRequest "payReq"
           (Data.Text.Text)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _PaymentRequest'payReq
               (\ x__ y__ -> x__{_PaymentRequest'payReq = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Field.HasField PaymentRequest "feeLimitSat"
           (Data.Int.Int64)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _PaymentRequest'feeLimitSat
               (\ x__ y__ -> x__{_PaymentRequest'feeLimitSat = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Field.HasField PaymentRequest "cltvLimit"
           (Data.Int.Int32)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _PaymentRequest'cltvLimit
               (\ x__ y__ -> x__{_PaymentRequest'cltvLimit = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Field.HasField PaymentRequest
           "timeoutSeconds"
           (Data.Int.Int32)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _PaymentRequest'timeoutSeconds
               (\ x__ y__ -> x__{_PaymentRequest'timeoutSeconds = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Field.HasField PaymentRequest
           "outgoingChannelId"
           (Data.Int.Int64)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _PaymentRequest'outgoingChannelId
               (\ x__ y__ -> x__{_PaymentRequest'outgoingChannelId = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Message PaymentRequest where
        messageName _ = Data.Text.pack "routerrpc.PaymentRequest"
        fieldsByTag
          = let payReq__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "pay_req"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Data.ProtoLens.Field.field @"payReq"))
                      :: Data.ProtoLens.FieldDescriptor PaymentRequest
                feeLimitSat__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "fee_limit_sat"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Data.ProtoLens.Field.field @"feeLimitSat"))
                      :: Data.ProtoLens.FieldDescriptor PaymentRequest
                cltvLimit__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "cltv_limit"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Data.ProtoLens.Field.field @"cltvLimit"))
                      :: Data.ProtoLens.FieldDescriptor PaymentRequest
                timeoutSeconds__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "timeout_seconds"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Data.ProtoLens.Field.field @"timeoutSeconds"))
                      :: Data.ProtoLens.FieldDescriptor PaymentRequest
                outgoingChannelId__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "outgoing_channel_id"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Data.ProtoLens.Field.field @"outgoingChannelId"))
                      :: Data.ProtoLens.FieldDescriptor PaymentRequest
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, payReq__field_descriptor),
                 (Data.ProtoLens.Tag 2, feeLimitSat__field_descriptor),
                 (Data.ProtoLens.Tag 3, cltvLimit__field_descriptor),
                 (Data.ProtoLens.Tag 4, timeoutSeconds__field_descriptor),
                 (Data.ProtoLens.Tag 5, outgoingChannelId__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _PaymentRequest'_unknownFields
              (\ x__ y__ -> x__{_PaymentRequest'_unknownFields = y__})
        defMessage
          = PaymentRequest{_PaymentRequest'payReq =
                             Data.ProtoLens.fieldDefault,
                           _PaymentRequest'feeLimitSat = Data.ProtoLens.fieldDefault,
                           _PaymentRequest'cltvLimit = Data.ProtoLens.fieldDefault,
                           _PaymentRequest'timeoutSeconds = Data.ProtoLens.fieldDefault,
                           _PaymentRequest'outgoingChannelId = Data.ProtoLens.fieldDefault,
                           _PaymentRequest'_unknownFields = ([])}
        parseMessage
          = let loop ::
                     PaymentRequest ->
                       Data.ProtoLens.Encoding.Bytes.Parser PaymentRequest
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
                                                Data.ProtoLens.Encoding.Bytes.<?> "pay_req"
                                         loop
                                           (Lens.Family2.set (Data.ProtoLens.Field.field @"payReq")
                                              y
                                              x)
                                16 -> do y <- (Prelude.fmap Prelude.fromIntegral
                                                 Data.ProtoLens.Encoding.Bytes.getVarInt)
                                                Data.ProtoLens.Encoding.Bytes.<?> "fee_limit_sat"
                                         loop
                                           (Lens.Family2.set
                                              (Data.ProtoLens.Field.field @"feeLimitSat")
                                              y
                                              x)
                                24 -> do y <- (Prelude.fmap Prelude.fromIntegral
                                                 Data.ProtoLens.Encoding.Bytes.getVarInt)
                                                Data.ProtoLens.Encoding.Bytes.<?> "cltv_limit"
                                         loop
                                           (Lens.Family2.set
                                              (Data.ProtoLens.Field.field @"cltvLimit")
                                              y
                                              x)
                                32 -> do y <- (Prelude.fmap Prelude.fromIntegral
                                                 Data.ProtoLens.Encoding.Bytes.getVarInt)
                                                Data.ProtoLens.Encoding.Bytes.<?> "timeout_seconds"
                                         loop
                                           (Lens.Family2.set
                                              (Data.ProtoLens.Field.field @"timeoutSeconds")
                                              y
                                              x)
                                40 -> do y <- (Prelude.fmap Prelude.fromIntegral
                                                 Data.ProtoLens.Encoding.Bytes.getVarInt)
                                                Data.ProtoLens.Encoding.Bytes.<?>
                                                "outgoing_channel_id"
                                         loop
                                           (Lens.Family2.set
                                              (Data.ProtoLens.Field.field @"outgoingChannelId")
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
                Data.ProtoLens.Encoding.Bytes.<?> "PaymentRequest"
        buildMessage
          = (\ _x ->
               (let _v
                      = Lens.Family2.view (Data.ProtoLens.Field.field @"payReq") _x
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
                 (let _v
                        = Lens.Family2.view (Data.ProtoLens.Field.field @"feeLimitSat") _x
                    in
                    if (_v) Prelude.== Data.ProtoLens.fieldDefault then
                      Data.Monoid.mempty else
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 16) Data.Monoid.<>
                        ((Data.ProtoLens.Encoding.Bytes.putVarInt) Prelude..
                           Prelude.fromIntegral)
                          _v)
                   Data.Monoid.<>
                   (let _v
                          = Lens.Family2.view (Data.ProtoLens.Field.field @"cltvLimit") _x
                      in
                      if (_v) Prelude.== Data.ProtoLens.fieldDefault then
                        Data.Monoid.mempty else
                        (Data.ProtoLens.Encoding.Bytes.putVarInt 24) Data.Monoid.<>
                          ((Data.ProtoLens.Encoding.Bytes.putVarInt) Prelude..
                             Prelude.fromIntegral)
                            _v)
                     Data.Monoid.<>
                     (let _v
                            = Lens.Family2.view (Data.ProtoLens.Field.field @"timeoutSeconds")
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
                              = Lens.Family2.view
                                  (Data.ProtoLens.Field.field @"outgoingChannelId")
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
instance Control.DeepSeq.NFData PaymentRequest where
        rnf
          = (\ x__ ->
               Control.DeepSeq.deepseq (_PaymentRequest'_unknownFields x__)
                 (Control.DeepSeq.deepseq (_PaymentRequest'payReq x__)
                    (Control.DeepSeq.deepseq (_PaymentRequest'feeLimitSat x__)
                       (Control.DeepSeq.deepseq (_PaymentRequest'cltvLimit x__)
                          (Control.DeepSeq.deepseq (_PaymentRequest'timeoutSeconds x__)
                             (Control.DeepSeq.deepseq (_PaymentRequest'outgoingChannelId x__)
                                (())))))))
{- | Fields :

    * 'Proto.Routerrpc.Router_Fields.payHash' @:: Lens' PaymentResponse Data.ByteString.ByteString@
    * 'Proto.Routerrpc.Router_Fields.preImage' @:: Lens' PaymentResponse Data.ByteString.ByteString@
    * 'Proto.Routerrpc.Router_Fields.paymentErr' @:: Lens' PaymentResponse Data.Text.Text@
 -}
data PaymentResponse = PaymentResponse{_PaymentResponse'payHash ::
                                       !Data.ByteString.ByteString,
                                       _PaymentResponse'preImage :: !Data.ByteString.ByteString,
                                       _PaymentResponse'paymentErr :: !Data.Text.Text,
                                       _PaymentResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
                         deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show PaymentResponse where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField PaymentResponse "payHash"
           (Data.ByteString.ByteString)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _PaymentResponse'payHash
               (\ x__ y__ -> x__{_PaymentResponse'payHash = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Field.HasField PaymentResponse "preImage"
           (Data.ByteString.ByteString)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _PaymentResponse'preImage
               (\ x__ y__ -> x__{_PaymentResponse'preImage = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Field.HasField PaymentResponse "paymentErr"
           (Data.Text.Text)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _PaymentResponse'paymentErr
               (\ x__ y__ -> x__{_PaymentResponse'paymentErr = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Message PaymentResponse where
        messageName _ = Data.Text.pack "routerrpc.PaymentResponse"
        fieldsByTag
          = let payHash__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "pay_hash"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Data.ProtoLens.Field.field @"payHash"))
                      :: Data.ProtoLens.FieldDescriptor PaymentResponse
                preImage__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "pre_image"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Data.ProtoLens.Field.field @"preImage"))
                      :: Data.ProtoLens.FieldDescriptor PaymentResponse
                paymentErr__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "payment_err"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Data.ProtoLens.Field.field @"paymentErr"))
                      :: Data.ProtoLens.FieldDescriptor PaymentResponse
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, payHash__field_descriptor),
                 (Data.ProtoLens.Tag 2, preImage__field_descriptor),
                 (Data.ProtoLens.Tag 3, paymentErr__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _PaymentResponse'_unknownFields
              (\ x__ y__ -> x__{_PaymentResponse'_unknownFields = y__})
        defMessage
          = PaymentResponse{_PaymentResponse'payHash =
                              Data.ProtoLens.fieldDefault,
                            _PaymentResponse'preImage = Data.ProtoLens.fieldDefault,
                            _PaymentResponse'paymentErr = Data.ProtoLens.fieldDefault,
                            _PaymentResponse'_unknownFields = ([])}
        parseMessage
          = let loop ::
                     PaymentResponse ->
                       Data.ProtoLens.Encoding.Bytes.Parser PaymentResponse
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
                                                Data.ProtoLens.Encoding.Bytes.<?> "pay_hash"
                                         loop
                                           (Lens.Family2.set (Data.ProtoLens.Field.field @"payHash")
                                              y
                                              x)
                                18 -> do y <- (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                  Data.ProtoLens.Encoding.Bytes.getBytes
                                                    (Prelude.fromIntegral len))
                                                Data.ProtoLens.Encoding.Bytes.<?> "pre_image"
                                         loop
                                           (Lens.Family2.set
                                              (Data.ProtoLens.Field.field @"preImage")
                                              y
                                              x)
                                26 -> do y <- (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                              Data.ProtoLens.Encoding.Bytes.getBytes
                                                                (Prelude.fromIntegral len)
                                                  Data.ProtoLens.Encoding.Bytes.runEither
                                                    (case Data.Text.Encoding.decodeUtf8' value of
                                                         Prelude.Left err -> Prelude.Left
                                                                               (Prelude.show err)
                                                         Prelude.Right r -> Prelude.Right r))
                                                Data.ProtoLens.Encoding.Bytes.<?> "payment_err"
                                         loop
                                           (Lens.Family2.set
                                              (Data.ProtoLens.Field.field @"paymentErr")
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
                Data.ProtoLens.Encoding.Bytes.<?> "PaymentResponse"
        buildMessage
          = (\ _x ->
               (let _v
                      = Lens.Family2.view (Data.ProtoLens.Field.field @"payHash") _x
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
                        = Lens.Family2.view (Data.ProtoLens.Field.field @"preImage") _x
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
                          = Lens.Family2.view (Data.ProtoLens.Field.field @"paymentErr") _x
                      in
                      if (_v) Prelude.== Data.ProtoLens.fieldDefault then
                        Data.Monoid.mempty else
                        (Data.ProtoLens.Encoding.Bytes.putVarInt 26) Data.Monoid.<>
                          (((\ bs ->
                               (Data.ProtoLens.Encoding.Bytes.putVarInt
                                  (Prelude.fromIntegral (Data.ByteString.length bs)))
                                 Data.Monoid.<> Data.ProtoLens.Encoding.Bytes.putBytes bs))
                             Prelude.. Data.Text.Encoding.encodeUtf8)
                            _v)
                     Data.Monoid.<>
                     Data.ProtoLens.Encoding.Wire.buildFieldSet
                       (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData PaymentResponse where
        rnf
          = (\ x__ ->
               Control.DeepSeq.deepseq (_PaymentResponse'_unknownFields x__)
                 (Control.DeepSeq.deepseq (_PaymentResponse'payHash x__)
                    (Control.DeepSeq.deepseq (_PaymentResponse'preImage x__)
                       (Control.DeepSeq.deepseq (_PaymentResponse'paymentErr x__) (())))))
{- | Fields :

    * 'Proto.Routerrpc.Router_Fields.dest' @:: Lens' RouteFeeRequest Data.ByteString.ByteString@
    * 'Proto.Routerrpc.Router_Fields.amtSat' @:: Lens' RouteFeeRequest Data.Int.Int64@
 -}
data RouteFeeRequest = RouteFeeRequest{_RouteFeeRequest'dest ::
                                       !Data.ByteString.ByteString,
                                       _RouteFeeRequest'amtSat :: !Data.Int.Int64,
                                       _RouteFeeRequest'_unknownFields :: !Data.ProtoLens.FieldSet}
                         deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show RouteFeeRequest where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField RouteFeeRequest "dest"
           (Data.ByteString.ByteString)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _RouteFeeRequest'dest
               (\ x__ y__ -> x__{_RouteFeeRequest'dest = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Field.HasField RouteFeeRequest "amtSat"
           (Data.Int.Int64)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _RouteFeeRequest'amtSat
               (\ x__ y__ -> x__{_RouteFeeRequest'amtSat = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Message RouteFeeRequest where
        messageName _ = Data.Text.pack "routerrpc.RouteFeeRequest"
        fieldsByTag
          = let dest__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "dest"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Data.ProtoLens.Field.field @"dest"))
                      :: Data.ProtoLens.FieldDescriptor RouteFeeRequest
                amtSat__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "amt_sat"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Data.ProtoLens.Field.field @"amtSat"))
                      :: Data.ProtoLens.FieldDescriptor RouteFeeRequest
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, dest__field_descriptor),
                 (Data.ProtoLens.Tag 2, amtSat__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _RouteFeeRequest'_unknownFields
              (\ x__ y__ -> x__{_RouteFeeRequest'_unknownFields = y__})
        defMessage
          = RouteFeeRequest{_RouteFeeRequest'dest =
                              Data.ProtoLens.fieldDefault,
                            _RouteFeeRequest'amtSat = Data.ProtoLens.fieldDefault,
                            _RouteFeeRequest'_unknownFields = ([])}
        parseMessage
          = let loop ::
                     RouteFeeRequest ->
                       Data.ProtoLens.Encoding.Bytes.Parser RouteFeeRequest
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
                                                Data.ProtoLens.Encoding.Bytes.<?> "dest"
                                         loop
                                           (Lens.Family2.set (Data.ProtoLens.Field.field @"dest") y
                                              x)
                                16 -> do y <- (Prelude.fmap Prelude.fromIntegral
                                                 Data.ProtoLens.Encoding.Bytes.getVarInt)
                                                Data.ProtoLens.Encoding.Bytes.<?> "amt_sat"
                                         loop
                                           (Lens.Family2.set (Data.ProtoLens.Field.field @"amtSat")
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
                Data.ProtoLens.Encoding.Bytes.<?> "RouteFeeRequest"
        buildMessage
          = (\ _x ->
               (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"dest") _x
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
                        = Lens.Family2.view (Data.ProtoLens.Field.field @"amtSat") _x
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
instance Control.DeepSeq.NFData RouteFeeRequest where
        rnf
          = (\ x__ ->
               Control.DeepSeq.deepseq (_RouteFeeRequest'_unknownFields x__)
                 (Control.DeepSeq.deepseq (_RouteFeeRequest'dest x__)
                    (Control.DeepSeq.deepseq (_RouteFeeRequest'amtSat x__) (()))))
{- | Fields :

    * 'Proto.Routerrpc.Router_Fields.routingFeeMsat' @:: Lens' RouteFeeResponse Data.Int.Int64@
    * 'Proto.Routerrpc.Router_Fields.timeLockDelay' @:: Lens' RouteFeeResponse Data.Int.Int64@
 -}
data RouteFeeResponse = RouteFeeResponse{_RouteFeeResponse'routingFeeMsat
                                         :: !Data.Int.Int64,
                                         _RouteFeeResponse'timeLockDelay :: !Data.Int.Int64,
                                         _RouteFeeResponse'_unknownFields ::
                                         !Data.ProtoLens.FieldSet}
                          deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show RouteFeeResponse where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField RouteFeeResponse
           "routingFeeMsat"
           (Data.Int.Int64)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _RouteFeeResponse'routingFeeMsat
               (\ x__ y__ -> x__{_RouteFeeResponse'routingFeeMsat = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Field.HasField RouteFeeResponse
           "timeLockDelay"
           (Data.Int.Int64)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _RouteFeeResponse'timeLockDelay
               (\ x__ y__ -> x__{_RouteFeeResponse'timeLockDelay = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Message RouteFeeResponse where
        messageName _ = Data.Text.pack "routerrpc.RouteFeeResponse"
        fieldsByTag
          = let routingFeeMsat__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "routing_fee_msat"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Data.ProtoLens.Field.field @"routingFeeMsat"))
                      :: Data.ProtoLens.FieldDescriptor RouteFeeResponse
                timeLockDelay__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "time_lock_delay"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Data.ProtoLens.Field.field @"timeLockDelay"))
                      :: Data.ProtoLens.FieldDescriptor RouteFeeResponse
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, routingFeeMsat__field_descriptor),
                 (Data.ProtoLens.Tag 2, timeLockDelay__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _RouteFeeResponse'_unknownFields
              (\ x__ y__ -> x__{_RouteFeeResponse'_unknownFields = y__})
        defMessage
          = RouteFeeResponse{_RouteFeeResponse'routingFeeMsat =
                               Data.ProtoLens.fieldDefault,
                             _RouteFeeResponse'timeLockDelay = Data.ProtoLens.fieldDefault,
                             _RouteFeeResponse'_unknownFields = ([])}
        parseMessage
          = let loop ::
                     RouteFeeResponse ->
                       Data.ProtoLens.Encoding.Bytes.Parser RouteFeeResponse
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
                                               Data.ProtoLens.Encoding.Bytes.<?> "routing_fee_msat"
                                        loop
                                          (Lens.Family2.set
                                             (Data.ProtoLens.Field.field @"routingFeeMsat")
                                             y
                                             x)
                                16 -> do y <- (Prelude.fmap Prelude.fromIntegral
                                                 Data.ProtoLens.Encoding.Bytes.getVarInt)
                                                Data.ProtoLens.Encoding.Bytes.<?> "time_lock_delay"
                                         loop
                                           (Lens.Family2.set
                                              (Data.ProtoLens.Field.field @"timeLockDelay")
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
                Data.ProtoLens.Encoding.Bytes.<?> "RouteFeeResponse"
        buildMessage
          = (\ _x ->
               (let _v
                      = Lens.Family2.view (Data.ProtoLens.Field.field @"routingFeeMsat")
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
                        = Lens.Family2.view (Data.ProtoLens.Field.field @"timeLockDelay")
                            _x
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
instance Control.DeepSeq.NFData RouteFeeResponse where
        rnf
          = (\ x__ ->
               Control.DeepSeq.deepseq (_RouteFeeResponse'_unknownFields x__)
                 (Control.DeepSeq.deepseq (_RouteFeeResponse'routingFeeMsat x__)
                    (Control.DeepSeq.deepseq (_RouteFeeResponse'timeLockDelay x__)
                       (()))))
data Router = Router{}
                deriving ()
instance Data.ProtoLens.Service.Types.Service Router where
        type ServiceName Router = "Router"
        type ServicePackage Router = "routerrpc"
        type ServiceMethods Router = '["estimateRouteFee", "sendPayment"]
instance Data.ProtoLens.Service.Types.HasMethodImpl Router
           "sendPayment"
         where
        type MethodName Router "sendPayment" = "SendPayment"
        type MethodInput Router "sendPayment" = PaymentRequest
        type MethodOutput Router "sendPayment" = PaymentResponse
        type MethodStreamingType Router "sendPayment" =
             'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Router
           "estimateRouteFee"
         where
        type MethodName Router "estimateRouteFee" = "EstimateRouteFee"
        type MethodInput Router "estimateRouteFee" = RouteFeeRequest
        type MethodOutput Router "estimateRouteFee" = RouteFeeResponse
        type MethodStreamingType Router "estimateRouteFee" =
             'Data.ProtoLens.Service.Types.NonStreaming