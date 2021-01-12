module Jsx.Verify(erlps__is_json__2, erlps__is_term__2,
                  erlps__init__1, erlps__handle_event__2) where
{-
This file has been autogenerated
DO NOT EDIT - Your changes WILL be overwritten
Use this code at your own risk - the authors are just a mischievous raccoon and a haskell devote
Erlscripten v0.1.0
-}

import Prelude
import Data.Array as DA
import Data.List as DL
import Data.Maybe as DM
import Data.Map as Map
import Data.Tuple as Tup
import Data.BigInt as DBI
import Erlang.Builtins as BIF
import Erlang.Binary as BIN
import Erlang.Helpers as H
import Erlang.Exception as EXC
import Erlang.Type (ErlangFun, ErlangTerm(..), weakCmp, weakEq,
                    weakNEq, weakLt, weakLeq, weakGeq, weakGt)
import Effect (Effect)
import Effect.Unsafe (unsafePerformEffect)
import Effect.Exception (throw)
import Partial.Unsafe (unsafePartial)


erlps__is_json__2 :: ErlangFun
erlps__is_json__2 [source_0, config_1] | (H.isEList config_1) =
  (EXC.tryCatch
     (\ _ ->
        let   
          arg_6 =
            (BIF.do_remote_fun_call "Jsx.Config" "erlps__extract_config__1"
               [config_1])
        in let
          fun_3 =
            (BIF.do_remote_fun_call "Jsx" "erlps__decoder__3"
               [(ErlangAtom "jsx_verify"), config_1, arg_6])
        in
          (BIF.erlang__apply__2
             [fun_3, (ErlangCons source_0 ErlangEmptyList)]))
     (\ ex_9 ->
        case ex_9 of
          (ErlangTuple [(ErlangAtom "error"), (ErlangAtom "badarg"), _]) ->
            (ErlangAtom "false")
          ex_10 -> (EXC.raise ex_10)))
erlps__is_json__2 [arg_11, arg_12] = (EXC.function_clause unit)
erlps__is_json__2 args =
  (EXC.badarity
     (ErlangFun 2 (\ _ -> (ErlangAtom "purs_tco_sucks"))) args)

erlps__is_term__2 :: ErlangFun
erlps__is_term__2 [source_0, config_1] | (H.isEList config_1) =
  (EXC.tryCatch
     (\ _ ->
        let   
          arg_6 =
            (BIF.do_remote_fun_call "Jsx.Config" "erlps__extract_config__1"
               [config_1])
        in let
          fun_3 =
            (BIF.do_remote_fun_call "Jsx" "erlps__encoder__3"
               [(ErlangAtom "jsx_verify"), config_1, arg_6])
        in
          (BIF.erlang__apply__2
             [fun_3, (ErlangCons source_0 ErlangEmptyList)]))
     (\ ex_9 ->
        case ex_9 of
          (ErlangTuple [(ErlangAtom "error"), (ErlangAtom "badarg"), _]) ->
            (ErlangAtom "false")
          ex_10 -> (EXC.raise ex_10)))
erlps__is_term__2 [arg_11, arg_12] = (EXC.function_clause unit)
erlps__is_term__2 args =
  (EXC.badarity
     (ErlangFun 2 (\ _ -> (ErlangAtom "purs_tco_sucks"))) args)

erlps__parse_config__1 :: ErlangFun
erlps__parse_config__1 [config_0] =
  (erlps__parse_config__2 [config_0, ErlangEmptyList])
erlps__parse_config__1 [arg_3] = (EXC.function_clause unit)
erlps__parse_config__1 args =
  (EXC.badarity
     (ErlangFun 1 (\ _ -> (ErlangAtom "purs_tco_sucks"))) args)

erlps__parse_config__2 :: ErlangFun
erlps__parse_config__2 [(ErlangCons (ErlangAtom "no_repeated_keys") rest_0),
                        config_1]
  =
  (erlps__parse_config__2 [rest_0, config_1])
erlps__parse_config__2 [(ErlangCons (ErlangTuple [(ErlangAtom "repeated_keys"),
                                                  val_0]) rest_1),
                        config_2]
  | ((ErlangAtom "true") ==
       (H.falsifyErrors
          (\ _ ->
             let lop_5 = (BIF.erlang__op_eq [val_0, (ErlangAtom "true")])
             in
               case lop_5 of
                 (ErlangAtom "true") -> (ErlangAtom "true")
                 (ErlangAtom "false") ->
                   (BIF.erlang__op_eq [val_0, (ErlangAtom "false")])
                 _ -> (EXC.badarg1 lop_5)))) =
  (erlps__parse_config__2 [rest_1, config_2])
erlps__parse_config__2 [(ErlangCons (ErlangAtom "repeated_keys") rest_0),
                        config_1]
  =
  (erlps__parse_config__2 [rest_0, config_1])
erlps__parse_config__2 [options_2@(ErlangCons (ErlangTuple [k_0,
                                                            _]) rest_1),
                        config_3]
  =
  let   
    arg_6 =
      (BIF.do_remote_fun_call "Jsx.Config" "erlps__valid_flags__0" [])
  in let case_4 = (BIF.lists__member__2 [k_0, arg_6])
  in
    case case_4 of
      (ErlangAtom "true") ->
        (erlps__parse_config__2 [rest_1, config_3])
      (ErlangAtom "false") ->
        (BIF.erlang__error__2
           [(ErlangAtom "badarg"),
            (ErlangCons options_2 (ErlangCons config_3 ErlangEmptyList))])
      something_else -> (EXC.case_clause something_else)
erlps__parse_config__2 [options_2@(ErlangCons k_0 rest_1),
                        config_3]
  =
  let   
    arg_6 =
      (BIF.do_remote_fun_call "Jsx.Config" "erlps__valid_flags__0" [])
  in let case_4 = (BIF.lists__member__2 [k_0, arg_6])
  in
    case case_4 of
      (ErlangAtom "true") ->
        (erlps__parse_config__2 [rest_1, config_3])
      (ErlangAtom "false") ->
        (BIF.erlang__error__2
           [(ErlangAtom "badarg"),
            (ErlangCons options_2 (ErlangCons config_3 ErlangEmptyList))])
      something_else -> (EXC.case_clause something_else)
erlps__parse_config__2 [(ErlangEmptyList), config_0] = config_0
erlps__parse_config__2 [arg_1, arg_2] =
  (EXC.function_clause unit)
erlps__parse_config__2 args =
  (EXC.badarity
     (ErlangFun 2 (\ _ -> (ErlangAtom "purs_tco_sucks"))) args)

erlps__init__1 :: ErlangFun
erlps__init__1 [config_0] = (erlps__parse_config__1 [config_0])
erlps__init__1 [arg_2] = (EXC.function_clause unit)
erlps__init__1 args =
  (EXC.badarity
     (ErlangFun 1 (\ _ -> (ErlangAtom "purs_tco_sucks"))) args)

erlps__handle_event__2 :: ErlangFun
erlps__handle_event__2 [(ErlangAtom "end_json"), _] =
  (ErlangAtom "true")
erlps__handle_event__2 [_, state_0] = state_0
erlps__handle_event__2 [arg_1, arg_2] =
  (EXC.function_clause unit)
erlps__handle_event__2 args =
  (EXC.badarity
     (ErlangFun 2 (\ _ -> (ErlangAtom "purs_tco_sucks"))) args)