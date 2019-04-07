{- This file was auto-generated from google/api/httpbody.proto by the proto-lens-protoc program. -}
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
module Proto.Google.Api.Httpbody (HttpBody()) where
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
import qualified Proto.Google.Protobuf.Any

{- | Fields :

    * 'Proto.Google.Api.Httpbody_Fields.contentType' @:: Lens' HttpBody Data.Text.Text@
    * 'Proto.Google.Api.Httpbody_Fields.data'' @:: Lens' HttpBody Data.ByteString.ByteString@
    * 'Proto.Google.Api.Httpbody_Fields.extensions' @:: Lens' HttpBody [Proto.Google.Protobuf.Any.Any]@
    * 'Proto.Google.Api.Httpbody_Fields.vec'extensions' @:: Lens' HttpBody (Data.Vector.Vector Proto.Google.Protobuf.Any.Any)@
 -}
data HttpBody = HttpBody{_HttpBody'contentType :: !Data.Text.Text,
                         _HttpBody'data' :: !Data.ByteString.ByteString,
                         _HttpBody'extensions ::
                         !(Data.Vector.Vector Proto.Google.Protobuf.Any.Any),
                         _HttpBody'_unknownFields :: !Data.ProtoLens.FieldSet}
                  deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show HttpBody where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField HttpBody "contentType"
           (Data.Text.Text)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _HttpBody'contentType
               (\ x__ y__ -> x__{_HttpBody'contentType = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Field.HasField HttpBody "data'"
           (Data.ByteString.ByteString)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _HttpBody'data'
               (\ x__ y__ -> x__{_HttpBody'data' = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Field.HasField HttpBody "extensions"
           ([Proto.Google.Protobuf.Any.Any])
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _HttpBody'extensions
               (\ x__ y__ -> x__{_HttpBody'extensions = y__}))
              Prelude..
              Lens.Family2.Unchecked.lens Data.Vector.Generic.toList
                (\ _ y__ -> Data.Vector.Generic.fromList y__)
instance Data.ProtoLens.Field.HasField HttpBody "vec'extensions"
           (Data.Vector.Vector Proto.Google.Protobuf.Any.Any)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _HttpBody'extensions
               (\ x__ y__ -> x__{_HttpBody'extensions = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Message HttpBody where
        messageName _ = Data.Text.pack "google.api.HttpBody"
        fieldsByTag
          = let contentType__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "content_type"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Data.ProtoLens.Field.field @"contentType"))
                      :: Data.ProtoLens.FieldDescriptor HttpBody
                data'__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "data"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Data.ProtoLens.Field.field @"data'"))
                      :: Data.ProtoLens.FieldDescriptor HttpBody
                extensions__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "extensions"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor Proto.Google.Protobuf.Any.Any)
                      (Data.ProtoLens.RepeatedField Data.ProtoLens.Unpacked
                         (Data.ProtoLens.Field.field @"extensions"))
                      :: Data.ProtoLens.FieldDescriptor HttpBody
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, contentType__field_descriptor),
                 (Data.ProtoLens.Tag 2, data'__field_descriptor),
                 (Data.ProtoLens.Tag 3, extensions__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _HttpBody'_unknownFields
              (\ x__ y__ -> x__{_HttpBody'_unknownFields = y__})
        defMessage
          = HttpBody{_HttpBody'contentType = Data.ProtoLens.fieldDefault,
                     _HttpBody'data' = Data.ProtoLens.fieldDefault,
                     _HttpBody'extensions = Data.Vector.Generic.empty,
                     _HttpBody'_unknownFields = ([])}
        parseMessage
          = let loop ::
                     HttpBody ->
                       Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector
                         Data.ProtoLens.Encoding.Growing.RealWorld
                         Proto.Google.Protobuf.Any.Any
                         -> Data.ProtoLens.Encoding.Bytes.Parser HttpBody
                loop x mutable'extensions
                  = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
                       if end then
                         do frozen'extensions <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                   (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                      mutable'extensions)
                            let missing = [] in
                              if Prelude.null missing then Prelude.return () else
                                Prelude.fail
                                  (("Missing required fields: ") Prelude.++
                                     Prelude.show (missing :: ([Prelude.String])))
                            Prelude.return
                              (Lens.Family2.over Data.ProtoLens.unknownFields
                                 (\ !t -> Prelude.reverse t)
                                 (Lens.Family2.set (Data.ProtoLens.Field.field @"vec'extensions")
                                    frozen'extensions
                                    x))
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
                                                Data.ProtoLens.Encoding.Bytes.<?> "content_type"
                                         loop
                                           (Lens.Family2.set
                                              (Data.ProtoLens.Field.field @"contentType")
                                              y
                                              x)
                                           mutable'extensions
                                18 -> do y <- (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                  Data.ProtoLens.Encoding.Bytes.getBytes
                                                    (Prelude.fromIntegral len))
                                                Data.ProtoLens.Encoding.Bytes.<?> "data"
                                         loop
                                           (Lens.Family2.set (Data.ProtoLens.Field.field @"data'") y
                                              x)
                                           mutable'extensions
                                26 -> do !y <- (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                   Data.ProtoLens.Encoding.Bytes.isolate
                                                     (Prelude.fromIntegral len)
                                                     Data.ProtoLens.parseMessage)
                                                 Data.ProtoLens.Encoding.Bytes.<?> "extensions"
                                         v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                (Data.ProtoLens.Encoding.Growing.append
                                                   mutable'extensions
                                                   y)
                                         loop x v
                                wire -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                                   wire
                                           loop
                                             (Lens.Family2.over Data.ProtoLens.unknownFields
                                                (\ !t -> (:) y t)
                                                x)
                                             mutable'extensions
              in
              (do mutable'extensions <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                          Data.ProtoLens.Encoding.Growing.new
                  loop Data.ProtoLens.defMessage mutable'extensions)
                Data.ProtoLens.Encoding.Bytes.<?> "HttpBody"
        buildMessage
          = (\ _x ->
               (let _v
                      = Lens.Family2.view (Data.ProtoLens.Field.field @"contentType") _x
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
                        = Lens.Family2.view (Data.ProtoLens.Field.field @"data'") _x
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
                   (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                      (\ _v ->
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 26) Data.Monoid.<>
                           (((\ bs ->
                                (Data.ProtoLens.Encoding.Bytes.putVarInt
                                   (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  Data.Monoid.<> Data.ProtoLens.Encoding.Bytes.putBytes bs))
                              Prelude.. Data.ProtoLens.encodeMessage)
                             _v)
                      (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'extensions")
                         _x))
                     Data.Monoid.<>
                     Data.ProtoLens.Encoding.Wire.buildFieldSet
                       (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData HttpBody where
        rnf
          = (\ x__ ->
               Control.DeepSeq.deepseq (_HttpBody'_unknownFields x__)
                 (Control.DeepSeq.deepseq (_HttpBody'contentType x__)
                    (Control.DeepSeq.deepseq (_HttpBody'data' x__)
                       (Control.DeepSeq.deepseq (_HttpBody'extensions x__) (())))))