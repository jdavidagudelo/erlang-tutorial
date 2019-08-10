%%%-------------------------------------------------------------------
%%% @author jdaaa
%%% @copyright (C) 2019, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 10. Aug 2019 3:48 PM
%%%-------------------------------------------------------------------
-module(tail_recursive_fibonacci).
-author("jdaaa").

%% API
-export([fib/1]).

fib_r(1, _, B) ->
  B;
fib_r(0, A, _) ->
  A;
fib_r(N, A, B) ->
  fib_r(N - 1, B, A + B).

fib(N) ->
  fib_r(N, 0, 1).