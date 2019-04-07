{- This file was auto-generated from autopilotrpc/autopilot.proto by the proto-lens-protoc program. -}
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
module Proto.Autopilotrpc.Autopilot
       (Autopilot(..), ModifyStatusRequest(), ModifyStatusResponse(),
        QueryScoresRequest(), QueryScoresResponse(),
        QueryScoresResponse'HeuristicResult(),
        QueryScoresResponse'HeuristicResult'ScoresEntry(),
        SetScoresRequest(), SetScoresRequest'ScoresEntry(),
        SetScoresResponse(), StatusRequest(), StatusResponse())
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

    * 'Proto.Autopilotrpc.Autopilot_Fields.enable' @:: Lens' ModifyStatusRequest Prelude.Bool@
 -}
data ModifyStatusRequest = ModifyStatusRequest{_ModifyStatusRequest'enable
                                               :: !Prelude.Bool,
                                               _ModifyStatusRequest'_unknownFields ::
                                               !Data.ProtoLens.FieldSet}
                             deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ModifyStatusRequest where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ModifyStatusRequest "enable"
           (Prelude.Bool)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _ModifyStatusRequest'enable
               (\ x__ y__ -> x__{_ModifyStatusRequest'enable = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Message ModifyStatusRequest where
        messageName _ = Data.Text.pack "autopilotrpc.ModifyStatusRequest"
        fieldsByTag
          = let enable__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "enable"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                         Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Data.ProtoLens.Field.field @"enable"))
                      :: Data.ProtoLens.FieldDescriptor ModifyStatusRequest
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, enable__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _ModifyStatusRequest'_unknownFields
              (\ x__ y__ -> x__{_ModifyStatusRequest'_unknownFields = y__})
        defMessage
          = ModifyStatusRequest{_ModifyStatusRequest'enable =
                                  Data.ProtoLens.fieldDefault,
                                _ModifyStatusRequest'_unknownFields = ([])}
        parseMessage
          = let loop ::
                     ModifyStatusRequest ->
                       Data.ProtoLens.Encoding.Bytes.Parser ModifyStatusRequest
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
                                8 -> do y <- (Prelude.fmap ((Prelude./=) 0)
                                                Data.ProtoLens.Encoding.Bytes.getVarInt)
                                               Data.ProtoLens.Encoding.Bytes.<?> "enable"
                                        loop
                                          (Lens.Family2.set (Data.ProtoLens.Field.field @"enable") y
                                             x)
                                wire -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                                   wire
                                           loop
                                             (Lens.Family2.over Data.ProtoLens.unknownFields
                                                (\ !t -> (:) y t)
                                                x)
              in
              (do loop Data.ProtoLens.defMessage)
                Data.ProtoLens.Encoding.Bytes.<?> "ModifyStatusRequest"
        buildMessage
          = (\ _x ->
               (let _v
                      = Lens.Family2.view (Data.ProtoLens.Field.field @"enable") _x
                  in
                  if (_v) Prelude.== Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty else
                    (Data.ProtoLens.Encoding.Bytes.putVarInt 8) Data.Monoid.<>
                      ((Data.ProtoLens.Encoding.Bytes.putVarInt) Prelude..
                         (\ b -> if b then 1 else 0))
                        _v)
                 Data.Monoid.<>
                 Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData ModifyStatusRequest where
        rnf
          = (\ x__ ->
               Control.DeepSeq.deepseq (_ModifyStatusRequest'_unknownFields x__)
                 (Control.DeepSeq.deepseq (_ModifyStatusRequest'enable x__) (())))
{- | Fields :

 -}
data ModifyStatusResponse = ModifyStatusResponse{_ModifyStatusResponse'_unknownFields
                                                 :: !Data.ProtoLens.FieldSet}
                              deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ModifyStatusResponse where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message ModifyStatusResponse where
        messageName _ = Data.Text.pack "autopilotrpc.ModifyStatusResponse"
        fieldsByTag = let in Data.Map.fromList []
        unknownFields
          = Lens.Family2.Unchecked.lens _ModifyStatusResponse'_unknownFields
              (\ x__ y__ -> x__{_ModifyStatusResponse'_unknownFields = y__})
        defMessage
          = ModifyStatusResponse{_ModifyStatusResponse'_unknownFields = ([])}
        parseMessage
          = let loop ::
                     ModifyStatusResponse ->
                       Data.ProtoLens.Encoding.Bytes.Parser ModifyStatusResponse
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
                Data.ProtoLens.Encoding.Bytes.<?> "ModifyStatusResponse"
        buildMessage
          = (\ _x ->
               Data.ProtoLens.Encoding.Wire.buildFieldSet
                 (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData ModifyStatusResponse where
        rnf
          = (\ x__ ->
               Control.DeepSeq.deepseq (_ModifyStatusResponse'_unknownFields x__)
                 (()))
{- | Fields :

    * 'Proto.Autopilotrpc.Autopilot_Fields.pubkeys' @:: Lens' QueryScoresRequest [Data.Text.Text]@
    * 'Proto.Autopilotrpc.Autopilot_Fields.vec'pubkeys' @:: Lens' QueryScoresRequest (Data.Vector.Vector Data.Text.Text)@
    * 'Proto.Autopilotrpc.Autopilot_Fields.ignoreLocalState' @:: Lens' QueryScoresRequest Prelude.Bool@
 -}
data QueryScoresRequest = QueryScoresRequest{_QueryScoresRequest'pubkeys
                                             :: !(Data.Vector.Vector Data.Text.Text),
                                             _QueryScoresRequest'ignoreLocalState :: !Prelude.Bool,
                                             _QueryScoresRequest'_unknownFields ::
                                             !Data.ProtoLens.FieldSet}
                            deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryScoresRequest where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryScoresRequest "pubkeys"
           ([Data.Text.Text])
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _QueryScoresRequest'pubkeys
               (\ x__ y__ -> x__{_QueryScoresRequest'pubkeys = y__}))
              Prelude..
              Lens.Family2.Unchecked.lens Data.Vector.Generic.toList
                (\ _ y__ -> Data.Vector.Generic.fromList y__)
instance Data.ProtoLens.Field.HasField QueryScoresRequest
           "vec'pubkeys"
           (Data.Vector.Vector Data.Text.Text)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _QueryScoresRequest'pubkeys
               (\ x__ y__ -> x__{_QueryScoresRequest'pubkeys = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Field.HasField QueryScoresRequest
           "ignoreLocalState"
           (Prelude.Bool)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _QueryScoresRequest'ignoreLocalState
               (\ x__ y__ -> x__{_QueryScoresRequest'ignoreLocalState = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Message QueryScoresRequest where
        messageName _ = Data.Text.pack "autopilotrpc.QueryScoresRequest"
        fieldsByTag
          = let pubkeys__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "pubkeys"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.RepeatedField Data.ProtoLens.Unpacked
                         (Data.ProtoLens.Field.field @"pubkeys"))
                      :: Data.ProtoLens.FieldDescriptor QueryScoresRequest
                ignoreLocalState__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "ignore_local_state"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                         Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Data.ProtoLens.Field.field @"ignoreLocalState"))
                      :: Data.ProtoLens.FieldDescriptor QueryScoresRequest
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, pubkeys__field_descriptor),
                 (Data.ProtoLens.Tag 2, ignoreLocalState__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _QueryScoresRequest'_unknownFields
              (\ x__ y__ -> x__{_QueryScoresRequest'_unknownFields = y__})
        defMessage
          = QueryScoresRequest{_QueryScoresRequest'pubkeys =
                                 Data.Vector.Generic.empty,
                               _QueryScoresRequest'ignoreLocalState = Data.ProtoLens.fieldDefault,
                               _QueryScoresRequest'_unknownFields = ([])}
        parseMessage
          = let loop ::
                     QueryScoresRequest ->
                       Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector
                         Data.ProtoLens.Encoding.Growing.RealWorld
                         Data.Text.Text
                         -> Data.ProtoLens.Encoding.Bytes.Parser QueryScoresRequest
                loop x mutable'pubkeys
                  = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
                       if end then
                         do frozen'pubkeys <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                   mutable'pubkeys)
                            let missing = [] in
                              if Prelude.null missing then Prelude.return () else
                                Prelude.fail
                                  (("Missing required fields: ") Prelude.++
                                     Prelude.show (missing :: ([Prelude.String])))
                            Prelude.return
                              (Lens.Family2.over Data.ProtoLens.unknownFields
                                 (\ !t -> Prelude.reverse t)
                                 (Lens.Family2.set (Data.ProtoLens.Field.field @"vec'pubkeys")
                                    frozen'pubkeys
                                    x))
                         else
                         do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                            case tag of
                                10 -> do !y <- (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                               Data.ProtoLens.Encoding.Bytes.getBytes
                                                                 (Prelude.fromIntegral len)
                                                   Data.ProtoLens.Encoding.Bytes.runEither
                                                     (case Data.Text.Encoding.decodeUtf8' value of
                                                          Prelude.Left err -> Prelude.Left
                                                                                (Prelude.show err)
                                                          Prelude.Right r -> Prelude.Right r))
                                                 Data.ProtoLens.Encoding.Bytes.<?> "pubkeys"
                                         v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                (Data.ProtoLens.Encoding.Growing.append
                                                   mutable'pubkeys
                                                   y)
                                         loop x v
                                16 -> do y <- (Prelude.fmap ((Prelude./=) 0)
                                                 Data.ProtoLens.Encoding.Bytes.getVarInt)
                                                Data.ProtoLens.Encoding.Bytes.<?>
                                                "ignore_local_state"
                                         loop
                                           (Lens.Family2.set
                                              (Data.ProtoLens.Field.field @"ignoreLocalState")
                                              y
                                              x)
                                           mutable'pubkeys
                                wire -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                                   wire
                                           loop
                                             (Lens.Family2.over Data.ProtoLens.unknownFields
                                                (\ !t -> (:) y t)
                                                x)
                                             mutable'pubkeys
              in
              (do mutable'pubkeys <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       Data.ProtoLens.Encoding.Growing.new
                  loop Data.ProtoLens.defMessage mutable'pubkeys)
                Data.ProtoLens.Encoding.Bytes.<?> "QueryScoresRequest"
        buildMessage
          = (\ _x ->
               (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                  (\ _v ->
                     (Data.ProtoLens.Encoding.Bytes.putVarInt 10) Data.Monoid.<>
                       (((\ bs ->
                            (Data.ProtoLens.Encoding.Bytes.putVarInt
                               (Prelude.fromIntegral (Data.ByteString.length bs)))
                              Data.Monoid.<> Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Prelude.. Data.Text.Encoding.encodeUtf8)
                         _v)
                  (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'pubkeys") _x))
                 Data.Monoid.<>
                 (let _v
                        = Lens.Family2.view
                            (Data.ProtoLens.Field.field @"ignoreLocalState")
                            _x
                    in
                    if (_v) Prelude.== Data.ProtoLens.fieldDefault then
                      Data.Monoid.mempty else
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 16) Data.Monoid.<>
                        ((Data.ProtoLens.Encoding.Bytes.putVarInt) Prelude..
                           (\ b -> if b then 1 else 0))
                          _v)
                   Data.Monoid.<>
                   Data.ProtoLens.Encoding.Wire.buildFieldSet
                     (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData QueryScoresRequest where
        rnf
          = (\ x__ ->
               Control.DeepSeq.deepseq (_QueryScoresRequest'_unknownFields x__)
                 (Control.DeepSeq.deepseq (_QueryScoresRequest'pubkeys x__)
                    (Control.DeepSeq.deepseq (_QueryScoresRequest'ignoreLocalState x__)
                       (()))))
{- | Fields :

    * 'Proto.Autopilotrpc.Autopilot_Fields.results' @:: Lens' QueryScoresResponse [QueryScoresResponse'HeuristicResult]@
    * 'Proto.Autopilotrpc.Autopilot_Fields.vec'results' @:: Lens' QueryScoresResponse
  (Data.Vector.Vector QueryScoresResponse'HeuristicResult)@
 -}
data QueryScoresResponse = QueryScoresResponse{_QueryScoresResponse'results
                                               ::
                                               !(Data.Vector.Vector
                                                   QueryScoresResponse'HeuristicResult),
                                               _QueryScoresResponse'_unknownFields ::
                                               !Data.ProtoLens.FieldSet}
                             deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryScoresResponse where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField QueryScoresResponse
           "results"
           ([QueryScoresResponse'HeuristicResult])
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _QueryScoresResponse'results
               (\ x__ y__ -> x__{_QueryScoresResponse'results = y__}))
              Prelude..
              Lens.Family2.Unchecked.lens Data.Vector.Generic.toList
                (\ _ y__ -> Data.Vector.Generic.fromList y__)
instance Data.ProtoLens.Field.HasField QueryScoresResponse
           "vec'results"
           (Data.Vector.Vector QueryScoresResponse'HeuristicResult)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _QueryScoresResponse'results
               (\ x__ y__ -> x__{_QueryScoresResponse'results = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Message QueryScoresResponse where
        messageName _ = Data.Text.pack "autopilotrpc.QueryScoresResponse"
        fieldsByTag
          = let results__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "results"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor
                           QueryScoresResponse'HeuristicResult)
                      (Data.ProtoLens.RepeatedField Data.ProtoLens.Unpacked
                         (Data.ProtoLens.Field.field @"results"))
                      :: Data.ProtoLens.FieldDescriptor QueryScoresResponse
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, results__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _QueryScoresResponse'_unknownFields
              (\ x__ y__ -> x__{_QueryScoresResponse'_unknownFields = y__})
        defMessage
          = QueryScoresResponse{_QueryScoresResponse'results =
                                  Data.Vector.Generic.empty,
                                _QueryScoresResponse'_unknownFields = ([])}
        parseMessage
          = let loop ::
                     QueryScoresResponse ->
                       Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector
                         Data.ProtoLens.Encoding.Growing.RealWorld
                         QueryScoresResponse'HeuristicResult
                         -> Data.ProtoLens.Encoding.Bytes.Parser QueryScoresResponse
                loop x mutable'results
                  = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
                       if end then
                         do frozen'results <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                   mutable'results)
                            let missing = [] in
                              if Prelude.null missing then Prelude.return () else
                                Prelude.fail
                                  (("Missing required fields: ") Prelude.++
                                     Prelude.show (missing :: ([Prelude.String])))
                            Prelude.return
                              (Lens.Family2.over Data.ProtoLens.unknownFields
                                 (\ !t -> Prelude.reverse t)
                                 (Lens.Family2.set (Data.ProtoLens.Field.field @"vec'results")
                                    frozen'results
                                    x))
                         else
                         do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                            case tag of
                                10 -> do !y <- (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                   Data.ProtoLens.Encoding.Bytes.isolate
                                                     (Prelude.fromIntegral len)
                                                     Data.ProtoLens.parseMessage)
                                                 Data.ProtoLens.Encoding.Bytes.<?> "results"
                                         v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                (Data.ProtoLens.Encoding.Growing.append
                                                   mutable'results
                                                   y)
                                         loop x v
                                wire -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                                   wire
                                           loop
                                             (Lens.Family2.over Data.ProtoLens.unknownFields
                                                (\ !t -> (:) y t)
                                                x)
                                             mutable'results
              in
              (do mutable'results <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       Data.ProtoLens.Encoding.Growing.new
                  loop Data.ProtoLens.defMessage mutable'results)
                Data.ProtoLens.Encoding.Bytes.<?> "QueryScoresResponse"
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
                  (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'results") _x))
                 Data.Monoid.<>
                 Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData QueryScoresResponse where
        rnf
          = (\ x__ ->
               Control.DeepSeq.deepseq (_QueryScoresResponse'_unknownFields x__)
                 (Control.DeepSeq.deepseq (_QueryScoresResponse'results x__) (())))
{- | Fields :

    * 'Proto.Autopilotrpc.Autopilot_Fields.heuristic' @:: Lens' QueryScoresResponse'HeuristicResult Data.Text.Text@
    * 'Proto.Autopilotrpc.Autopilot_Fields.scores' @:: Lens' QueryScoresResponse'HeuristicResult
  (Data.Map.Map Data.Text.Text Prelude.Double)@
 -}
data QueryScoresResponse'HeuristicResult = QueryScoresResponse'HeuristicResult{_QueryScoresResponse'HeuristicResult'heuristic
                                                                               :: !Data.Text.Text,
                                                                               _QueryScoresResponse'HeuristicResult'scores
                                                                               ::
                                                                               !(Data.Map.Map
                                                                                   Data.Text.Text
                                                                                   Prelude.Double),
                                                                               _QueryScoresResponse'HeuristicResult'_unknownFields
                                                                               ::
                                                                               !Data.ProtoLens.FieldSet}
                                             deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show QueryScoresResponse'HeuristicResult where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField
           QueryScoresResponse'HeuristicResult
           "heuristic"
           (Data.Text.Text)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens
               _QueryScoresResponse'HeuristicResult'heuristic
               (\ x__ y__ ->
                  x__{_QueryScoresResponse'HeuristicResult'heuristic = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Field.HasField
           QueryScoresResponse'HeuristicResult
           "scores"
           (Data.Map.Map Data.Text.Text Prelude.Double)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens
               _QueryScoresResponse'HeuristicResult'scores
               (\ x__ y__ ->
                  x__{_QueryScoresResponse'HeuristicResult'scores = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Message QueryScoresResponse'HeuristicResult
         where
        messageName _
          = Data.Text.pack "autopilotrpc.QueryScoresResponse.HeuristicResult"
        fieldsByTag
          = let heuristic__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "heuristic"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Data.ProtoLens.Field.field @"heuristic"))
                      ::
                      Data.ProtoLens.FieldDescriptor QueryScoresResponse'HeuristicResult
                scores__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "scores"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor
                           QueryScoresResponse'HeuristicResult'ScoresEntry)
                      (Data.ProtoLens.MapField (Data.ProtoLens.Field.field @"key")
                         (Data.ProtoLens.Field.field @"value")
                         (Data.ProtoLens.Field.field @"scores"))
                      ::
                      Data.ProtoLens.FieldDescriptor QueryScoresResponse'HeuristicResult
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, heuristic__field_descriptor),
                 (Data.ProtoLens.Tag 2, scores__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens
              _QueryScoresResponse'HeuristicResult'_unknownFields
              (\ x__ y__ ->
                 x__{_QueryScoresResponse'HeuristicResult'_unknownFields = y__})
        defMessage
          = QueryScoresResponse'HeuristicResult{_QueryScoresResponse'HeuristicResult'heuristic
                                                  = Data.ProtoLens.fieldDefault,
                                                _QueryScoresResponse'HeuristicResult'scores =
                                                  Data.Map.empty,
                                                _QueryScoresResponse'HeuristicResult'_unknownFields
                                                  = ([])}
        parseMessage
          = let loop ::
                     QueryScoresResponse'HeuristicResult ->
                       Data.ProtoLens.Encoding.Bytes.Parser
                         QueryScoresResponse'HeuristicResult
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
                                                Data.ProtoLens.Encoding.Bytes.<?> "heuristic"
                                         loop
                                           (Lens.Family2.set
                                              (Data.ProtoLens.Field.field @"heuristic")
                                              y
                                              x)
                                18 -> do !(entry ::
                                             QueryScoresResponse'HeuristicResult'ScoresEntry) <- (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                                                                     Data.ProtoLens.Encoding.Bytes.isolate
                                                                                                       (Prelude.fromIntegral
                                                                                                          len)
                                                                                                       Data.ProtoLens.parseMessage)
                                                                                                   Data.ProtoLens.Encoding.Bytes.<?>
                                                                                                   "scores"
                                         let key
                                               = Lens.Family2.view
                                                   (Data.ProtoLens.Field.field @"key")
                                                   entry
                                             value
                                               = Lens.Family2.view
                                                   (Data.ProtoLens.Field.field @"value")
                                                   entry
                                           in
                                           loop
                                             (Lens.Family2.over
                                                (Data.ProtoLens.Field.field @"scores")
                                                (\ !t -> Data.Map.insert key value t)
                                                x)
                                wire -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                                   wire
                                           loop
                                             (Lens.Family2.over Data.ProtoLens.unknownFields
                                                (\ !t -> (:) y t)
                                                x)
              in
              (do loop Data.ProtoLens.defMessage)
                Data.ProtoLens.Encoding.Bytes.<?> "HeuristicResult"
        buildMessage
          = (\ _x ->
               (let _v
                      = Lens.Family2.view (Data.ProtoLens.Field.field @"heuristic") _x
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
                 (Data.Monoid.mconcat
                    (Prelude.map
                       (\ _v ->
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 18) Data.Monoid.<>
                            (((\ bs ->
                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                    (Prelude.fromIntegral (Data.ByteString.length bs)))
                                   Data.Monoid.<> Data.ProtoLens.Encoding.Bytes.putBytes bs))
                               Prelude.. Data.ProtoLens.encodeMessage)
                              (Lens.Family2.set (Data.ProtoLens.Field.field @"key")
                                 (Prelude.fst _v)
                                 (Lens.Family2.set (Data.ProtoLens.Field.field @"value")
                                    (Prelude.snd _v)
                                    (Data.ProtoLens.defMessage ::
                                       QueryScoresResponse'HeuristicResult'ScoresEntry))))
                       (Data.Map.toList
                          (Lens.Family2.view (Data.ProtoLens.Field.field @"scores") _x))))
                   Data.Monoid.<>
                   Data.ProtoLens.Encoding.Wire.buildFieldSet
                     (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData QueryScoresResponse'HeuristicResult
         where
        rnf
          = (\ x__ ->
               Control.DeepSeq.deepseq
                 (_QueryScoresResponse'HeuristicResult'_unknownFields x__)
                 (Control.DeepSeq.deepseq
                    (_QueryScoresResponse'HeuristicResult'heuristic x__)
                    (Control.DeepSeq.deepseq
                       (_QueryScoresResponse'HeuristicResult'scores x__)
                       (()))))
{- | Fields :

    * 'Proto.Autopilotrpc.Autopilot_Fields.key' @:: Lens' QueryScoresResponse'HeuristicResult'ScoresEntry
  Data.Text.Text@
    * 'Proto.Autopilotrpc.Autopilot_Fields.value' @:: Lens' QueryScoresResponse'HeuristicResult'ScoresEntry
  Prelude.Double@
 -}
data QueryScoresResponse'HeuristicResult'ScoresEntry = QueryScoresResponse'HeuristicResult'ScoresEntry{_QueryScoresResponse'HeuristicResult'ScoresEntry'key
                                                                                                       ::
                                                                                                       !Data.Text.Text,
                                                                                                       _QueryScoresResponse'HeuristicResult'ScoresEntry'value
                                                                                                       ::
                                                                                                       !Prelude.Double,
                                                                                                       _QueryScoresResponse'HeuristicResult'ScoresEntry'_unknownFields
                                                                                                       ::
                                                                                                       !Data.ProtoLens.FieldSet}
                                                         deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show
           QueryScoresResponse'HeuristicResult'ScoresEntry
         where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField
           QueryScoresResponse'HeuristicResult'ScoresEntry
           "key"
           (Data.Text.Text)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens
               _QueryScoresResponse'HeuristicResult'ScoresEntry'key
               (\ x__ y__ ->
                  x__{_QueryScoresResponse'HeuristicResult'ScoresEntry'key = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Field.HasField
           QueryScoresResponse'HeuristicResult'ScoresEntry
           "value"
           (Prelude.Double)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens
               _QueryScoresResponse'HeuristicResult'ScoresEntry'value
               (\ x__ y__ ->
                  x__{_QueryScoresResponse'HeuristicResult'ScoresEntry'value = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Message
           QueryScoresResponse'HeuristicResult'ScoresEntry
         where
        messageName _
          = Data.Text.pack
              "autopilotrpc.QueryScoresResponse.HeuristicResult.ScoresEntry"
        fieldsByTag
          = let key__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "key"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Data.ProtoLens.Field.field @"key"))
                      ::
                      Data.ProtoLens.FieldDescriptor
                        QueryScoresResponse'HeuristicResult'ScoresEntry
                value__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "value"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.DoubleField ::
                         Data.ProtoLens.FieldTypeDescriptor Prelude.Double)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Data.ProtoLens.Field.field @"value"))
                      ::
                      Data.ProtoLens.FieldDescriptor
                        QueryScoresResponse'HeuristicResult'ScoresEntry
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, key__field_descriptor),
                 (Data.ProtoLens.Tag 2, value__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens
              _QueryScoresResponse'HeuristicResult'ScoresEntry'_unknownFields
              (\ x__ y__ ->
                 x__{_QueryScoresResponse'HeuristicResult'ScoresEntry'_unknownFields
                       = y__})
        defMessage
          = QueryScoresResponse'HeuristicResult'ScoresEntry{_QueryScoresResponse'HeuristicResult'ScoresEntry'key
                                                              = Data.ProtoLens.fieldDefault,
                                                            _QueryScoresResponse'HeuristicResult'ScoresEntry'value
                                                              = Data.ProtoLens.fieldDefault,
                                                            _QueryScoresResponse'HeuristicResult'ScoresEntry'_unknownFields
                                                              = ([])}
        parseMessage
          = let loop ::
                     QueryScoresResponse'HeuristicResult'ScoresEntry ->
                       Data.ProtoLens.Encoding.Bytes.Parser
                         QueryScoresResponse'HeuristicResult'ScoresEntry
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
                                                Data.ProtoLens.Encoding.Bytes.<?> "key"
                                         loop
                                           (Lens.Family2.set (Data.ProtoLens.Field.field @"key") y
                                              x)
                                17 -> do y <- (Prelude.fmap
                                                 Data.ProtoLens.Encoding.Bytes.wordToDouble
                                                 Data.ProtoLens.Encoding.Bytes.getFixed64)
                                                Data.ProtoLens.Encoding.Bytes.<?> "value"
                                         loop
                                           (Lens.Family2.set (Data.ProtoLens.Field.field @"value") y
                                              x)
                                wire -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                                   wire
                                           loop
                                             (Lens.Family2.over Data.ProtoLens.unknownFields
                                                (\ !t -> (:) y t)
                                                x)
              in
              (do loop Data.ProtoLens.defMessage)
                Data.ProtoLens.Encoding.Bytes.<?> "ScoresEntry"
        buildMessage
          = (\ _x ->
               (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"key") _x
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
                        = Lens.Family2.view (Data.ProtoLens.Field.field @"value") _x
                    in
                    if (_v) Prelude.== Data.ProtoLens.fieldDefault then
                      Data.Monoid.mempty else
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 17) Data.Monoid.<>
                        ((Data.ProtoLens.Encoding.Bytes.putFixed64) Prelude..
                           Data.ProtoLens.Encoding.Bytes.doubleToWord)
                          _v)
                   Data.Monoid.<>
                   Data.ProtoLens.Encoding.Wire.buildFieldSet
                     (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData
           QueryScoresResponse'HeuristicResult'ScoresEntry
         where
        rnf
          = (\ x__ ->
               Control.DeepSeq.deepseq
                 (_QueryScoresResponse'HeuristicResult'ScoresEntry'_unknownFields
                    x__)
                 (Control.DeepSeq.deepseq
                    (_QueryScoresResponse'HeuristicResult'ScoresEntry'key x__)
                    (Control.DeepSeq.deepseq
                       (_QueryScoresResponse'HeuristicResult'ScoresEntry'value x__)
                       (()))))
{- | Fields :

    * 'Proto.Autopilotrpc.Autopilot_Fields.heuristic' @:: Lens' SetScoresRequest Data.Text.Text@
    * 'Proto.Autopilotrpc.Autopilot_Fields.scores' @:: Lens' SetScoresRequest (Data.Map.Map Data.Text.Text Prelude.Double)@
 -}
data SetScoresRequest = SetScoresRequest{_SetScoresRequest'heuristic
                                         :: !Data.Text.Text,
                                         _SetScoresRequest'scores ::
                                         !(Data.Map.Map Data.Text.Text Prelude.Double),
                                         _SetScoresRequest'_unknownFields ::
                                         !Data.ProtoLens.FieldSet}
                          deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show SetScoresRequest where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField SetScoresRequest "heuristic"
           (Data.Text.Text)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _SetScoresRequest'heuristic
               (\ x__ y__ -> x__{_SetScoresRequest'heuristic = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Field.HasField SetScoresRequest "scores"
           (Data.Map.Map Data.Text.Text Prelude.Double)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _SetScoresRequest'scores
               (\ x__ y__ -> x__{_SetScoresRequest'scores = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Message SetScoresRequest where
        messageName _ = Data.Text.pack "autopilotrpc.SetScoresRequest"
        fieldsByTag
          = let heuristic__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "heuristic"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Data.ProtoLens.Field.field @"heuristic"))
                      :: Data.ProtoLens.FieldDescriptor SetScoresRequest
                scores__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "scores"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor SetScoresRequest'ScoresEntry)
                      (Data.ProtoLens.MapField (Data.ProtoLens.Field.field @"key")
                         (Data.ProtoLens.Field.field @"value")
                         (Data.ProtoLens.Field.field @"scores"))
                      :: Data.ProtoLens.FieldDescriptor SetScoresRequest
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, heuristic__field_descriptor),
                 (Data.ProtoLens.Tag 2, scores__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _SetScoresRequest'_unknownFields
              (\ x__ y__ -> x__{_SetScoresRequest'_unknownFields = y__})
        defMessage
          = SetScoresRequest{_SetScoresRequest'heuristic =
                               Data.ProtoLens.fieldDefault,
                             _SetScoresRequest'scores = Data.Map.empty,
                             _SetScoresRequest'_unknownFields = ([])}
        parseMessage
          = let loop ::
                     SetScoresRequest ->
                       Data.ProtoLens.Encoding.Bytes.Parser SetScoresRequest
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
                                                Data.ProtoLens.Encoding.Bytes.<?> "heuristic"
                                         loop
                                           (Lens.Family2.set
                                              (Data.ProtoLens.Field.field @"heuristic")
                                              y
                                              x)
                                18 -> do !(entry ::
                                             SetScoresRequest'ScoresEntry) <- (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                                                  Data.ProtoLens.Encoding.Bytes.isolate
                                                                                    (Prelude.fromIntegral
                                                                                       len)
                                                                                    Data.ProtoLens.parseMessage)
                                                                                Data.ProtoLens.Encoding.Bytes.<?>
                                                                                "scores"
                                         let key
                                               = Lens.Family2.view
                                                   (Data.ProtoLens.Field.field @"key")
                                                   entry
                                             value
                                               = Lens.Family2.view
                                                   (Data.ProtoLens.Field.field @"value")
                                                   entry
                                           in
                                           loop
                                             (Lens.Family2.over
                                                (Data.ProtoLens.Field.field @"scores")
                                                (\ !t -> Data.Map.insert key value t)
                                                x)
                                wire -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                                   wire
                                           loop
                                             (Lens.Family2.over Data.ProtoLens.unknownFields
                                                (\ !t -> (:) y t)
                                                x)
              in
              (do loop Data.ProtoLens.defMessage)
                Data.ProtoLens.Encoding.Bytes.<?> "SetScoresRequest"
        buildMessage
          = (\ _x ->
               (let _v
                      = Lens.Family2.view (Data.ProtoLens.Field.field @"heuristic") _x
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
                 (Data.Monoid.mconcat
                    (Prelude.map
                       (\ _v ->
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 18) Data.Monoid.<>
                            (((\ bs ->
                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                    (Prelude.fromIntegral (Data.ByteString.length bs)))
                                   Data.Monoid.<> Data.ProtoLens.Encoding.Bytes.putBytes bs))
                               Prelude.. Data.ProtoLens.encodeMessage)
                              (Lens.Family2.set (Data.ProtoLens.Field.field @"key")
                                 (Prelude.fst _v)
                                 (Lens.Family2.set (Data.ProtoLens.Field.field @"value")
                                    (Prelude.snd _v)
                                    (Data.ProtoLens.defMessage :: SetScoresRequest'ScoresEntry))))
                       (Data.Map.toList
                          (Lens.Family2.view (Data.ProtoLens.Field.field @"scores") _x))))
                   Data.Monoid.<>
                   Data.ProtoLens.Encoding.Wire.buildFieldSet
                     (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData SetScoresRequest where
        rnf
          = (\ x__ ->
               Control.DeepSeq.deepseq (_SetScoresRequest'_unknownFields x__)
                 (Control.DeepSeq.deepseq (_SetScoresRequest'heuristic x__)
                    (Control.DeepSeq.deepseq (_SetScoresRequest'scores x__) (()))))
{- | Fields :

    * 'Proto.Autopilotrpc.Autopilot_Fields.key' @:: Lens' SetScoresRequest'ScoresEntry Data.Text.Text@
    * 'Proto.Autopilotrpc.Autopilot_Fields.value' @:: Lens' SetScoresRequest'ScoresEntry Prelude.Double@
 -}
data SetScoresRequest'ScoresEntry = SetScoresRequest'ScoresEntry{_SetScoresRequest'ScoresEntry'key
                                                                 :: !Data.Text.Text,
                                                                 _SetScoresRequest'ScoresEntry'value
                                                                 :: !Prelude.Double,
                                                                 _SetScoresRequest'ScoresEntry'_unknownFields
                                                                 :: !Data.ProtoLens.FieldSet}
                                      deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show SetScoresRequest'ScoresEntry where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField SetScoresRequest'ScoresEntry
           "key"
           (Data.Text.Text)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _SetScoresRequest'ScoresEntry'key
               (\ x__ y__ -> x__{_SetScoresRequest'ScoresEntry'key = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Field.HasField SetScoresRequest'ScoresEntry
           "value"
           (Prelude.Double)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _SetScoresRequest'ScoresEntry'value
               (\ x__ y__ -> x__{_SetScoresRequest'ScoresEntry'value = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Message SetScoresRequest'ScoresEntry where
        messageName _
          = Data.Text.pack "autopilotrpc.SetScoresRequest.ScoresEntry"
        fieldsByTag
          = let key__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "key"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Data.ProtoLens.Field.field @"key"))
                      :: Data.ProtoLens.FieldDescriptor SetScoresRequest'ScoresEntry
                value__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "value"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.DoubleField ::
                         Data.ProtoLens.FieldTypeDescriptor Prelude.Double)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Data.ProtoLens.Field.field @"value"))
                      :: Data.ProtoLens.FieldDescriptor SetScoresRequest'ScoresEntry
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, key__field_descriptor),
                 (Data.ProtoLens.Tag 2, value__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens
              _SetScoresRequest'ScoresEntry'_unknownFields
              (\ x__ y__ ->
                 x__{_SetScoresRequest'ScoresEntry'_unknownFields = y__})
        defMessage
          = SetScoresRequest'ScoresEntry{_SetScoresRequest'ScoresEntry'key =
                                           Data.ProtoLens.fieldDefault,
                                         _SetScoresRequest'ScoresEntry'value =
                                           Data.ProtoLens.fieldDefault,
                                         _SetScoresRequest'ScoresEntry'_unknownFields = ([])}
        parseMessage
          = let loop ::
                     SetScoresRequest'ScoresEntry ->
                       Data.ProtoLens.Encoding.Bytes.Parser SetScoresRequest'ScoresEntry
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
                                                Data.ProtoLens.Encoding.Bytes.<?> "key"
                                         loop
                                           (Lens.Family2.set (Data.ProtoLens.Field.field @"key") y
                                              x)
                                17 -> do y <- (Prelude.fmap
                                                 Data.ProtoLens.Encoding.Bytes.wordToDouble
                                                 Data.ProtoLens.Encoding.Bytes.getFixed64)
                                                Data.ProtoLens.Encoding.Bytes.<?> "value"
                                         loop
                                           (Lens.Family2.set (Data.ProtoLens.Field.field @"value") y
                                              x)
                                wire -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                                   wire
                                           loop
                                             (Lens.Family2.over Data.ProtoLens.unknownFields
                                                (\ !t -> (:) y t)
                                                x)
              in
              (do loop Data.ProtoLens.defMessage)
                Data.ProtoLens.Encoding.Bytes.<?> "ScoresEntry"
        buildMessage
          = (\ _x ->
               (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"key") _x
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
                        = Lens.Family2.view (Data.ProtoLens.Field.field @"value") _x
                    in
                    if (_v) Prelude.== Data.ProtoLens.fieldDefault then
                      Data.Monoid.mempty else
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 17) Data.Monoid.<>
                        ((Data.ProtoLens.Encoding.Bytes.putFixed64) Prelude..
                           Data.ProtoLens.Encoding.Bytes.doubleToWord)
                          _v)
                   Data.Monoid.<>
                   Data.ProtoLens.Encoding.Wire.buildFieldSet
                     (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData SetScoresRequest'ScoresEntry where
        rnf
          = (\ x__ ->
               Control.DeepSeq.deepseq
                 (_SetScoresRequest'ScoresEntry'_unknownFields x__)
                 (Control.DeepSeq.deepseq (_SetScoresRequest'ScoresEntry'key x__)
                    (Control.DeepSeq.deepseq (_SetScoresRequest'ScoresEntry'value x__)
                       (()))))
{- | Fields :

 -}
data SetScoresResponse = SetScoresResponse{_SetScoresResponse'_unknownFields
                                           :: !Data.ProtoLens.FieldSet}
                           deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show SetScoresResponse where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message SetScoresResponse where
        messageName _ = Data.Text.pack "autopilotrpc.SetScoresResponse"
        fieldsByTag = let in Data.Map.fromList []
        unknownFields
          = Lens.Family2.Unchecked.lens _SetScoresResponse'_unknownFields
              (\ x__ y__ -> x__{_SetScoresResponse'_unknownFields = y__})
        defMessage
          = SetScoresResponse{_SetScoresResponse'_unknownFields = ([])}
        parseMessage
          = let loop ::
                     SetScoresResponse ->
                       Data.ProtoLens.Encoding.Bytes.Parser SetScoresResponse
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
                Data.ProtoLens.Encoding.Bytes.<?> "SetScoresResponse"
        buildMessage
          = (\ _x ->
               Data.ProtoLens.Encoding.Wire.buildFieldSet
                 (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData SetScoresResponse where
        rnf
          = (\ x__ ->
               Control.DeepSeq.deepseq (_SetScoresResponse'_unknownFields x__)
                 (()))
{- | Fields :

 -}
data StatusRequest = StatusRequest{_StatusRequest'_unknownFields ::
                                   !Data.ProtoLens.FieldSet}
                       deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show StatusRequest where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message StatusRequest where
        messageName _ = Data.Text.pack "autopilotrpc.StatusRequest"
        fieldsByTag = let in Data.Map.fromList []
        unknownFields
          = Lens.Family2.Unchecked.lens _StatusRequest'_unknownFields
              (\ x__ y__ -> x__{_StatusRequest'_unknownFields = y__})
        defMessage = StatusRequest{_StatusRequest'_unknownFields = ([])}
        parseMessage
          = let loop ::
                     StatusRequest -> Data.ProtoLens.Encoding.Bytes.Parser StatusRequest
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
                Data.ProtoLens.Encoding.Bytes.<?> "StatusRequest"
        buildMessage
          = (\ _x ->
               Data.ProtoLens.Encoding.Wire.buildFieldSet
                 (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData StatusRequest where
        rnf
          = (\ x__ ->
               Control.DeepSeq.deepseq (_StatusRequest'_unknownFields x__) (()))
{- | Fields :

    * 'Proto.Autopilotrpc.Autopilot_Fields.active' @:: Lens' StatusResponse Prelude.Bool@
 -}
data StatusResponse = StatusResponse{_StatusResponse'active ::
                                     !Prelude.Bool,
                                     _StatusResponse'_unknownFields :: !Data.ProtoLens.FieldSet}
                        deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show StatusResponse where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField StatusResponse "active"
           (Prelude.Bool)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _StatusResponse'active
               (\ x__ y__ -> x__{_StatusResponse'active = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Message StatusResponse where
        messageName _ = Data.Text.pack "autopilotrpc.StatusResponse"
        fieldsByTag
          = let active__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "active"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                         Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Data.ProtoLens.Field.field @"active"))
                      :: Data.ProtoLens.FieldDescriptor StatusResponse
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, active__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _StatusResponse'_unknownFields
              (\ x__ y__ -> x__{_StatusResponse'_unknownFields = y__})
        defMessage
          = StatusResponse{_StatusResponse'active =
                             Data.ProtoLens.fieldDefault,
                           _StatusResponse'_unknownFields = ([])}
        parseMessage
          = let loop ::
                     StatusResponse ->
                       Data.ProtoLens.Encoding.Bytes.Parser StatusResponse
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
                                8 -> do y <- (Prelude.fmap ((Prelude./=) 0)
                                                Data.ProtoLens.Encoding.Bytes.getVarInt)
                                               Data.ProtoLens.Encoding.Bytes.<?> "active"
                                        loop
                                          (Lens.Family2.set (Data.ProtoLens.Field.field @"active") y
                                             x)
                                wire -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                                   wire
                                           loop
                                             (Lens.Family2.over Data.ProtoLens.unknownFields
                                                (\ !t -> (:) y t)
                                                x)
              in
              (do loop Data.ProtoLens.defMessage)
                Data.ProtoLens.Encoding.Bytes.<?> "StatusResponse"
        buildMessage
          = (\ _x ->
               (let _v
                      = Lens.Family2.view (Data.ProtoLens.Field.field @"active") _x
                  in
                  if (_v) Prelude.== Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty else
                    (Data.ProtoLens.Encoding.Bytes.putVarInt 8) Data.Monoid.<>
                      ((Data.ProtoLens.Encoding.Bytes.putVarInt) Prelude..
                         (\ b -> if b then 1 else 0))
                        _v)
                 Data.Monoid.<>
                 Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData StatusResponse where
        rnf
          = (\ x__ ->
               Control.DeepSeq.deepseq (_StatusResponse'_unknownFields x__)
                 (Control.DeepSeq.deepseq (_StatusResponse'active x__) (())))
data Autopilot = Autopilot{}
                   deriving ()
instance Data.ProtoLens.Service.Types.Service Autopilot where
        type ServiceName Autopilot = "Autopilot"
        type ServicePackage Autopilot = "autopilotrpc"
        type ServiceMethods Autopilot =
             '["modifyStatus", "queryScores", "setScores", "status"]
instance Data.ProtoLens.Service.Types.HasMethodImpl Autopilot
           "status"
         where
        type MethodName Autopilot "status" = "Status"
        type MethodInput Autopilot "status" = StatusRequest
        type MethodOutput Autopilot "status" = StatusResponse
        type MethodStreamingType Autopilot "status" =
             'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Autopilot
           "modifyStatus"
         where
        type MethodName Autopilot "modifyStatus" = "ModifyStatus"
        type MethodInput Autopilot "modifyStatus" = ModifyStatusRequest
        type MethodOutput Autopilot "modifyStatus" = ModifyStatusResponse
        type MethodStreamingType Autopilot "modifyStatus" =
             'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Autopilot
           "queryScores"
         where
        type MethodName Autopilot "queryScores" = "QueryScores"
        type MethodInput Autopilot "queryScores" = QueryScoresRequest
        type MethodOutput Autopilot "queryScores" = QueryScoresResponse
        type MethodStreamingType Autopilot "queryScores" =
             'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Autopilot
           "setScores"
         where
        type MethodName Autopilot "setScores" = "SetScores"
        type MethodInput Autopilot "setScores" = SetScoresRequest
        type MethodOutput Autopilot "setScores" = SetScoresResponse
        type MethodStreamingType Autopilot "setScores" =
             'Data.ProtoLens.Service.Types.NonStreaming