%%%-------------------------------------------------------------------
%%% @author jdaaa
%%% @copyright (C) 2019, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 10. Aug 2019 4:07 PM
%%%-------------------------------------------------------------------
-module(fibonacci).
-author("jdaaa").
-include_lib("eunit/include/eunit.hrl").

%% API
-export([fib/1]).


fib(0) ->
  1;
fib(1) ->
  1;
fib(N) when N > 1->
  fib(N - 1) + fib(N - 2).


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
