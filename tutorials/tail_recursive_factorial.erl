%%%-------------------------------------------------------------------
%%% @author jdaaa
%%% @copyright (C) 2019, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 10. Aug 2019 3:37 PM
%%% Factorial tail recursive evaluation detail:
%%%
%%% fact(4)
%%% fact(4, 1)
%%% fact(4 - 1, 4 * 1)
%%% fact(3, 4)
%%% fact(3 - 1, 3 * 4)
%%% fact(2, 12)
%%% fact(2 - 1, 2 * 12)
%%% fact(1, 24)
%%% fact(1 - 1, 1 * 24)
%%% fact(0, 24)
%%% 24
%%%
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