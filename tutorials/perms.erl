%%%-------------------------------------------------------------------
%%% @author jdaaa
%%% @copyright (C) 2019, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 10. Aug 2019 8:37 PM
%%%-------------------------------------------------------------------
-module(perms).
-author("jdaaa").

%% API
-export([perms/1]).

perms([]) -> [[]];
perms(L)  -> [[H|T] || H <- L, T <- perms(L--[H])].