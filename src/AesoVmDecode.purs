module Aeso.Vm.Decode(erlps__from_aevm__3,
                      erlps__from_fate__2) where
{-
This file has been autogenerated
DO NOT EDIT - Your changes WILL be overwritten
Use this code at your own risk - the authors are just a mischievous raccoon and a haskell devote
Erlscripten v0.2.0
-}

import Prelude
import Data.BigInt as DBI
import Data.Array as DA
import Data.Maybe as DM
import Data.Map as Map
import Data.Tuple as DT
import Erlang.Builtins as BIF
import Erlang.Binary as BIN
import Erlang.Helpers
import Erlang.Exception as EXC
import Erlang.Type
import Partial.Unsafe (unsafePartial)


erlps__address_literal__2 :: ErlangFun
erlps__address_literal__2 [type_0, n_1] =
  let
    tup_el_4 = ErlangBinary (BIN.fromInt n_1 (toErl 256) 1 BIN.Big)
  in ErlangTuple [type_0, ErlangEmptyList, tup_el_4]
erlps__address_literal__2 [arg_6, arg_7] =
  EXC.function_clause unit
erlps__address_literal__2 args =
  EXC.badarity (ErlangFun 2 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__from_aevm__3 :: ErlangFun
erlps__from_aevm__3 [(ErlangAtom "word"),
                     (ErlangTuple [(ErlangAtom "id"), _,
                                   (ErlangCons (ErlangInt num_0) (ErlangCons (ErlangInt num_1) (ErlangCons (ErlangInt num_2) (ErlangCons (ErlangInt num_3) (ErlangCons (ErlangInt num_4) (ErlangCons (ErlangInt num_5) (ErlangCons (ErlangInt num_6) (ErlangEmptyList))))))))]),
                     n_7]
  | (ErlangInt num_0) == (toErl 97)
  , (ErlangInt num_1) == (toErl 100)
  , (ErlangInt num_2) == (toErl 100)
  , (ErlangInt num_3) == (toErl 114)
  , (ErlangInt num_4) == (toErl 101)
  , (ErlangInt num_5) == (toErl 115)
  , (ErlangInt num_6) == (toErl 115) =
  erlps__address_literal__2 [ErlangAtom "account_pubkey", n_7]
erlps__from_aevm__3 [(ErlangAtom "word"),
                     (ErlangTuple [(ErlangAtom "app_t"), _,
                                   (ErlangTuple [(ErlangAtom "id"), _,
                                                 (ErlangCons (ErlangInt num_0) (ErlangCons (ErlangInt num_1) (ErlangCons (ErlangInt num_2) (ErlangCons (ErlangInt num_3) (ErlangCons (ErlangInt num_4) (ErlangCons (ErlangInt num_5) (ErlangEmptyList)))))))]),
                                   _]),
                     n_6]
  | (ErlangInt num_0) == (toErl 111)
  , (ErlangInt num_1) == (toErl 114)
  , (ErlangInt num_2) == (toErl 97)
  , (ErlangInt num_3) == (toErl 99)
  , (ErlangInt num_4) == (toErl 108)
  , (ErlangInt num_5) == (toErl 101) =
  erlps__address_literal__2 [ErlangAtom "oracle_pubkey", n_6]
erlps__from_aevm__3 [(ErlangAtom "word"),
                     (ErlangTuple [(ErlangAtom "app_t"), _,
                                   (ErlangTuple [(ErlangAtom "id"), _,
                                                 (ErlangCons (ErlangInt num_0) (ErlangCons (ErlangInt num_1) (ErlangCons (ErlangInt num_2) (ErlangCons (ErlangInt num_3) (ErlangCons (ErlangInt num_4) (ErlangCons (ErlangInt num_5) (ErlangCons (ErlangInt num_6) (ErlangCons (ErlangInt num_7) (ErlangCons (ErlangInt num_8) (ErlangCons (ErlangInt num_9) (ErlangCons (ErlangInt num_10) (ErlangCons (ErlangInt num_11) (ErlangEmptyList)))))))))))))]),
                                   _]),
                     n_12]
  | (ErlangInt num_0) == (toErl 111)
  , (ErlangInt num_1) == (toErl 114)
  , (ErlangInt num_2) == (toErl 97)
  , (ErlangInt num_3) == (toErl 99)
  , (ErlangInt num_4) == (toErl 108)
  , (ErlangInt num_5) == (toErl 101)
  , (ErlangInt num_6) == (toErl 95)
  , (ErlangInt num_7) == (toErl 113)
  , (ErlangInt num_8) == (toErl 117)
  , (ErlangInt num_9) == (toErl 101)
  , (ErlangInt num_10) == (toErl 114)
  , (ErlangInt num_11) == (toErl 121) =
  erlps__address_literal__2 [ErlangAtom "oracle_query_id", n_12]
erlps__from_aevm__3 [(ErlangAtom "word"),
                     (ErlangTuple [(ErlangAtom "con"), _, _name_0]), n_1]
  =
  erlps__address_literal__2 [ErlangAtom "contract_pubkey", n_1]
erlps__from_aevm__3 [(ErlangAtom "word"),
                     (ErlangTuple [(ErlangAtom "id"), _,
                                   (ErlangCons (ErlangInt num_0) (ErlangCons (ErlangInt num_1) (ErlangCons (ErlangInt num_2) (ErlangEmptyList))))]),
                     n0_3]
  | (ErlangInt num_0) == (toErl 105)
  , (ErlangInt num_1) == (toErl 110)
  , (ErlangInt num_2) == (toErl 116) =
  let
    matchExpr_9 =
      ErlangBinary (BIN.fromInt n0_3 (toErl 256) 1 BIN.Big)
  in
    case matchExpr_9 of
      (ErlangBinary binSeg_5) | (ErlangInt size_6) <- (toErl 256)
                              , (BIN.Ok n_8 bin_7) <-
                                  (BIN.chopInt binSeg_5 size_6 1 BIN.Big
                                     BIN.Signed)
                              , BIN.empty bin_7 ->
        case ErlangAtom "true" of
          _ | weakLt n_8 (toErl 0) ->
            let   
              head_12 = ErlangTuple [ErlangAtom "format", ErlangAtom "prefix"]
            in let tup_el_16 = ErlangTuple [ErlangAtom "-", ErlangEmptyList]
            in let tup_el_23 = BIF.erlang__op_neg [n_8]
            in let
              head_20 =
                ErlangTuple [ErlangAtom "int", ErlangEmptyList, tup_el_23]
            in
              ErlangTuple
                [ErlangAtom "app", ErlangCons head_12 ErlangEmptyList,
                 tup_el_16, ErlangCons head_20 ErlangEmptyList]
          _ -> ErlangTuple [ErlangAtom "int", ErlangEmptyList, n_8]
      _ -> EXC.badmatch matchExpr_9
erlps__from_aevm__3 [(ErlangAtom "word"),
                     (ErlangTuple [(ErlangAtom "id"), _,
                                   (ErlangCons (ErlangInt num_0) (ErlangCons (ErlangInt num_1) (ErlangCons (ErlangInt num_2) (ErlangCons (ErlangInt num_3) (ErlangEmptyList)))))]),
                     n0_4]
  | (ErlangInt num_0) == (toErl 98)
  , (ErlangInt num_1) == (toErl 105)
  , (ErlangInt num_2) == (toErl 116)
  , (ErlangInt num_3) == (toErl 115) =
  let
    matchExpr_10 =
      ErlangBinary (BIN.fromInt n0_4 (toErl 256) 1 BIN.Big)
  in
    case matchExpr_10 of
      (ErlangBinary binSeg_6) | (ErlangInt size_7) <- (toErl 256)
                              , (BIN.Ok n_9 bin_8) <-
                                  (BIN.chopInt binSeg_6 size_7 1 BIN.Big
                                     BIN.Signed)
                              , BIN.empty bin_8 ->
        erlps__make_bits__1 [n_9]
      _ -> EXC.badmatch matchExpr_10
erlps__from_aevm__3 [(ErlangAtom "word"),
                     (ErlangTuple [(ErlangAtom "id"), _,
                                   (ErlangCons (ErlangInt num_0) (ErlangCons (ErlangInt num_1) (ErlangCons (ErlangInt num_2) (ErlangCons (ErlangInt num_3) (ErlangEmptyList)))))]),
                     n_4]
  | (ErlangInt num_0) == (toErl 98)
  , (ErlangInt num_1) == (toErl 111)
  , (ErlangInt num_2) == (toErl 111)
  , (ErlangInt num_3) == (toErl 108) =
  let    rop_9 = toErl 0
  in let tup_el_7 = BIF.erlang__op_neq [n_4, rop_9]
  in ErlangTuple [ErlangAtom "bool", ErlangEmptyList, tup_el_7]
erlps__from_aevm__3 [(ErlangAtom "word"),
                     (ErlangTuple [(ErlangAtom "bytes_t"), _, len_0]), val_1]
  | weakLeq len_0 (toErl 32) =
  let
    matchExpr_7 =
      ErlangBinary (BIN.fromInt val_1 (toErl 32) 8 BIN.Big)
  in
    case matchExpr_7 of
      (ErlangBinary binSeg_3) | (ErlangInt size_4) <- (len_0)
                              , (BIN.Ok bytes_6 bin_5) <-
                                  (BIN.chopInt binSeg_3 size_4 8 BIN.Big
                                     BIN.Unsigned) ->
        let
          tup_el_10 = ErlangBinary (BIN.fromInt bytes_6 len_0 8 BIN.Big)
        in ErlangTuple [ErlangAtom "bytes", ErlangEmptyList, tup_el_10]
      _ -> EXC.badmatch matchExpr_7
erlps__from_aevm__3 [(ErlangTuple [(ErlangAtom "tuple"), _]),
                     (ErlangTuple [(ErlangAtom "bytes_t"), _, len_0]), val_1]
  =
  let    lcSrc_6 = BIF.erlang__tuple_to_list__1 [val_1]
  in let
    arg_5 =
      BIN.concatErl
        (flmap
           (\ lc_9 ->
              let
                lcRet_10 = ErlangBinary (BIN.fromInt lc_9 (toErl 32) 8 BIN.Big)
              in ErlangCons lcRet_10 ErlangEmptyList)
           lcSrc_6)
  in let arg_12 = toErl 0
  in let tup_el_4 = BIF.binary__part__3 [arg_5, arg_12, len_0]
  in ErlangTuple [ErlangAtom "bytes", ErlangEmptyList, tup_el_4]
erlps__from_aevm__3 [(ErlangAtom "string"),
                     (ErlangTuple [(ErlangAtom "id"), _,
                                   (ErlangCons (ErlangInt num_0) (ErlangCons (ErlangInt num_1) (ErlangCons (ErlangInt num_2) (ErlangCons (ErlangInt num_3) (ErlangCons (ErlangInt num_4) (ErlangCons (ErlangInt num_5) (ErlangEmptyList)))))))]),
                     s_6]
  | (ErlangInt num_0) == (toErl 115)
  , (ErlangInt num_1) == (toErl 116)
  , (ErlangInt num_2) == (toErl 114)
  , (ErlangInt num_3) == (toErl 105)
  , (ErlangInt num_4) == (toErl 110)
  , (ErlangInt num_5) == (toErl 103) =
  ErlangTuple [ErlangAtom "string", ErlangEmptyList, s_6]
erlps__from_aevm__3 [(ErlangTuple [(ErlangAtom "list"),
                                   vmtype_0]),
                     (ErlangTuple [(ErlangAtom "app_t"), _,
                                   (ErlangTuple [(ErlangAtom "id"), _,
                                                 (ErlangCons (ErlangInt num_1) (ErlangCons (ErlangInt num_2) (ErlangCons (ErlangInt num_3) (ErlangCons (ErlangInt num_4) (ErlangEmptyList)))))]),
                                   (ErlangCons type_5 (ErlangEmptyList))]),
                     list_6]
  | (ErlangInt num_1) == (toErl 108)
  , (ErlangInt num_2) == (toErl 105)
  , (ErlangInt num_3) == (toErl 115)
  , (ErlangInt num_4) == (toErl 116) =
  let
    tup_el_9 =
      flmap
        (\ lc_12 ->
           let lcRet_13 = erlps__from_aevm__3 [vmtype_0, type_5, lc_12]
           in ErlangCons lcRet_13 ErlangEmptyList)
        list_6
  in ErlangTuple [ErlangAtom "list", ErlangEmptyList, tup_el_9]
erlps__from_aevm__3 [(ErlangTuple [(ErlangAtom "variant"),
                                   (ErlangCons (ErlangEmptyList) (ErlangCons (ErlangCons vmtype_0 (ErlangEmptyList)) (ErlangEmptyList)))]),
                     (ErlangTuple [(ErlangAtom "app_t"), _,
                                   (ErlangTuple [(ErlangAtom "id"), _,
                                                 (ErlangCons (ErlangInt num_1) (ErlangCons (ErlangInt num_2) (ErlangCons (ErlangInt num_3) (ErlangCons (ErlangInt num_4) (ErlangCons (ErlangInt num_5) (ErlangCons (ErlangInt num_6) (ErlangEmptyList)))))))]),
                                   (ErlangCons type_7 (ErlangEmptyList))]),
                     val_8]
  | (ErlangInt num_1) == (toErl 111)
  , (ErlangInt num_2) == (toErl 112)
  , (ErlangInt num_3) == (toErl 116)
  , (ErlangInt num_4) == (toErl 105)
  , (ErlangInt num_5) == (toErl 111)
  , (ErlangInt num_6) == (toErl 110) =
  case val_8 of
    (ErlangTuple [(ErlangAtom "variant"), (ErlangInt num_10),
                  (ErlangEmptyList)]) | (ErlangInt num_10) == (toErl 0) ->
      let tup_el_13 = toErl "None"
      in ErlangTuple [ErlangAtom "con", ErlangEmptyList, tup_el_13]
    (ErlangTuple [(ErlangAtom "variant"), (ErlangInt num_14),
                  (ErlangCons x_15 (ErlangEmptyList))]) | (ErlangInt num_14) ==
                                                            (toErl 1) ->
      let    tup_el_21 = toErl "Some"
      in let
        tup_el_18 =
          ErlangTuple [ErlangAtom "con", ErlangEmptyList, tup_el_21]
      in let head_23 = erlps__from_aevm__3 [vmtype_0, type_7, x_15]
      in
        ErlangTuple
          [ErlangAtom "app", ErlangEmptyList, tup_el_18,
           ErlangCons head_23 ErlangEmptyList]
    something_else -> EXC.case_clause something_else
erlps__from_aevm__3 [(ErlangTuple [(ErlangAtom "tuple"),
                                   vmtypes_0]),
                     (ErlangTuple [(ErlangAtom "tuple_t"), _, types_1]), val_2]
  | (ErlangAtom "true") ==
      (falsifyErrors
         (\ _ ->
            let    lop_20 = BIF.erlang__length__1 [vmtypes_0]
            in let rop_22 = BIF.erlang__length__1 [types_1]
            in let lop_19 = BIF.erlang__op_eq [lop_20, rop_22]
            in
              case lop_19 of
                (ErlangAtom "false") -> ErlangAtom "false"
                (ErlangAtom "true") ->
                  let    lop_24 = BIF.erlang__length__1 [vmtypes_0]
                  in let rop_26 = BIF.erlang__tuple_size__1 [val_2]
                  in BIF.erlang__op_eq [lop_24, rop_26]
                _ -> EXC.badarg1 lop_19)) =
  let    arg_9 = BIF.erlang__tuple_to_list__1 [val_2]
  in let
    lcSrc_6 =
      BIF.do_remote_fun_call "Lists" "erlps__zip3__3"
        [vmtypes_0, types_1, arg_9]
  in let
    tup_el_5 =
      flmap
        (\ lc_14 ->
           case lc_14 of
             (ErlangTuple [vmtype_11, type_12, x_13]) ->
               let lcRet_15 = erlps__from_aevm__3 [vmtype_11, type_12, x_13]
               in ErlangCons lcRet_15 ErlangEmptyList
             _ -> ErlangEmptyList)
        lcSrc_6
  in ErlangTuple [ErlangAtom "tuple", ErlangEmptyList, tup_el_5]
erlps__from_aevm__3 [(ErlangTuple [(ErlangAtom "tuple"),
                                   vmtypes_0]),
                     (ErlangTuple [(ErlangAtom "record_t"), fields_1]), val_2]
  | (ErlangAtom "true") ==
      (falsifyErrors
         (\ _ ->
            let    lop_30 = BIF.erlang__length__1 [vmtypes_0]
            in let rop_32 = BIF.erlang__length__1 [fields_1]
            in let lop_29 = BIF.erlang__op_eq [lop_30, rop_32]
            in
              case lop_29 of
                (ErlangAtom "false") -> ErlangAtom "false"
                (ErlangAtom "true") ->
                  let    lop_34 = BIF.erlang__length__1 [vmtypes_0]
                  in let rop_36 = BIF.erlang__tuple_size__1 [val_2]
                  in BIF.erlang__op_eq [lop_34, rop_36]
                _ -> EXC.badarg1 lop_29)) =
  let    arg_9 = BIF.erlang__tuple_to_list__1 [val_2]
  in let
    lcSrc_6 =
      BIF.do_remote_fun_call "Lists" "erlps__zip3__3"
        [vmtypes_0, fields_1, arg_9]
  in let
    tup_el_5 =
      flmap
        (\ lc_15 ->
           case lc_15 of
             (ErlangTuple [vmtype_11,
                           (ErlangTuple [(ErlangAtom "field_t"), _, fname_12,
                                         ftype_13]),
                           x_14]) ->
               let   
                 head_20 =
                   ErlangTuple [ErlangAtom "proj", ErlangEmptyList, fname_12]
               in let
                 tup_el_25 = erlps__from_aevm__3 [vmtype_11, ftype_13, x_14]
               in let
                 lcRet_16 =
                   ErlangTuple
                     [ErlangAtom "field", ErlangEmptyList,
                      ErlangCons head_20 ErlangEmptyList, tup_el_25]
               in ErlangCons lcRet_16 ErlangEmptyList
             _ -> ErlangEmptyList)
        lcSrc_6
  in ErlangTuple [ErlangAtom "record", ErlangEmptyList, tup_el_5]
erlps__from_aevm__3 [(ErlangTuple [(ErlangAtom "map"),
                                   vmkeytype_0, vmvaltype_1]),
                     (ErlangTuple [(ErlangAtom "app_t"), _,
                                   (ErlangTuple [(ErlangAtom "id"), _,
                                                 (ErlangCons (ErlangInt num_2) (ErlangCons (ErlangInt num_3) (ErlangCons (ErlangInt num_4) (ErlangEmptyList))))]),
                                   (ErlangCons keytype_5 (ErlangCons valtype_6 (ErlangEmptyList)))]),
                     map_7]
  | (ErlangInt num_2) == (toErl 109)
  , (ErlangInt num_3) == (toErl 97)
  , (ErlangInt num_4) == (toErl 112)
  , isEMap map_7 =
  let    lcSrc_11 = BIF.maps__to_list__1 [map_7]
  in let
    tup_el_10 =
      flmap
        (\ lc_15 ->
           case lc_15 of
             (ErlangTuple [key_13, val_14]) ->
               let   
                 tup_el_17 =
                   erlps__from_aevm__3 [vmkeytype_0, keytype_5, key_13]
               in let
                 tup_el_21 =
                   erlps__from_aevm__3 [vmvaltype_1, valtype_6, val_14]
               in let lcRet_16 = ErlangTuple [tup_el_17, tup_el_21]
               in ErlangCons lcRet_16 ErlangEmptyList
             _ -> ErlangEmptyList)
        lcSrc_11
  in ErlangTuple [ErlangAtom "map", ErlangEmptyList, tup_el_10]
erlps__from_aevm__3 [(ErlangTuple [(ErlangAtom "variant"),
                                   vmcons_0]),
                     (ErlangTuple [(ErlangAtom "variant_t"), cons_1]),
                     (ErlangTuple [(ErlangAtom "variant"), tag_2, args_3])]
  | (ErlangAtom "true") ==
      (falsifyErrors
         (\ _ ->
            let    lop_18 = BIF.erlang__length__1 [vmcons_0]
            in let rop_20 = BIF.erlang__length__1 [cons_1]
            in let lop_17 = BIF.erlang__op_eq [lop_18, rop_20]
            in
              case lop_17 of
                (ErlangAtom "false") -> ErlangAtom "false"
                (ErlangAtom "true") ->
                  let lop_22 = BIF.erlang__length__1 [vmcons_0]
                  in BIF.erlang__op_greater [lop_22, tag_2]
                _ -> EXC.badarg1 lop_17)) =
  let    rop_6 = toErl 1
  in let arg_4 = BIF.erlang__op_plus [tag_2, rop_6]
  in let
    vmtypes_8 =
      BIF.do_remote_fun_call "Lists" "erlps__nth__2" [arg_4, vmcons_0]
  in let rop_11 = toErl 1
  in let arg_9 = BIF.erlang__op_plus [tag_2, rop_11]
  in let
    contype_13 =
      BIF.do_remote_fun_call "Lists" "erlps__nth__2" [arg_9, cons_1]
  in erlps__from_aevm__3 [vmtypes_8, contype_13, args_3]
erlps__from_aevm__3 [(ErlangEmptyList),
                     (ErlangTuple [(ErlangAtom "constr_t"), _, con_0,
                                   (ErlangEmptyList)]),
                     (ErlangEmptyList)]
  =
  con_0
erlps__from_aevm__3 [vmtypes_0,
                     (ErlangTuple [(ErlangAtom "constr_t"), _, con_1, types_2]),
                     args_3]
  | (ErlangAtom "true") ==
      (falsifyErrors
         (\ _ ->
            let    lop_21 = BIF.erlang__length__1 [vmtypes_0]
            in let rop_23 = BIF.erlang__length__1 [types_2]
            in let lop_20 = BIF.erlang__op_eq [lop_21, rop_23]
            in
              case lop_20 of
                (ErlangAtom "false") -> ErlangAtom "false"
                (ErlangAtom "true") ->
                  let    lop_25 = BIF.erlang__length__1 [vmtypes_0]
                  in let rop_27 = BIF.erlang__length__1 [args_3]
                  in BIF.erlang__op_eq [lop_25, rop_27]
                _ -> EXC.badarg1 lop_20)) =
  let   
    lcSrc_8 =
      BIF.do_remote_fun_call "Lists" "erlps__zip3__3"
        [vmtypes_0, types_2, args_3]
  in let
    tup_el_7 =
      flmap
        (\ lc_15 ->
           case lc_15 of
             (ErlangTuple [vmtype_12, type_13, arg_14]) ->
               let lcRet_16 = erlps__from_aevm__3 [vmtype_12, type_13, arg_14]
               in ErlangCons lcRet_16 ErlangEmptyList
             _ -> ErlangEmptyList)
        lcSrc_8
  in
    ErlangTuple [ErlangAtom "app", ErlangEmptyList, con_1, tup_el_7]
erlps__from_aevm__3 [_vmtype_0, _type_1, _data_2] =
  BIF.erlang__throw__1 [ErlangAtom "cannot_translate_to_sophia"]
erlps__from_aevm__3 [arg_4, arg_5, arg_6] =
  EXC.function_clause unit
erlps__from_aevm__3 args =
  EXC.badarity (ErlangFun 3 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__from_fate__2 :: ErlangFun
erlps__from_fate__2 [(ErlangTuple [(ErlangAtom "id"), _,
                                   (ErlangCons (ErlangInt num_0) (ErlangCons (ErlangInt num_1) (ErlangCons (ErlangInt num_2) (ErlangCons (ErlangInt num_3) (ErlangCons (ErlangInt num_4) (ErlangCons (ErlangInt num_5) (ErlangCons (ErlangInt num_6) (ErlangEmptyList))))))))]),
                     (ErlangTuple [(ErlangAtom "address"), bin_7])]
  | (ErlangInt num_0) == (toErl 97)
  , (ErlangInt num_1) == (toErl 100)
  , (ErlangInt num_2) == (toErl 100)
  , (ErlangInt num_3) == (toErl 114)
  , (ErlangInt num_4) == (toErl 101)
  , (ErlangInt num_5) == (toErl 115)
  , (ErlangInt num_6) == (toErl 115) =
  ErlangTuple [ErlangAtom "account_pubkey", ErlangEmptyList, bin_7]
erlps__from_fate__2 [(ErlangTuple [(ErlangAtom "app_t"), _,
                                   (ErlangTuple [(ErlangAtom "id"), _,
                                                 (ErlangCons (ErlangInt num_0) (ErlangCons (ErlangInt num_1) (ErlangCons (ErlangInt num_2) (ErlangCons (ErlangInt num_3) (ErlangCons (ErlangInt num_4) (ErlangCons (ErlangInt num_5) (ErlangEmptyList)))))))]),
                                   _]),
                     (ErlangTuple [(ErlangAtom "oracle"), bin_6])]
  | (ErlangInt num_0) == (toErl 111)
  , (ErlangInt num_1) == (toErl 114)
  , (ErlangInt num_2) == (toErl 97)
  , (ErlangInt num_3) == (toErl 99)
  , (ErlangInt num_4) == (toErl 108)
  , (ErlangInt num_5) == (toErl 101) =
  ErlangTuple [ErlangAtom "oracle_pubkey", ErlangEmptyList, bin_6]
erlps__from_fate__2 [(ErlangTuple [(ErlangAtom "app_t"), _,
                                   (ErlangTuple [(ErlangAtom "id"), _,
                                                 (ErlangCons (ErlangInt num_0) (ErlangCons (ErlangInt num_1) (ErlangCons (ErlangInt num_2) (ErlangCons (ErlangInt num_3) (ErlangCons (ErlangInt num_4) (ErlangCons (ErlangInt num_5) (ErlangCons (ErlangInt num_6) (ErlangCons (ErlangInt num_7) (ErlangCons (ErlangInt num_8) (ErlangCons (ErlangInt num_9) (ErlangCons (ErlangInt num_10) (ErlangCons (ErlangInt num_11) (ErlangEmptyList)))))))))))))]),
                                   _]),
                     (ErlangTuple [(ErlangAtom "oracle_query"), bin_12])]
  | (ErlangInt num_0) == (toErl 111)
  , (ErlangInt num_1) == (toErl 114)
  , (ErlangInt num_2) == (toErl 97)
  , (ErlangInt num_3) == (toErl 99)
  , (ErlangInt num_4) == (toErl 108)
  , (ErlangInt num_5) == (toErl 101)
  , (ErlangInt num_6) == (toErl 95)
  , (ErlangInt num_7) == (toErl 113)
  , (ErlangInt num_8) == (toErl 117)
  , (ErlangInt num_9) == (toErl 101)
  , (ErlangInt num_10) == (toErl 114)
  , (ErlangInt num_11) == (toErl 121) =
  ErlangTuple
    [ErlangAtom "oracle_query_id", ErlangEmptyList, bin_12]
erlps__from_fate__2 [(ErlangTuple [(ErlangAtom "con"), _,
                                   _name_0]),
                     (ErlangTuple [(ErlangAtom "contract"), bin_1])]
  =
  ErlangTuple
    [ErlangAtom "contract_pubkey", ErlangEmptyList, bin_1]
erlps__from_fate__2 [(ErlangTuple [(ErlangAtom "bytes_t"), _,
                                   n_0]),
                     (ErlangTuple [(ErlangAtom "bytes"), bin_1])]
  | (ErlangAtom "true") ==
      (falsifyErrors
         (\ _ ->
            let lop_5 = BIF.erlang__byte_size__1 [bin_1]
            in BIF.erlang__op_eq [lop_5, n_0])) =
  ErlangTuple [ErlangAtom "bytes", ErlangEmptyList, bin_1]
erlps__from_fate__2 [(ErlangTuple [(ErlangAtom "id"), _,
                                   (ErlangCons (ErlangInt num_0) (ErlangCons (ErlangInt num_1) (ErlangCons (ErlangInt num_2) (ErlangCons (ErlangInt num_3) (ErlangEmptyList)))))]),
                     (ErlangTuple [(ErlangAtom "bits"), n_4])]
  | (ErlangInt num_0) == (toErl 98)
  , (ErlangInt num_1) == (toErl 105)
  , (ErlangInt num_2) == (toErl 116)
  , (ErlangInt num_3) == (toErl 115) =
  erlps__make_bits__1 [n_4]
erlps__from_fate__2 [(ErlangTuple [(ErlangAtom "id"), _,
                                   (ErlangCons (ErlangInt num_0) (ErlangCons (ErlangInt num_1) (ErlangCons (ErlangInt num_2) (ErlangEmptyList))))]),
                     n_3]
  | (ErlangInt num_0) == (toErl 105)
  , (ErlangInt num_1) == (toErl 110)
  , (ErlangInt num_2) == (toErl 116)
  , isEInt n_3 =
  case ErlangAtom "true" of
    _ | weakLt n_3 (toErl 0) ->
      let   
        head_6 = ErlangTuple [ErlangAtom "format", ErlangAtom "prefix"]
      in let tup_el_10 = ErlangTuple [ErlangAtom "-", ErlangEmptyList]
      in let tup_el_17 = BIF.erlang__op_neg [n_3]
      in let
        head_14 =
          ErlangTuple [ErlangAtom "int", ErlangEmptyList, tup_el_17]
      in
        ErlangTuple
          [ErlangAtom "app", ErlangCons head_6 ErlangEmptyList, tup_el_10,
           ErlangCons head_14 ErlangEmptyList]
    _ -> ErlangTuple [ErlangAtom "int", ErlangEmptyList, n_3]
erlps__from_fate__2 [(ErlangTuple [(ErlangAtom "id"), _,
                                   (ErlangCons (ErlangInt num_0) (ErlangCons (ErlangInt num_1) (ErlangCons (ErlangInt num_2) (ErlangCons (ErlangInt num_3) (ErlangEmptyList)))))]),
                     b_4]
  | (ErlangInt num_0) == (toErl 98)
  , (ErlangInt num_1) == (toErl 111)
  , (ErlangInt num_2) == (toErl 111)
  , (ErlangInt num_3) == (toErl 108)
  , (ErlangAtom "true") ==
      (falsifyErrors (\ _ -> BIF.erlang__is_boolean__1 [b_4])) =
  ErlangTuple [ErlangAtom "bool", ErlangEmptyList, b_4]
erlps__from_fate__2 [(ErlangTuple [(ErlangAtom "id"), _,
                                   (ErlangCons (ErlangInt num_0) (ErlangCons (ErlangInt num_1) (ErlangCons (ErlangInt num_2) (ErlangCons (ErlangInt num_3) (ErlangCons (ErlangInt num_4) (ErlangCons (ErlangInt num_5) (ErlangEmptyList)))))))]),
                     s_6]
  | (ErlangInt num_0) == (toErl 115)
  , (ErlangInt num_1) == (toErl 116)
  , (ErlangInt num_2) == (toErl 114)
  , (ErlangInt num_3) == (toErl 105)
  , (ErlangInt num_4) == (toErl 110)
  , (ErlangInt num_5) == (toErl 103)
  , (ErlangAtom "true") ==
      (falsifyErrors (\ _ -> BIF.erlang__is_binary__1 [s_6])) =
  ErlangTuple [ErlangAtom "string", ErlangEmptyList, s_6]
erlps__from_fate__2 [(ErlangTuple [(ErlangAtom "app_t"), _,
                                   (ErlangTuple [(ErlangAtom "id"), _,
                                                 (ErlangCons (ErlangInt num_0) (ErlangCons (ErlangInt num_1) (ErlangCons (ErlangInt num_2) (ErlangCons (ErlangInt num_3) (ErlangEmptyList)))))]),
                                   (ErlangCons type_4 (ErlangEmptyList))]),
                     list_5]
  | (ErlangInt num_0) == (toErl 108)
  , (ErlangInt num_1) == (toErl 105)
  , (ErlangInt num_2) == (toErl 115)
  , (ErlangInt num_3) == (toErl 116)
  , isEList list_5 =
  let
    tup_el_8 =
      flmap
        (\ lc_11 ->
           let lcRet_12 = erlps__from_fate__2 [type_4, lc_11]
           in ErlangCons lcRet_12 ErlangEmptyList)
        list_5
  in ErlangTuple [ErlangAtom "list", ErlangEmptyList, tup_el_8]
erlps__from_fate__2 [(ErlangTuple [(ErlangAtom "app_t"), _,
                                   (ErlangTuple [(ErlangAtom "id"), _,
                                                 (ErlangCons (ErlangInt num_0) (ErlangCons (ErlangInt num_1) (ErlangCons (ErlangInt num_2) (ErlangCons (ErlangInt num_3) (ErlangCons (ErlangInt num_4) (ErlangCons (ErlangInt num_5) (ErlangEmptyList)))))))]),
                                   (ErlangCons type_6 (ErlangEmptyList))]),
                     val_7]
  | (ErlangInt num_0) == (toErl 111)
  , (ErlangInt num_1) == (toErl 112)
  , (ErlangInt num_2) == (toErl 116)
  , (ErlangInt num_3) == (toErl 105)
  , (ErlangInt num_4) == (toErl 111)
  , (ErlangInt num_5) == (toErl 110) =
  case val_7 of
    (ErlangTuple [(ErlangAtom "variant"),
                  (ErlangCons (ErlangInt num_9) (ErlangCons (ErlangInt num_10) (ErlangEmptyList))),
                  (ErlangInt num_11), (ErlangTuple [])]) | (ErlangInt num_9) ==
                                                             (toErl 0)
                                                         , (ErlangInt num_10) ==
                                                             (toErl 1)
                                                         , (ErlangInt num_11) ==
                                                             (toErl 0) ->
      let tup_el_14 = toErl "None"
      in ErlangTuple [ErlangAtom "con", ErlangEmptyList, tup_el_14]
    (ErlangTuple [(ErlangAtom "variant"),
                  (ErlangCons (ErlangInt num_15) (ErlangCons (ErlangInt num_16) (ErlangEmptyList))),
                  (ErlangInt num_17), (ErlangTuple [x_18])]) | (ErlangInt
                                                                  num_15) ==
                                                                 (toErl 0)
                                                             , (ErlangInt
                                                                  num_16) ==
                                                                 (toErl 1)
                                                             , (ErlangInt
                                                                  num_17) ==
                                                                 (toErl 1) ->
      let    tup_el_24 = toErl "Some"
      in let
        tup_el_21 =
          ErlangTuple [ErlangAtom "con", ErlangEmptyList, tup_el_24]
      in let head_26 = erlps__from_fate__2 [type_6, x_18]
      in
        ErlangTuple
          [ErlangAtom "app", ErlangEmptyList, tup_el_21,
           ErlangCons head_26 ErlangEmptyList]
    something_else -> EXC.case_clause something_else
erlps__from_fate__2 [(ErlangTuple [(ErlangAtom "tuple_t"), _,
                                   (ErlangEmptyList)]),
                     (ErlangTuple [(ErlangAtom "tuple"), (ErlangTuple [])])]
  =
  ErlangTuple
    [ErlangAtom "tuple", ErlangEmptyList, ErlangEmptyList]
erlps__from_fate__2 [(ErlangTuple [(ErlangAtom "tuple_t"), _,
                                   types_0]),
                     (ErlangTuple [(ErlangAtom "tuple"), val_1])]
  | (ErlangAtom "true") ==
      (falsifyErrors
         (\ _ ->
            let    lop_15 = BIF.erlang__length__1 [types_0]
            in let rop_17 = BIF.erlang__tuple_size__1 [val_1]
            in BIF.erlang__op_eq [lop_15, rop_17])) =
  let    arg_7 = BIF.erlang__tuple_to_list__1 [val_1]
  in let
    lcSrc_5 =
      BIF.do_remote_fun_call "Lists" "erlps__zip__2" [types_0, arg_7]
  in let
    tup_el_4 =
      flmap
        (\ lc_11 ->
           case lc_11 of
             (ErlangTuple [type_9, x_10]) ->
               let lcRet_12 = erlps__from_fate__2 [type_9, x_10]
               in ErlangCons lcRet_12 ErlangEmptyList
             _ -> ErlangEmptyList)
        lcSrc_5
  in ErlangTuple [ErlangAtom "tuple", ErlangEmptyList, tup_el_4]
erlps__from_fate__2 [(ErlangTuple [(ErlangAtom "record_t"),
                                   (ErlangCons (ErlangTuple [(ErlangAtom "field_t"),
                                                             _, fname_0,
                                                             ftype_1]) (ErlangEmptyList))]),
                     val_2]
  =
  let   
    head_10 =
      ErlangTuple [ErlangAtom "proj", ErlangEmptyList, fname_0]
  in let tup_el_15 = erlps__from_fate__2 [ftype_1, val_2]
  in let
    head_6 =
      ErlangTuple
        [ErlangAtom "field", ErlangEmptyList,
         ErlangCons head_10 ErlangEmptyList, tup_el_15]
  in
    ErlangTuple
      [ErlangAtom "record", ErlangEmptyList,
       ErlangCons head_6 ErlangEmptyList]
erlps__from_fate__2 [(ErlangTuple [(ErlangAtom "record_t"),
                                   fields_0]),
                     (ErlangTuple [(ErlangAtom "tuple"), val_1])]
  | (ErlangAtom "true") ==
      (falsifyErrors
         (\ _ ->
            let    lop_25 = BIF.erlang__length__1 [fields_0]
            in let rop_27 = BIF.erlang__tuple_size__1 [val_1]
            in BIF.erlang__op_eq [lop_25, rop_27])) =
  let    arg_7 = BIF.erlang__tuple_to_list__1 [val_1]
  in let
    lcSrc_5 =
      BIF.do_remote_fun_call "Lists" "erlps__zip__2" [fields_0, arg_7]
  in let
    tup_el_4 =
      flmap
        (\ lc_12 ->
           case lc_12 of
             (ErlangTuple [(ErlangTuple [(ErlangAtom "field_t"), _, fname_9,
                                         ftype_10]),
                           x_11]) ->
               let   
                 head_17 =
                   ErlangTuple [ErlangAtom "proj", ErlangEmptyList, fname_9]
               in let tup_el_22 = erlps__from_fate__2 [ftype_10, x_11]
               in let
                 lcRet_13 =
                   ErlangTuple
                     [ErlangAtom "field", ErlangEmptyList,
                      ErlangCons head_17 ErlangEmptyList, tup_el_22]
               in ErlangCons lcRet_13 ErlangEmptyList
             _ -> ErlangEmptyList)
        lcSrc_5
  in ErlangTuple [ErlangAtom "record", ErlangEmptyList, tup_el_4]
erlps__from_fate__2 [(ErlangTuple [(ErlangAtom "app_t"), _,
                                   (ErlangTuple [(ErlangAtom "id"), _,
                                                 (ErlangCons (ErlangInt num_0) (ErlangCons (ErlangInt num_1) (ErlangCons (ErlangInt num_2) (ErlangEmptyList))))]),
                                   (ErlangCons keytype_3 (ErlangCons valtype_4 (ErlangEmptyList)))]),
                     map_5]
  | (ErlangInt num_0) == (toErl 109)
  , (ErlangInt num_1) == (toErl 97)
  , (ErlangInt num_2) == (toErl 112)
  , isEMap map_5 =
  let    lcSrc_9 = BIF.maps__to_list__1 [map_5]
  in let
    tup_el_8 =
      flmap
        (\ lc_13 ->
           case lc_13 of
             (ErlangTuple [key_11, val_12]) ->
               let    tup_el_15 = erlps__from_fate__2 [keytype_3, key_11]
               in let tup_el_18 = erlps__from_fate__2 [valtype_4, val_12]
               in let lcRet_14 = ErlangTuple [tup_el_15, tup_el_18]
               in ErlangCons lcRet_14 ErlangEmptyList
             _ -> ErlangEmptyList)
        lcSrc_9
  in ErlangTuple [ErlangAtom "map", ErlangEmptyList, tup_el_8]
erlps__from_fate__2 [(ErlangTuple [(ErlangAtom "variant_t"),
                                   cons_0]),
                     (ErlangTuple [(ErlangAtom "variant"), ar_1, tag_2,
                                   args_3])]
  | (ErlangAtom "true") ==
      (falsifyErrors
         (\ _ ->
            let lop_23 = BIF.erlang__length__1 [cons_0]
            in BIF.erlang__op_greater [lop_23, tag_2])) =
  let    rop_6 = toErl 1
  in let arg_4 = BIF.erlang__op_plus [tag_2, rop_6]
  in let
    contype_8 =
      BIF.do_remote_fun_call "Lists" "erlps__nth__2" [arg_4, cons_0]
  in let rop_11 = toErl 1
  in let arg_9 = BIF.erlang__op_plus [tag_2, rop_11]
  in let
    arity_13 =
      BIF.do_remote_fun_call "Lists" "erlps__nth__2" [arg_9, ar_1]
  in let case_14 = BIF.erlang__tuple_to_list__1 [args_3]
  in
    case case_14 of
      arglist_16 | (ErlangAtom "true") ==
                     (falsifyErrors
                        (\ _ ->
                           let lop_17 = BIF.erlang__length__1 [arglist_16]
                           in BIF.erlang__op_eq [lop_17, arity_13])) ->
        erlps__from_fate__2 [contype_8, arglist_16]
      _ ->
        BIF.erlang__throw__1 [ErlangAtom "cannot_translate_to_sophia"]
erlps__from_fate__2 [(ErlangTuple [(ErlangAtom "constr_t"), _,
                                   con_0, (ErlangEmptyList)]),
                     (ErlangEmptyList)]
  =
  con_0
erlps__from_fate__2 [(ErlangTuple [(ErlangAtom "constr_t"), _,
                                   con_0, types_1]),
                     args_2]
  | (ErlangAtom "true") ==
      (falsifyErrors
         (\ _ ->
            let    lop_16 = BIF.erlang__length__1 [types_1]
            in let rop_18 = BIF.erlang__length__1 [args_2]
            in BIF.erlang__op_eq [lop_16, rop_18])) =
  let   
    lcSrc_7 =
      BIF.do_remote_fun_call "Lists" "erlps__zip__2" [types_1, args_2]
  in let
    tup_el_6 =
      flmap
        (\ lc_12 ->
           case lc_12 of
             (ErlangTuple [type_10, arg_11]) ->
               let lcRet_13 = erlps__from_fate__2 [type_10, arg_11]
               in ErlangCons lcRet_13 ErlangEmptyList
             _ -> ErlangEmptyList)
        lcSrc_7
  in
    ErlangTuple [ErlangAtom "app", ErlangEmptyList, con_0, tup_el_6]
erlps__from_fate__2 [_type_0, _data_1] =
  BIF.erlang__throw__1 [ErlangAtom "cannot_translate_to_sophia"]
erlps__from_fate__2 [arg_3, arg_4] = EXC.function_clause unit
erlps__from_fate__2 args =
  EXC.badarity (ErlangFun 2 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__make_bits__1 :: ErlangFun
erlps__make_bits__1 [n_0] =
  let
    id_11 =
      ErlangFun 1
        (let
           lambda_1 [f_3] =
             let head_7 = toErl "Bits"
             in
               ErlangTuple
                 [ErlangAtom "qid", ErlangEmptyList,
                  ErlangCons head_7 (ErlangCons f_3 ErlangEmptyList)]
           lambda_1 [arg_2] = EXC.function_clause unit
           lambda_1 args = EXC.badarity (ErlangFun 1 lambda_1) args
         in lambda_1)
  in
    case ErlangAtom "true" of
      _ | weakLt n_0 (toErl 0) ->
        let    arg_13 = toErl "clear"
        in let
          arg_12 =
            BIF.erlang__apply__2 [id_11, ErlangCons arg_13 ErlangEmptyList]
        in let arg_16 = toErl "all"
        in let
          arg_15 =
            BIF.erlang__apply__2 [id_11, ErlangCons arg_16 ErlangEmptyList]
        in let arg_18 = toErl 0
        in let arg_19 = BIF.erlang__bnot__1 [n_0]
        in erlps__make_bits__4 [arg_12, arg_15, arg_18, arg_19]
      _ ->
        let    arg_22 = toErl "set"
        in let
          arg_21 =
            BIF.erlang__apply__2 [id_11, ErlangCons arg_22 ErlangEmptyList]
        in let arg_25 = toErl "none"
        in let
          arg_24 =
            BIF.erlang__apply__2 [id_11, ErlangCons arg_25 ErlangEmptyList]
        in let arg_27 = toErl 0
        in erlps__make_bits__4 [arg_21, arg_24, arg_27, n_0]
erlps__make_bits__1 [arg_29] = EXC.function_clause unit
erlps__make_bits__1 args =
  EXC.badarity (ErlangFun 1 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args

erlps__make_bits__4 :: ErlangFun
erlps__make_bits__4 [_set_0, zero_1, _i_2, (ErlangInt num_3)]
  | (ErlangInt num_3) == (toErl 0) =
  zero_1
erlps__make_bits__4 [set_0, zero_1, i_2, n_3]
  | (ErlangAtom "true") ==
      (falsifyErrors
         (\ _ ->
            let    lop_12 = toErl 0
            in let rop_15 = toErl 2
            in let rop_13 = BIF.erlang__op_rem_strict [n_3, rop_15]
            in BIF.erlang__op_eq [lop_12, rop_13])) =
  let    rop_8 = toErl 1
  in let arg_6 = BIF.erlang__op_plus [i_2, rop_8]
  in let rop_11 = toErl 2
  in let arg_9 = BIF.erlang__op_div_strict [n_3, rop_11]
  in erlps__make_bits__4 [set_0, zero_1, arg_6, arg_9]
erlps__make_bits__4 [set_0, zero_1, i_2, n_3] =
  let    rop_13 = toErl 1
  in let arg_11 = BIF.erlang__op_plus [i_2, rop_13]
  in let rop_16 = toErl 2
  in let arg_14 = BIF.erlang__op_div_strict [n_3, rop_16]
  in let
    head_8 = erlps__make_bits__4 [set_0, zero_1, arg_11, arg_14]
  in let
    head_18 = ErlangTuple [ErlangAtom "int", ErlangEmptyList, i_2]
  in
    ErlangTuple
      [ErlangAtom "app", ErlangEmptyList, set_0,
       ErlangCons head_8 (ErlangCons head_18 ErlangEmptyList)]
erlps__make_bits__4 [arg_23, arg_24, arg_25, arg_26] =
  EXC.function_clause unit
erlps__make_bits__4 args =
  EXC.badarity (ErlangFun 4 (\ _ -> ErlangAtom "purs_tco_sucks"))
    args