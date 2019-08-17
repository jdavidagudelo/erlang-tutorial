%%%-------------------------------------------------------------------
%%% @author jdaaa
%%% @copyright (C) 2019, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 10. Aug 2019 3:56 PM
%%%-------------------------------------------------------------------
-module(tail_recursive_array_sum).
-author("jdaaa").

%% API
-export([arr_sum/1]).


arr_sum([], Sum) ->
  Sum;
arr_sum([First|Rest], Sum) ->
  arr_sum(Rest, Sum + First).

arr_sum([First|Rest]) ->
  arr_sum(Rest, First).