%%%-------------------------------------------------------------------
%%% @author jdaaa
%%% @copyright (C) 2019, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 11. Aug 2019 8:13 PM
%%%-------------------------------------------------------------------
-module(basic_SUITE).
-author("jdaaa").
-include_lib("common_test/include/ct.hrl").
-export([all/0]).
-export([test1/1, test2/1]).

all() -> [test1,test2].

test1(_Config) ->
1 = 1.

test2(_Config) ->
  A = 0,
  A.
