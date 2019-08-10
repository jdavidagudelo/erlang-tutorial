%%%-------------------------------------------------------------------
%%% @author jdaaa
%%% @copyright (C) 2019, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 10. Aug 2019 3:38 PM
%%%-------------------------------------------------------------------
-module(factorial).
-author("jdaaa").

%% API
-export([fact/1]).

fact(0) ->
  1;
fact(N) ->
  N * fact(N - 1).
