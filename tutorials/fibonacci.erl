%%%-------------------------------------------------------------------
%%% @author jdaaa
%%% @copyright (C) 2019, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 10. Aug 2019 4:07 PM
%%%	x^2 - x - 1 = 0
%%%	a0 = 0, a1 = 1
%%%	r1 = (1 + sqrt(5)) / 2
%%%	r2 = (1 - sqrt(5)) / 2
%%%	fn = b1 * (r1) ^ n + b2 * (r2) ^ n
%%%	f0 = b1 + b2 = 0
%%%	f1 = b1 * ((1 + sqrt(5)) / 2) + b2 * ((1 - sqrt(5)) / 2)
%%%	b1 = 1 / sqrt(5), b2 = - 1 / sqrt(5)
%%%	fn = (((1 + sqrt(5)) / 2) ^ n - ((1 - sqrt(5)) / 2) ^ n) / sqrt(5)
%%%-------------------------------------------------------------------
-module(fibonacci).
-author("jdaaa").
-include_lib("eunit/include/eunit.hrl").

%% API
-export([fib/1, fib_n/1]).


fib(0) ->
  0;
fib(1) ->
  1;
fib(N) when N > 1->
  fib(N - 1) + fib(N - 2).

fib_n(N) ->
	round((math:pow(((1 + math:sqrt(5))/2), N) - math:pow(((1 - math:sqrt(5))/2), N)) / math:sqrt(5)).


fibonacci_test_() ->
	[?_assert(fib(0) =:= 0),
		?_assert(fib(1) =:= 1),
		?_assert(fib(2) =:= 1),
		?_assert(fib(3) =:= 2),
		?_assert(fib(4) =:= 3),
		?_assert(fib(5) =:= 5),
		?_assert(fib(6) =:= 8),
		?_assert(fib(7) =:= 13),
		?_assert(fib_n(0) =:= 0),
		?_assert(fib_n(1) =:= 1),
		?_assert(fib_n(2) =:= 1),
		?_assert(fib_n(3) =:= 2),
		?_assert(fib_n(4) =:= 3),
		?_assert(fib_n(5) =:= 5),
		?_assert(fib_n(6) =:= 8),
		?_assert(fib_n(7) =:= 13),
		?_assertException(error, function_clause, fib(-1))
	].
