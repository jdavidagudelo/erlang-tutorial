%%%-------------------------------------------------------------------
%%% @author jdaaa
%%% @copyright (C) 2019, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 11. Aug 2019 7:15 AM
%%%-------------------------------------------------------------------
-module(pascal).
-author("jdaaa").

%% API
-export([pascal/2]).


pascal(0, _) ->
  1;
pascal(_, 0) ->
  1;
pascal(C, R) when R == C ->
  1;
pascal(C, R) ->
  pascal(C - 1, R - 1) + pascal(C, R - 1).