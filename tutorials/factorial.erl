%%%-------------------------------------------------------------------
%%% @author jdaaa
%%% @copyright (C) 2019, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 10. Aug 2019 3:38 PM
%%% Evaluation detail
%%%
%%% fact(4)
%%% 4 * fact(4 - 1)
%%% 4 * fact(3)
%%% 4 * 3 * fact(3 - 1)
%%% 4 * 3 * fact(2)
%%% 4 * 3 * 2 * fact(2 - 1)
%%% 4 * 3 * 2 * fact(1)
%%% 4 * 3 * 2 * 1 * fact(0)
%%% 4 * 3 * 2 * 1 * 1
%%% 24
%%%-------------------------------------------------------------------
-module(factorial).
-author("jdaaa").

%% API
-export([fact/1]).

fact(0) ->
  1;
fact(N) ->
  N * fact(N - 1).


