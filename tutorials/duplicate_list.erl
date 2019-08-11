%%%-------------------------------------------------------------------
%%% @author jdaaa
%%% @copyright (C) 2019, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 10. Aug 2019 4:42 PM
%%%-------------------------------------------------------------------
-module(duplicate_list).
-author("jdaaa").

%% API
-export([duplicate/1]).


duplicate([]) ->
  [];
duplicate([First| Rest]) ->
  [First] ++ duplicate(Rest).