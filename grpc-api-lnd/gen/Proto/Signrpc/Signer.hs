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
module Proto.Signrpc.Signer
       (Signer(..), InputScript(), InputScriptResp(), KeyDescriptor(),
        KeyLocator(), SignDescriptor(), SignReq(), SignResp(), TxOut())
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

    * 'Proto.Signrpc.Signer_Fields.witness' @:: Lens' InputScript [Data.ByteString.ByteString]@
    * 'Proto.Signrpc.Signer_Fields.vec'witness' @:: Lens' InputScript (Data.Vector.Vector Data.ByteString.ByteString)@
    * 'Proto.Signrpc.Signer_Fields.sigScript' @:: Lens' InputScript Data.ByteString.ByteString@
 -}
data InputScript = InputScript{_InputScript'witness ::
                               !(Data.Vector.Vector Data.ByteString.ByteString),
                               _InputScript'sigScript :: !Data.ByteString.ByteString,
                               _InputScript'_unknownFields :: !Data.ProtoLens.FieldSet}
                     deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show InputScript where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField InputScript "witness"
           ([Data.ByteString.ByteString])
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _InputScript'witness
               (\ x__ y__ -> x__{_InputScript'witness = y__}))
              Prelude..
              Lens.Family2.Unchecked.lens Data.Vector.Generic.toList
                (\ _ y__ -> Data.Vector.Generic.fromList y__)
instance Data.ProtoLens.Field.HasField InputScript "vec'witness"
           (Data.Vector.Vector Data.ByteString.ByteString)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _InputScript'witness
               (\ x__ y__ -> x__{_InputScript'witness = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Field.HasField InputScript "sigScript"
           (Data.ByteString.ByteString)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _InputScript'sigScript
               (\ x__ y__ -> x__{_InputScript'sigScript = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Message InputScript where
        messageName _ = Data.Text.pack "signrpc.InputScript"
        fieldsByTag
          = let witness__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "witness"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
                      (Data.ProtoLens.RepeatedField Data.ProtoLens.Unpacked
                         (Data.ProtoLens.Field.field @"witness"))
                      :: Data.ProtoLens.FieldDescriptor InputScript
                sigScript__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "sig_script"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Data.ProtoLens.Field.field @"sigScript"))
                      :: Data.ProtoLens.FieldDescriptor InputScript
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, witness__field_descriptor),
                 (Data.ProtoLens.Tag 2, sigScript__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _InputScript'_unknownFields
              (\ x__ y__ -> x__{_InputScript'_unknownFields = y__})
        defMessage
          = InputScript{_InputScript'witness = Data.Vector.Generic.empty,
                        _InputScript'sigScript = Data.ProtoLens.fieldDefault,
                        _InputScript'_unknownFields = ([])}
        parseMessage
          = let loop ::
                     InputScript ->
                       Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector
                         Data.ProtoLens.Encoding.Growing.RealWorld
                         Data.ByteString.ByteString
                         -> Data.ProtoLens.Encoding.Bytes.Parser InputScript
                loop x mutable'witness
                  = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
                       if end then
                         do frozen'witness <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                   mutable'witness)
                            let missing = [] in
                              if Prelude.null missing then Prelude.return () else
                                Prelude.fail
                                  (("Missing required fields: ") Prelude.++
                                     Prelude.show (missing :: ([Prelude.String])))
                            Prelude.return
                              (Lens.Family2.over Data.ProtoLens.unknownFields
                                 (\ !t -> Prelude.reverse t)
                                 (Lens.Family2.set (Data.ProtoLens.Field.field @"vec'witness")
                                    frozen'witness
                                    x))
                         else
                         do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                            case tag of
                                10 -> do !y <- (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                   Data.ProtoLens.Encoding.Bytes.getBytes
                                                     (Prelude.fromIntegral len))
                                                 Data.ProtoLens.Encoding.Bytes.<?> "witness"
                                         v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                (Data.ProtoLens.Encoding.Growing.append
                                                   mutable'witness
                                                   y)
                                         loop x v
                                18 -> do y <- (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                  Data.ProtoLens.Encoding.Bytes.getBytes
                                                    (Prelude.fromIntegral len))
                                                Data.ProtoLens.Encoding.Bytes.<?> "sig_script"
                                         loop
                                           (Lens.Family2.set
                                              (Data.ProtoLens.Field.field @"sigScript")
                                              y
                                              x)
                                           mutable'witness
                                wire -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                                   wire
                                           loop
                                             (Lens.Family2.over Data.ProtoLens.unknownFields
                                                (\ !t -> (:) y t)
                                                x)
                                             mutable'witness
              in
              (do mutable'witness <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       Data.ProtoLens.Encoding.Growing.new
                  loop Data.ProtoLens.defMessage mutable'witness)
                Data.ProtoLens.Encoding.Bytes.<?> "InputScript"
        buildMessage
          = (\ _x ->
               (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                  (\ _v ->
                     (Data.ProtoLens.Encoding.Bytes.putVarInt 10) Data.Monoid.<>
                       (\ bs ->
                          (Data.ProtoLens.Encoding.Bytes.putVarInt
                             (Prelude.fromIntegral (Data.ByteString.length bs)))
                            Data.Monoid.<> Data.ProtoLens.Encoding.Bytes.putBytes bs)
                         _v)
                  (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'witness") _x))
                 Data.Monoid.<>
                 (let _v
                        = Lens.Family2.view (Data.ProtoLens.Field.field @"sigScript") _x
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
                   Data.ProtoLens.Encoding.Wire.buildFieldSet
                     (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData InputScript where
        rnf
          = (\ x__ ->
               Control.DeepSeq.deepseq (_InputScript'_unknownFields x__)
                 (Control.DeepSeq.deepseq (_InputScript'witness x__)
                    (Control.DeepSeq.deepseq (_InputScript'sigScript x__) (()))))
{- | Fields :

    * 'Proto.Signrpc.Signer_Fields.inputScripts' @:: Lens' InputScriptResp [InputScript]@
    * 'Proto.Signrpc.Signer_Fields.vec'inputScripts' @:: Lens' InputScriptResp (Data.Vector.Vector InputScript)@
 -}
data InputScriptResp = InputScriptResp{_InputScriptResp'inputScripts
                                       :: !(Data.Vector.Vector InputScript),
                                       _InputScriptResp'_unknownFields :: !Data.ProtoLens.FieldSet}
                         deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show InputScriptResp where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField InputScriptResp
           "inputScripts"
           ([InputScript])
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _InputScriptResp'inputScripts
               (\ x__ y__ -> x__{_InputScriptResp'inputScripts = y__}))
              Prelude..
              Lens.Family2.Unchecked.lens Data.Vector.Generic.toList
                (\ _ y__ -> Data.Vector.Generic.fromList y__)
instance Data.ProtoLens.Field.HasField InputScriptResp
           "vec'inputScripts"
           (Data.Vector.Vector InputScript)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _InputScriptResp'inputScripts
               (\ x__ y__ -> x__{_InputScriptResp'inputScripts = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Message InputScriptResp where
        messageName _ = Data.Text.pack "signrpc.InputScriptResp"
        fieldsByTag
          = let inputScripts__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "input_scripts"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor InputScript)
                      (Data.ProtoLens.RepeatedField Data.ProtoLens.Unpacked
                         (Data.ProtoLens.Field.field @"inputScripts"))
                      :: Data.ProtoLens.FieldDescriptor InputScriptResp
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, inputScripts__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _InputScriptResp'_unknownFields
              (\ x__ y__ -> x__{_InputScriptResp'_unknownFields = y__})
        defMessage
          = InputScriptResp{_InputScriptResp'inputScripts =
                              Data.Vector.Generic.empty,
                            _InputScriptResp'_unknownFields = ([])}
        parseMessage
          = let loop ::
                     InputScriptResp ->
                       Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector
                         Data.ProtoLens.Encoding.Growing.RealWorld
                         InputScript
                         -> Data.ProtoLens.Encoding.Bytes.Parser InputScriptResp
                loop x mutable'inputScripts
                  = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
                       if end then
                         do frozen'inputScripts <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                     (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                        mutable'inputScripts)
                            let missing = [] in
                              if Prelude.null missing then Prelude.return () else
                                Prelude.fail
                                  (("Missing required fields: ") Prelude.++
                                     Prelude.show (missing :: ([Prelude.String])))
                            Prelude.return
                              (Lens.Family2.over Data.ProtoLens.unknownFields
                                 (\ !t -> Prelude.reverse t)
                                 (Lens.Family2.set (Data.ProtoLens.Field.field @"vec'inputScripts")
                                    frozen'inputScripts
                                    x))
                         else
                         do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                            case tag of
                                10 -> do !y <- (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                   Data.ProtoLens.Encoding.Bytes.isolate
                                                     (Prelude.fromIntegral len)
                                                     Data.ProtoLens.parseMessage)
                                                 Data.ProtoLens.Encoding.Bytes.<?> "input_scripts"
                                         v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                (Data.ProtoLens.Encoding.Growing.append
                                                   mutable'inputScripts
                                                   y)
                                         loop x v
                                wire -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                                   wire
                                           loop
                                             (Lens.Family2.over Data.ProtoLens.unknownFields
                                                (\ !t -> (:) y t)
                                                x)
                                             mutable'inputScripts
              in
              (do mutable'inputScripts <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                            Data.ProtoLens.Encoding.Growing.new
                  loop Data.ProtoLens.defMessage mutable'inputScripts)
                Data.ProtoLens.Encoding.Bytes.<?> "InputScriptResp"
        buildMessage
          = (\ _x ->
               (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                  (\ _v ->
                     (Data.ProtoLens.Encoding.Bytes.putVarInt 10) Data.Monoid.<>
                       (((\ bs ->
                            (Data.ProtoLens.Encoding.Bytes.putVarInt
                               (Prelude.fromIntegral (Data.ByteString.length bs)))
                              Data.Monoid.<> Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Prelude.. Data.ProtoLens.encodeMessage)
                         _v)
                  (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'inputScripts")
                     _x))
                 Data.Monoid.<>
                 Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData InputScriptResp where
        rnf
          = (\ x__ ->
               Control.DeepSeq.deepseq (_InputScriptResp'_unknownFields x__)
                 (Control.DeepSeq.deepseq (_InputScriptResp'inputScripts x__) (())))
{- | Fields :

    * 'Proto.Signrpc.Signer_Fields.rawKeyBytes' @:: Lens' KeyDescriptor Data.ByteString.ByteString@
    * 'Proto.Signrpc.Signer_Fields.keyLoc' @:: Lens' KeyDescriptor KeyLocator@
    * 'Proto.Signrpc.Signer_Fields.maybe'keyLoc' @:: Lens' KeyDescriptor (Prelude.Maybe KeyLocator)@
 -}
data KeyDescriptor = KeyDescriptor{_KeyDescriptor'rawKeyBytes ::
                                   !Data.ByteString.ByteString,
                                   _KeyDescriptor'keyLoc :: !(Prelude.Maybe KeyLocator),
                                   _KeyDescriptor'_unknownFields :: !Data.ProtoLens.FieldSet}
                       deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show KeyDescriptor where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField KeyDescriptor "rawKeyBytes"
           (Data.ByteString.ByteString)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _KeyDescriptor'rawKeyBytes
               (\ x__ y__ -> x__{_KeyDescriptor'rawKeyBytes = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Field.HasField KeyDescriptor "keyLoc"
           (KeyLocator)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _KeyDescriptor'keyLoc
               (\ x__ y__ -> x__{_KeyDescriptor'keyLoc = y__}))
              Prelude.. Data.ProtoLens.maybeLens Data.ProtoLens.defMessage
instance Data.ProtoLens.Field.HasField KeyDescriptor "maybe'keyLoc"
           (Prelude.Maybe KeyLocator)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _KeyDescriptor'keyLoc
               (\ x__ y__ -> x__{_KeyDescriptor'keyLoc = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Message KeyDescriptor where
        messageName _ = Data.Text.pack "signrpc.KeyDescriptor"
        fieldsByTag
          = let rawKeyBytes__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "raw_key_bytes"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Data.ProtoLens.Field.field @"rawKeyBytes"))
                      :: Data.ProtoLens.FieldDescriptor KeyDescriptor
                keyLoc__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "key_loc"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor KeyLocator)
                      (Data.ProtoLens.OptionalField
                         (Data.ProtoLens.Field.field @"maybe'keyLoc"))
                      :: Data.ProtoLens.FieldDescriptor KeyDescriptor
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, rawKeyBytes__field_descriptor),
                 (Data.ProtoLens.Tag 2, keyLoc__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _KeyDescriptor'_unknownFields
              (\ x__ y__ -> x__{_KeyDescriptor'_unknownFields = y__})
        defMessage
          = KeyDescriptor{_KeyDescriptor'rawKeyBytes =
                            Data.ProtoLens.fieldDefault,
                          _KeyDescriptor'keyLoc = Prelude.Nothing,
                          _KeyDescriptor'_unknownFields = ([])}
        parseMessage
          = let loop ::
                     KeyDescriptor -> Data.ProtoLens.Encoding.Bytes.Parser KeyDescriptor
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
                                                Data.ProtoLens.Encoding.Bytes.<?> "raw_key_bytes"
                                         loop
                                           (Lens.Family2.set
                                              (Data.ProtoLens.Field.field @"rawKeyBytes")
                                              y
                                              x)
                                18 -> do y <- (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                  Data.ProtoLens.Encoding.Bytes.isolate
                                                    (Prelude.fromIntegral len)
                                                    Data.ProtoLens.parseMessage)
                                                Data.ProtoLens.Encoding.Bytes.<?> "key_loc"
                                         loop
                                           (Lens.Family2.set (Data.ProtoLens.Field.field @"keyLoc")
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
                Data.ProtoLens.Encoding.Bytes.<?> "KeyDescriptor"
        buildMessage
          = (\ _x ->
               (let _v
                      = Lens.Family2.view (Data.ProtoLens.Field.field @"rawKeyBytes") _x
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
                 (case
                    Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'keyLoc") _x
                    of
                      (Prelude.Nothing) -> Data.Monoid.mempty
                      Prelude.Just _v -> (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                                           Data.Monoid.<>
                                           (((\ bs ->
                                                (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                   (Prelude.fromIntegral
                                                      (Data.ByteString.length bs)))
                                                  Data.Monoid.<>
                                                  Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                              Prelude.. Data.ProtoLens.encodeMessage)
                                             _v)
                   Data.Monoid.<>
                   Data.ProtoLens.Encoding.Wire.buildFieldSet
                     (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData KeyDescriptor where
        rnf
          = (\ x__ ->
               Control.DeepSeq.deepseq (_KeyDescriptor'_unknownFields x__)
                 (Control.DeepSeq.deepseq (_KeyDescriptor'rawKeyBytes x__)
                    (Control.DeepSeq.deepseq (_KeyDescriptor'keyLoc x__) (()))))
{- | Fields :

    * 'Proto.Signrpc.Signer_Fields.keyFamily' @:: Lens' KeyLocator Data.Int.Int32@
    * 'Proto.Signrpc.Signer_Fields.keyIndex' @:: Lens' KeyLocator Data.Int.Int32@
 -}
data KeyLocator = KeyLocator{_KeyLocator'keyFamily ::
                             !Data.Int.Int32,
                             _KeyLocator'keyIndex :: !Data.Int.Int32,
                             _KeyLocator'_unknownFields :: !Data.ProtoLens.FieldSet}
                    deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show KeyLocator where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField KeyLocator "keyFamily"
           (Data.Int.Int32)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _KeyLocator'keyFamily
               (\ x__ y__ -> x__{_KeyLocator'keyFamily = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Field.HasField KeyLocator "keyIndex"
           (Data.Int.Int32)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _KeyLocator'keyIndex
               (\ x__ y__ -> x__{_KeyLocator'keyIndex = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Message KeyLocator where
        messageName _ = Data.Text.pack "signrpc.KeyLocator"
        fieldsByTag
          = let keyFamily__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "key_family"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Data.ProtoLens.Field.field @"keyFamily"))
                      :: Data.ProtoLens.FieldDescriptor KeyLocator
                keyIndex__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "key_index"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Data.ProtoLens.Field.field @"keyIndex"))
                      :: Data.ProtoLens.FieldDescriptor KeyLocator
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, keyFamily__field_descriptor),
                 (Data.ProtoLens.Tag 2, keyIndex__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _KeyLocator'_unknownFields
              (\ x__ y__ -> x__{_KeyLocator'_unknownFields = y__})
        defMessage
          = KeyLocator{_KeyLocator'keyFamily = Data.ProtoLens.fieldDefault,
                       _KeyLocator'keyIndex = Data.ProtoLens.fieldDefault,
                       _KeyLocator'_unknownFields = ([])}
        parseMessage
          = let loop ::
                     KeyLocator -> Data.ProtoLens.Encoding.Bytes.Parser KeyLocator
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
                                               Data.ProtoLens.Encoding.Bytes.<?> "key_family"
                                        loop
                                          (Lens.Family2.set
                                             (Data.ProtoLens.Field.field @"keyFamily")
                                             y
                                             x)
                                16 -> do y <- (Prelude.fmap Prelude.fromIntegral
                                                 Data.ProtoLens.Encoding.Bytes.getVarInt)
                                                Data.ProtoLens.Encoding.Bytes.<?> "key_index"
                                         loop
                                           (Lens.Family2.set
                                              (Data.ProtoLens.Field.field @"keyIndex")
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
                Data.ProtoLens.Encoding.Bytes.<?> "KeyLocator"
        buildMessage
          = (\ _x ->
               (let _v
                      = Lens.Family2.view (Data.ProtoLens.Field.field @"keyFamily") _x
                  in
                  if (_v) Prelude.== Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty else
                    (Data.ProtoLens.Encoding.Bytes.putVarInt 8) Data.Monoid.<>
                      ((Data.ProtoLens.Encoding.Bytes.putVarInt) Prelude..
                         Prelude.fromIntegral)
                        _v)
                 Data.Monoid.<>
                 (let _v
                        = Lens.Family2.view (Data.ProtoLens.Field.field @"keyIndex") _x
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
instance Control.DeepSeq.NFData KeyLocator where
        rnf
          = (\ x__ ->
               Control.DeepSeq.deepseq (_KeyLocator'_unknownFields x__)
                 (Control.DeepSeq.deepseq (_KeyLocator'keyFamily x__)
                    (Control.DeepSeq.deepseq (_KeyLocator'keyIndex x__) (()))))
{- | Fields :

    * 'Proto.Signrpc.Signer_Fields.keyDesc' @:: Lens' SignDescriptor KeyDescriptor@
    * 'Proto.Signrpc.Signer_Fields.maybe'keyDesc' @:: Lens' SignDescriptor (Prelude.Maybe KeyDescriptor)@
    * 'Proto.Signrpc.Signer_Fields.singleTweak' @:: Lens' SignDescriptor Data.ByteString.ByteString@
    * 'Proto.Signrpc.Signer_Fields.doubleTweak' @:: Lens' SignDescriptor Data.ByteString.ByteString@
    * 'Proto.Signrpc.Signer_Fields.witnessScript' @:: Lens' SignDescriptor Data.ByteString.ByteString@
    * 'Proto.Signrpc.Signer_Fields.output' @:: Lens' SignDescriptor TxOut@
    * 'Proto.Signrpc.Signer_Fields.maybe'output' @:: Lens' SignDescriptor (Prelude.Maybe TxOut)@
    * 'Proto.Signrpc.Signer_Fields.sighash' @:: Lens' SignDescriptor Data.Word.Word32@
    * 'Proto.Signrpc.Signer_Fields.inputIndex' @:: Lens' SignDescriptor Data.Int.Int32@
 -}
data SignDescriptor = SignDescriptor{_SignDescriptor'keyDesc ::
                                     !(Prelude.Maybe KeyDescriptor),
                                     _SignDescriptor'singleTweak :: !Data.ByteString.ByteString,
                                     _SignDescriptor'doubleTweak :: !Data.ByteString.ByteString,
                                     _SignDescriptor'witnessScript :: !Data.ByteString.ByteString,
                                     _SignDescriptor'output :: !(Prelude.Maybe TxOut),
                                     _SignDescriptor'sighash :: !Data.Word.Word32,
                                     _SignDescriptor'inputIndex :: !Data.Int.Int32,
                                     _SignDescriptor'_unknownFields :: !Data.ProtoLens.FieldSet}
                        deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show SignDescriptor where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField SignDescriptor "keyDesc"
           (KeyDescriptor)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _SignDescriptor'keyDesc
               (\ x__ y__ -> x__{_SignDescriptor'keyDesc = y__}))
              Prelude.. Data.ProtoLens.maybeLens Data.ProtoLens.defMessage
instance Data.ProtoLens.Field.HasField SignDescriptor
           "maybe'keyDesc"
           (Prelude.Maybe KeyDescriptor)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _SignDescriptor'keyDesc
               (\ x__ y__ -> x__{_SignDescriptor'keyDesc = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Field.HasField SignDescriptor "singleTweak"
           (Data.ByteString.ByteString)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _SignDescriptor'singleTweak
               (\ x__ y__ -> x__{_SignDescriptor'singleTweak = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Field.HasField SignDescriptor "doubleTweak"
           (Data.ByteString.ByteString)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _SignDescriptor'doubleTweak
               (\ x__ y__ -> x__{_SignDescriptor'doubleTweak = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Field.HasField SignDescriptor
           "witnessScript"
           (Data.ByteString.ByteString)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _SignDescriptor'witnessScript
               (\ x__ y__ -> x__{_SignDescriptor'witnessScript = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Field.HasField SignDescriptor "output"
           (TxOut)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _SignDescriptor'output
               (\ x__ y__ -> x__{_SignDescriptor'output = y__}))
              Prelude.. Data.ProtoLens.maybeLens Data.ProtoLens.defMessage
instance Data.ProtoLens.Field.HasField SignDescriptor
           "maybe'output"
           (Prelude.Maybe TxOut)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _SignDescriptor'output
               (\ x__ y__ -> x__{_SignDescriptor'output = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Field.HasField SignDescriptor "sighash"
           (Data.Word.Word32)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _SignDescriptor'sighash
               (\ x__ y__ -> x__{_SignDescriptor'sighash = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Field.HasField SignDescriptor "inputIndex"
           (Data.Int.Int32)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _SignDescriptor'inputIndex
               (\ x__ y__ -> x__{_SignDescriptor'inputIndex = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Message SignDescriptor where
        messageName _ = Data.Text.pack "signrpc.SignDescriptor"
        fieldsByTag
          = let keyDesc__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "key_desc"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor KeyDescriptor)
                      (Data.ProtoLens.OptionalField
                         (Data.ProtoLens.Field.field @"maybe'keyDesc"))
                      :: Data.ProtoLens.FieldDescriptor SignDescriptor
                singleTweak__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "single_tweak"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Data.ProtoLens.Field.field @"singleTweak"))
                      :: Data.ProtoLens.FieldDescriptor SignDescriptor
                doubleTweak__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "double_tweak"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Data.ProtoLens.Field.field @"doubleTweak"))
                      :: Data.ProtoLens.FieldDescriptor SignDescriptor
                witnessScript__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "witness_script"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Data.ProtoLens.Field.field @"witnessScript"))
                      :: Data.ProtoLens.FieldDescriptor SignDescriptor
                output__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "output"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor TxOut)
                      (Data.ProtoLens.OptionalField
                         (Data.ProtoLens.Field.field @"maybe'output"))
                      :: Data.ProtoLens.FieldDescriptor SignDescriptor
                sighash__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "sighash"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Data.ProtoLens.Field.field @"sighash"))
                      :: Data.ProtoLens.FieldDescriptor SignDescriptor
                inputIndex__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "input_index"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Data.ProtoLens.Field.field @"inputIndex"))
                      :: Data.ProtoLens.FieldDescriptor SignDescriptor
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, keyDesc__field_descriptor),
                 (Data.ProtoLens.Tag 2, singleTweak__field_descriptor),
                 (Data.ProtoLens.Tag 3, doubleTweak__field_descriptor),
                 (Data.ProtoLens.Tag 4, witnessScript__field_descriptor),
                 (Data.ProtoLens.Tag 5, output__field_descriptor),
                 (Data.ProtoLens.Tag 7, sighash__field_descriptor),
                 (Data.ProtoLens.Tag 8, inputIndex__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _SignDescriptor'_unknownFields
              (\ x__ y__ -> x__{_SignDescriptor'_unknownFields = y__})
        defMessage
          = SignDescriptor{_SignDescriptor'keyDesc = Prelude.Nothing,
                           _SignDescriptor'singleTweak = Data.ProtoLens.fieldDefault,
                           _SignDescriptor'doubleTweak = Data.ProtoLens.fieldDefault,
                           _SignDescriptor'witnessScript = Data.ProtoLens.fieldDefault,
                           _SignDescriptor'output = Prelude.Nothing,
                           _SignDescriptor'sighash = Data.ProtoLens.fieldDefault,
                           _SignDescriptor'inputIndex = Data.ProtoLens.fieldDefault,
                           _SignDescriptor'_unknownFields = ([])}
        parseMessage
          = let loop ::
                     SignDescriptor ->
                       Data.ProtoLens.Encoding.Bytes.Parser SignDescriptor
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
                                                Data.ProtoLens.Encoding.Bytes.<?> "key_desc"
                                         loop
                                           (Lens.Family2.set (Data.ProtoLens.Field.field @"keyDesc")
                                              y
                                              x)
                                18 -> do y <- (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                  Data.ProtoLens.Encoding.Bytes.getBytes
                                                    (Prelude.fromIntegral len))
                                                Data.ProtoLens.Encoding.Bytes.<?> "single_tweak"
                                         loop
                                           (Lens.Family2.set
                                              (Data.ProtoLens.Field.field @"singleTweak")
                                              y
                                              x)
                                26 -> do y <- (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                  Data.ProtoLens.Encoding.Bytes.getBytes
                                                    (Prelude.fromIntegral len))
                                                Data.ProtoLens.Encoding.Bytes.<?> "double_tweak"
                                         loop
                                           (Lens.Family2.set
                                              (Data.ProtoLens.Field.field @"doubleTweak")
                                              y
                                              x)
                                34 -> do y <- (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                  Data.ProtoLens.Encoding.Bytes.getBytes
                                                    (Prelude.fromIntegral len))
                                                Data.ProtoLens.Encoding.Bytes.<?> "witness_script"
                                         loop
                                           (Lens.Family2.set
                                              (Data.ProtoLens.Field.field @"witnessScript")
                                              y
                                              x)
                                42 -> do y <- (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                  Data.ProtoLens.Encoding.Bytes.isolate
                                                    (Prelude.fromIntegral len)
                                                    Data.ProtoLens.parseMessage)
                                                Data.ProtoLens.Encoding.Bytes.<?> "output"
                                         loop
                                           (Lens.Family2.set (Data.ProtoLens.Field.field @"output")
                                              y
                                              x)
                                56 -> do y <- (Prelude.fmap Prelude.fromIntegral
                                                 Data.ProtoLens.Encoding.Bytes.getVarInt)
                                                Data.ProtoLens.Encoding.Bytes.<?> "sighash"
                                         loop
                                           (Lens.Family2.set (Data.ProtoLens.Field.field @"sighash")
                                              y
                                              x)
                                64 -> do y <- (Prelude.fmap Prelude.fromIntegral
                                                 Data.ProtoLens.Encoding.Bytes.getVarInt)
                                                Data.ProtoLens.Encoding.Bytes.<?> "input_index"
                                         loop
                                           (Lens.Family2.set
                                              (Data.ProtoLens.Field.field @"inputIndex")
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
                Data.ProtoLens.Encoding.Bytes.<?> "SignDescriptor"
        buildMessage
          = (\ _x ->
               (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'keyDesc") _x
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
                        = Lens.Family2.view (Data.ProtoLens.Field.field @"singleTweak") _x
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
                          = Lens.Family2.view (Data.ProtoLens.Field.field @"doubleTweak") _x
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
                            = Lens.Family2.view (Data.ProtoLens.Field.field @"witnessScript")
                                _x
                        in
                        if (_v) Prelude.== Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty else
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 34) Data.Monoid.<>
                            (\ bs ->
                               (Data.ProtoLens.Encoding.Bytes.putVarInt
                                  (Prelude.fromIntegral (Data.ByteString.length bs)))
                                 Data.Monoid.<> Data.ProtoLens.Encoding.Bytes.putBytes bs)
                              _v)
                       Data.Monoid.<>
                       (case
                          Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'output") _x
                          of
                            (Prelude.Nothing) -> Data.Monoid.mempty
                            Prelude.Just _v -> (Data.ProtoLens.Encoding.Bytes.putVarInt 42)
                                                 Data.Monoid.<>
                                                 (((\ bs ->
                                                      (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                         (Prelude.fromIntegral
                                                            (Data.ByteString.length bs)))
                                                        Data.Monoid.<>
                                                        Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                                    Prelude.. Data.ProtoLens.encodeMessage)
                                                   _v)
                         Data.Monoid.<>
                         (let _v
                                = Lens.Family2.view (Data.ProtoLens.Field.field @"sighash") _x
                            in
                            if (_v) Prelude.== Data.ProtoLens.fieldDefault then
                              Data.Monoid.mempty else
                              (Data.ProtoLens.Encoding.Bytes.putVarInt 56) Data.Monoid.<>
                                ((Data.ProtoLens.Encoding.Bytes.putVarInt) Prelude..
                                   Prelude.fromIntegral)
                                  _v)
                           Data.Monoid.<>
                           (let _v
                                  = Lens.Family2.view (Data.ProtoLens.Field.field @"inputIndex") _x
                              in
                              if (_v) Prelude.== Data.ProtoLens.fieldDefault then
                                Data.Monoid.mempty else
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 64) Data.Monoid.<>
                                  ((Data.ProtoLens.Encoding.Bytes.putVarInt) Prelude..
                                     Prelude.fromIntegral)
                                    _v)
                             Data.Monoid.<>
                             Data.ProtoLens.Encoding.Wire.buildFieldSet
                               (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData SignDescriptor where
        rnf
          = (\ x__ ->
               Control.DeepSeq.deepseq (_SignDescriptor'_unknownFields x__)
                 (Control.DeepSeq.deepseq (_SignDescriptor'keyDesc x__)
                    (Control.DeepSeq.deepseq (_SignDescriptor'singleTweak x__)
                       (Control.DeepSeq.deepseq (_SignDescriptor'doubleTweak x__)
                          (Control.DeepSeq.deepseq (_SignDescriptor'witnessScript x__)
                             (Control.DeepSeq.deepseq (_SignDescriptor'output x__)
                                (Control.DeepSeq.deepseq (_SignDescriptor'sighash x__)
                                   (Control.DeepSeq.deepseq (_SignDescriptor'inputIndex x__)
                                      (())))))))))
{- | Fields :

    * 'Proto.Signrpc.Signer_Fields.rawTxBytes' @:: Lens' SignReq Data.ByteString.ByteString@
    * 'Proto.Signrpc.Signer_Fields.signDescs' @:: Lens' SignReq [SignDescriptor]@
    * 'Proto.Signrpc.Signer_Fields.vec'signDescs' @:: Lens' SignReq (Data.Vector.Vector SignDescriptor)@
 -}
data SignReq = SignReq{_SignReq'rawTxBytes ::
                       !Data.ByteString.ByteString,
                       _SignReq'signDescs :: !(Data.Vector.Vector SignDescriptor),
                       _SignReq'_unknownFields :: !Data.ProtoLens.FieldSet}
                 deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show SignReq where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField SignReq "rawTxBytes"
           (Data.ByteString.ByteString)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _SignReq'rawTxBytes
               (\ x__ y__ -> x__{_SignReq'rawTxBytes = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Field.HasField SignReq "signDescs"
           ([SignDescriptor])
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _SignReq'signDescs
               (\ x__ y__ -> x__{_SignReq'signDescs = y__}))
              Prelude..
              Lens.Family2.Unchecked.lens Data.Vector.Generic.toList
                (\ _ y__ -> Data.Vector.Generic.fromList y__)
instance Data.ProtoLens.Field.HasField SignReq "vec'signDescs"
           (Data.Vector.Vector SignDescriptor)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _SignReq'signDescs
               (\ x__ y__ -> x__{_SignReq'signDescs = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Message SignReq where
        messageName _ = Data.Text.pack "signrpc.SignReq"
        fieldsByTag
          = let rawTxBytes__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "raw_tx_bytes"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Data.ProtoLens.Field.field @"rawTxBytes"))
                      :: Data.ProtoLens.FieldDescriptor SignReq
                signDescs__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "sign_descs"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor SignDescriptor)
                      (Data.ProtoLens.RepeatedField Data.ProtoLens.Unpacked
                         (Data.ProtoLens.Field.field @"signDescs"))
                      :: Data.ProtoLens.FieldDescriptor SignReq
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, rawTxBytes__field_descriptor),
                 (Data.ProtoLens.Tag 2, signDescs__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _SignReq'_unknownFields
              (\ x__ y__ -> x__{_SignReq'_unknownFields = y__})
        defMessage
          = SignReq{_SignReq'rawTxBytes = Data.ProtoLens.fieldDefault,
                    _SignReq'signDescs = Data.Vector.Generic.empty,
                    _SignReq'_unknownFields = ([])}
        parseMessage
          = let loop ::
                     SignReq ->
                       Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector
                         Data.ProtoLens.Encoding.Growing.RealWorld
                         SignDescriptor
                         -> Data.ProtoLens.Encoding.Bytes.Parser SignReq
                loop x mutable'signDescs
                  = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
                       if end then
                         do frozen'signDescs <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                  (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                     mutable'signDescs)
                            let missing = [] in
                              if Prelude.null missing then Prelude.return () else
                                Prelude.fail
                                  (("Missing required fields: ") Prelude.++
                                     Prelude.show (missing :: ([Prelude.String])))
                            Prelude.return
                              (Lens.Family2.over Data.ProtoLens.unknownFields
                                 (\ !t -> Prelude.reverse t)
                                 (Lens.Family2.set (Data.ProtoLens.Field.field @"vec'signDescs")
                                    frozen'signDescs
                                    x))
                         else
                         do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                            case tag of
                                10 -> do y <- (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                  Data.ProtoLens.Encoding.Bytes.getBytes
                                                    (Prelude.fromIntegral len))
                                                Data.ProtoLens.Encoding.Bytes.<?> "raw_tx_bytes"
                                         loop
                                           (Lens.Family2.set
                                              (Data.ProtoLens.Field.field @"rawTxBytes")
                                              y
                                              x)
                                           mutable'signDescs
                                18 -> do !y <- (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                   Data.ProtoLens.Encoding.Bytes.isolate
                                                     (Prelude.fromIntegral len)
                                                     Data.ProtoLens.parseMessage)
                                                 Data.ProtoLens.Encoding.Bytes.<?> "sign_descs"
                                         v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                (Data.ProtoLens.Encoding.Growing.append
                                                   mutable'signDescs
                                                   y)
                                         loop x v
                                wire -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                                   wire
                                           loop
                                             (Lens.Family2.over Data.ProtoLens.unknownFields
                                                (\ !t -> (:) y t)
                                                x)
                                             mutable'signDescs
              in
              (do mutable'signDescs <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                         Data.ProtoLens.Encoding.Growing.new
                  loop Data.ProtoLens.defMessage mutable'signDescs)
                Data.ProtoLens.Encoding.Bytes.<?> "SignReq"
        buildMessage
          = (\ _x ->
               (let _v
                      = Lens.Family2.view (Data.ProtoLens.Field.field @"rawTxBytes") _x
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
                 (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                    (\ _v ->
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 18) Data.Monoid.<>
                         (((\ bs ->
                              (Data.ProtoLens.Encoding.Bytes.putVarInt
                                 (Prelude.fromIntegral (Data.ByteString.length bs)))
                                Data.Monoid.<> Data.ProtoLens.Encoding.Bytes.putBytes bs))
                            Prelude.. Data.ProtoLens.encodeMessage)
                           _v)
                    (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'signDescs")
                       _x))
                   Data.Monoid.<>
                   Data.ProtoLens.Encoding.Wire.buildFieldSet
                     (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData SignReq where
        rnf
          = (\ x__ ->
               Control.DeepSeq.deepseq (_SignReq'_unknownFields x__)
                 (Control.DeepSeq.deepseq (_SignReq'rawTxBytes x__)
                    (Control.DeepSeq.deepseq (_SignReq'signDescs x__) (()))))
{- | Fields :

    * 'Proto.Signrpc.Signer_Fields.rawSigs' @:: Lens' SignResp [Data.ByteString.ByteString]@
    * 'Proto.Signrpc.Signer_Fields.vec'rawSigs' @:: Lens' SignResp (Data.Vector.Vector Data.ByteString.ByteString)@
 -}
data SignResp = SignResp{_SignResp'rawSigs ::
                         !(Data.Vector.Vector Data.ByteString.ByteString),
                         _SignResp'_unknownFields :: !Data.ProtoLens.FieldSet}
                  deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show SignResp where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField SignResp "rawSigs"
           ([Data.ByteString.ByteString])
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _SignResp'rawSigs
               (\ x__ y__ -> x__{_SignResp'rawSigs = y__}))
              Prelude..
              Lens.Family2.Unchecked.lens Data.Vector.Generic.toList
                (\ _ y__ -> Data.Vector.Generic.fromList y__)
instance Data.ProtoLens.Field.HasField SignResp "vec'rawSigs"
           (Data.Vector.Vector Data.ByteString.ByteString)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _SignResp'rawSigs
               (\ x__ y__ -> x__{_SignResp'rawSigs = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Message SignResp where
        messageName _ = Data.Text.pack "signrpc.SignResp"
        fieldsByTag
          = let rawSigs__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "raw_sigs"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
                      (Data.ProtoLens.RepeatedField Data.ProtoLens.Unpacked
                         (Data.ProtoLens.Field.field @"rawSigs"))
                      :: Data.ProtoLens.FieldDescriptor SignResp
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, rawSigs__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _SignResp'_unknownFields
              (\ x__ y__ -> x__{_SignResp'_unknownFields = y__})
        defMessage
          = SignResp{_SignResp'rawSigs = Data.Vector.Generic.empty,
                     _SignResp'_unknownFields = ([])}
        parseMessage
          = let loop ::
                     SignResp ->
                       Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector
                         Data.ProtoLens.Encoding.Growing.RealWorld
                         Data.ByteString.ByteString
                         -> Data.ProtoLens.Encoding.Bytes.Parser SignResp
                loop x mutable'rawSigs
                  = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
                       if end then
                         do frozen'rawSigs <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                   mutable'rawSigs)
                            let missing = [] in
                              if Prelude.null missing then Prelude.return () else
                                Prelude.fail
                                  (("Missing required fields: ") Prelude.++
                                     Prelude.show (missing :: ([Prelude.String])))
                            Prelude.return
                              (Lens.Family2.over Data.ProtoLens.unknownFields
                                 (\ !t -> Prelude.reverse t)
                                 (Lens.Family2.set (Data.ProtoLens.Field.field @"vec'rawSigs")
                                    frozen'rawSigs
                                    x))
                         else
                         do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                            case tag of
                                10 -> do !y <- (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                   Data.ProtoLens.Encoding.Bytes.getBytes
                                                     (Prelude.fromIntegral len))
                                                 Data.ProtoLens.Encoding.Bytes.<?> "raw_sigs"
                                         v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                (Data.ProtoLens.Encoding.Growing.append
                                                   mutable'rawSigs
                                                   y)
                                         loop x v
                                wire -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                                   wire
                                           loop
                                             (Lens.Family2.over Data.ProtoLens.unknownFields
                                                (\ !t -> (:) y t)
                                                x)
                                             mutable'rawSigs
              in
              (do mutable'rawSigs <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       Data.ProtoLens.Encoding.Growing.new
                  loop Data.ProtoLens.defMessage mutable'rawSigs)
                Data.ProtoLens.Encoding.Bytes.<?> "SignResp"
        buildMessage
          = (\ _x ->
               (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                  (\ _v ->
                     (Data.ProtoLens.Encoding.Bytes.putVarInt 10) Data.Monoid.<>
                       (\ bs ->
                          (Data.ProtoLens.Encoding.Bytes.putVarInt
                             (Prelude.fromIntegral (Data.ByteString.length bs)))
                            Data.Monoid.<> Data.ProtoLens.Encoding.Bytes.putBytes bs)
                         _v)
                  (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'rawSigs") _x))
                 Data.Monoid.<>
                 Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData SignResp where
        rnf
          = (\ x__ ->
               Control.DeepSeq.deepseq (_SignResp'_unknownFields x__)
                 (Control.DeepSeq.deepseq (_SignResp'rawSigs x__) (())))
{- | Fields :

    * 'Proto.Signrpc.Signer_Fields.value' @:: Lens' TxOut Data.Int.Int64@
    * 'Proto.Signrpc.Signer_Fields.pkScript' @:: Lens' TxOut Data.ByteString.ByteString@
 -}
data TxOut = TxOut{_TxOut'value :: !Data.Int.Int64,
                   _TxOut'pkScript :: !Data.ByteString.ByteString,
                   _TxOut'_unknownFields :: !Data.ProtoLens.FieldSet}
               deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show TxOut where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField TxOut "value"
           (Data.Int.Int64)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _TxOut'value
               (\ x__ y__ -> x__{_TxOut'value = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Field.HasField TxOut "pkScript"
           (Data.ByteString.ByteString)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _TxOut'pkScript
               (\ x__ y__ -> x__{_TxOut'pkScript = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Message TxOut where
        messageName _ = Data.Text.pack "signrpc.TxOut"
        fieldsByTag
          = let value__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "value"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Data.ProtoLens.Field.field @"value"))
                      :: Data.ProtoLens.FieldDescriptor TxOut
                pkScript__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "pk_script"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Data.ProtoLens.Field.field @"pkScript"))
                      :: Data.ProtoLens.FieldDescriptor TxOut
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, value__field_descriptor),
                 (Data.ProtoLens.Tag 2, pkScript__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _TxOut'_unknownFields
              (\ x__ y__ -> x__{_TxOut'_unknownFields = y__})
        defMessage
          = TxOut{_TxOut'value = Data.ProtoLens.fieldDefault,
                  _TxOut'pkScript = Data.ProtoLens.fieldDefault,
                  _TxOut'_unknownFields = ([])}
        parseMessage
          = let loop :: TxOut -> Data.ProtoLens.Encoding.Bytes.Parser TxOut
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
                                               Data.ProtoLens.Encoding.Bytes.<?> "value"
                                        loop
                                          (Lens.Family2.set (Data.ProtoLens.Field.field @"value") y
                                             x)
                                18 -> do y <- (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                  Data.ProtoLens.Encoding.Bytes.getBytes
                                                    (Prelude.fromIntegral len))
                                                Data.ProtoLens.Encoding.Bytes.<?> "pk_script"
                                         loop
                                           (Lens.Family2.set
                                              (Data.ProtoLens.Field.field @"pkScript")
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
                Data.ProtoLens.Encoding.Bytes.<?> "TxOut"
        buildMessage
          = (\ _x ->
               (let _v
                      = Lens.Family2.view (Data.ProtoLens.Field.field @"value") _x
                  in
                  if (_v) Prelude.== Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty else
                    (Data.ProtoLens.Encoding.Bytes.putVarInt 8) Data.Monoid.<>
                      ((Data.ProtoLens.Encoding.Bytes.putVarInt) Prelude..
                         Prelude.fromIntegral)
                        _v)
                 Data.Monoid.<>
                 (let _v
                        = Lens.Family2.view (Data.ProtoLens.Field.field @"pkScript") _x
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
                   Data.ProtoLens.Encoding.Wire.buildFieldSet
                     (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData TxOut where
        rnf
          = (\ x__ ->
               Control.DeepSeq.deepseq (_TxOut'_unknownFields x__)
                 (Control.DeepSeq.deepseq (_TxOut'value x__)
                    (Control.DeepSeq.deepseq (_TxOut'pkScript x__) (()))))
data Signer = Signer{}
                deriving ()
instance Data.ProtoLens.Service.Types.Service Signer where
        type ServiceName Signer = "Signer"
        type ServicePackage Signer = "signrpc"
        type ServiceMethods Signer =
             '["computeInputScript", "signOutputRaw"]
instance Data.ProtoLens.Service.Types.HasMethodImpl Signer
           "signOutputRaw"
         where
        type MethodName Signer "signOutputRaw" = "SignOutputRaw"
        type MethodInput Signer "signOutputRaw" = SignReq
        type MethodOutput Signer "signOutputRaw" = SignResp
        type MethodStreamingType Signer "signOutputRaw" =
             'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Signer
           "computeInputScript"
         where
        type MethodName Signer "computeInputScript" = "ComputeInputScript"
        type MethodInput Signer "computeInputScript" = SignReq
        type MethodOutput Signer "computeInputScript" = InputScriptResp
        type MethodStreamingType Signer "computeInputScript" =
             'Data.ProtoLens.Service.Types.NonStreaming