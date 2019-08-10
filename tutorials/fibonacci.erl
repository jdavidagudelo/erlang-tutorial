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

%% API
-export([fib/1]).


fib(0) ->
  0;
fib(1) ->
  1;
fib(N) ->
  fib(N - 1) + fib(N - 2).