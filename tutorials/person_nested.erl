%%%-------------------------------------------------------------------
%%% @author jdaaa
%%% @copyright (C) 2019, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 10. Aug 2019 5:33 PM
%%%-------------------------------------------------------------------
-module(person_nested).
-author("jdaaa").

%% API
-export([demo/0]).

-record(name, {first="Adolf", last="Hitler"}).
-record(person, {name = #name{}, phone = [], address}).

demo() ->
  P = #person{name= #name{first="Robert",last="Virding"}, phone=123},
  (P#person.name)#name.first.