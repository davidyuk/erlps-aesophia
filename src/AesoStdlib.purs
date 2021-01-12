module Aeso.Stdlib(erlps__stdlib_include_path__0) where
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


erlps__stdlib_include_path__0 :: ErlangFun
erlps__stdlib_include_path__0 [] =
  let   
    head_1 =
      (BIF.do_remote_fun_call "Code" "erlps__priv_dir__1"
         [(ErlangAtom "aesophia")])
  in let head_4 = (H.make_string "stdlib")
  in
    (BIF.do_remote_fun_call "Filename" "erlps__join__1"
       [(ErlangCons head_1 (ErlangCons head_4 ErlangEmptyList))])
erlps__stdlib_include_path__0 args =
  (EXC.badarity
     (ErlangFun 0 (\ _ -> (ErlangAtom "purs_tco_sucks"))) args)