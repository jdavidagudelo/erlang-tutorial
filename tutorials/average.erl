%%%-------------------------------------------------------------------
%%% @author jdaaa
%%% @copyright (C) 2019, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 11. Aug 2019 9:26 AM
%%%-------------------------------------------------------------------
-module(average).
-author("jdaaa").

%% API
-export([average/1]).

average(X) -> average(X, 0, 0).

average([H|T], Length, Sum) ->
  average(T, Length + 1, Sum + H);
average([], Length, Sum) ->
  Sum / Length.