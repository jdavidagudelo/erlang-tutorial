%%%-------------------------------------------------------------------
%%% @author jdaaa
%%% @copyright (C) 2019, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 10. Aug 2019 4:14 PM
%%%-------------------------------------------------------------------
-module(array_sum).
-author("jdaaa").

%% API
-export([array_sum/1]).


array_sum([]) ->
  0;
array_sum([First|Rest]) ->
  First + array_sum(Rest).