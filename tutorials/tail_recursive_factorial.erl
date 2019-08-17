%%%-------------------------------------------------------------------
%%% @author jdaaa
%%% @copyright (C) 2019, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 10. Aug 2019 3:37 PM
%%%-------------------------------------------------------------------
-module(tail_recursive_factorial).
-author("jdaaa").

%% API
-export([fact/1]).


fact(0, A) ->
  A;
fact(N, A) ->
  fact(N - 1, N * A).

fact(N) ->
  fact(N, 1).