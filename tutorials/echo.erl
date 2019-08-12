%%%-------------------------------------------------------------------
%%% @author jdaaa
%%% @copyright (C) 2019, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 11. Aug 2019 9:30 AM
%%%-------------------------------------------------------------------
-module(echo).
-export([go/0, loop/0]).

go() ->
	Pid2 = spawn(echo, loop, []),
	Pid2 ! {self(), hello},
	receive
		{Pid2, Msg} ->
			io:format("P1 ~w~n",[Msg])
	end,
	Pid2 ! stop.

loop() ->
	receive
		{From, Msg} ->
			From ! {self(), Msg},
			loop();
		stop ->
			true
	end.
