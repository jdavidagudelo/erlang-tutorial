%%%-------------------------------------------------------------------
%%% @author jdaaa
%%% @copyright (C) 2019, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 11. Aug 2019 7:38 AM
%%%-------------------------------------------------------------------
-module(balance).
-author("jdaaa").

%% API
-export([balance/1]).


balanced([], Open) ->
  Open == 0;
balanced([First|Rest], Open) when First == $( ->
  balanced(Rest, Open + 1);
balanced([First|Rest], Open) when First == $)->
  Open > 0 andalso balanced(Rest, Open - 1);
balanced([_|Rest], Open) ->
  balanced(Rest, Open).


balance([]) ->
  true;
balance([First|Rest]) when First == $( ->
  balanced(Rest, 1);
balance([_|Rest]) ->
  balanced(Rest, 0).
