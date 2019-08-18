%%%-------------------------------------------------------------------
%%% @author jdaaa
%%% @copyright (C) 2019, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 18. Aug 2019 12:23 PM
%%%-------------------------------------------------------------------
-module(mymod).
-author("jdaaa").

%% API
-export([fact/1]).

fact(0) ->
  1;
fact(N) ->
  N * fact(N - 1).
