%%%-------------------------------------------------------------------
%%% @author jdaaa
%%% @copyright (C) 2019, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 11. Aug 2019 11:23 AM
%%%-------------------------------------------------------------------
-module(lazy_tests).
-author("jdaaa").
-include_lib("eunit/include/eunit.hrl").

%% API
-export([lazy_test/0]).

lazy_test() ->
       lazy_gen(10000).

lazy_gen(N) ->
  {generator,
    fun () ->
      if N > 0 ->
        [?_assert(N > 0) | lazy_gen(N-1)];
               true ->
                   []
      end
    end}.