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
-export([array_sum/1]).


array_sum([], Sum) ->
  Sum;
array_sum([First|Rest], Sum) ->
  array_sum(Rest, Sum + First).

array_sum([First|Rest]) ->
  array_sum(Rest, First).