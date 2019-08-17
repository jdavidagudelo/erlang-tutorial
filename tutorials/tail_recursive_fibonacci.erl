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
-include_lib("eunit/include/eunit.hrl").

%% API
-export([fib/1]).

fib(1, _, B) ->
  B;
fib(0, A, _) ->
  A;
fib(N, A, B) when N > 1 ->
  fib(N - 1, B, A + B).

fib(N) ->
  fib(N, 1, 1).

fibonacci_test_() ->
  [?_assert(fib(0) =:= 1),
	?_assert(fib(1) =:= 1),
	?_assert(fib(2) =:= 2),
	?_assert(fib(3) =:= 3),
	?_assert(fib(4) =:= 5),
	?_assert(fib(5) =:= 8),
	?_assertException(error, function_clause, fib(-1)),
	?_assert(fib(31) =:= 2178309)
       ].