%%%-------------------------------------------------------------------
%%% @author jdaaa
%%% @copyright (C) 2019, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 18. Aug 2019 4:38 PM
%%%-------------------------------------------------------------------
-module(upcase).
-author("jdaaa").

%% API
-export([up_case_word/1]).

up_case(X) when $a =< X,  X =< $z ->
  X + $A - $a;
up_case(X) ->
  X.
up_case_word(X) ->
  lists:map(fun up_case/1, X).
