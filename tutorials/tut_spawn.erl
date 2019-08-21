%%%-------------------------------------------------------------------
%%% @author jdaaa
%%% @copyright (C) 2019, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 19. Aug 2019 10:26 AM
%%%-------------------------------------------------------------------
-module(tut_spawn).
-author("jdaaa").

%% API
-export([loop/0, start/0]).

loop() ->
    receive
        who_are_you ->
            io:format("I am ~p~n", [self()]),
            loop()
    end.

start() ->
  spawn(tut_spawn, loop, []).