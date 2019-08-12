%%%-------------------------------------------------------------------
%%% @author jdaaa
%%% @copyright (C) 2019, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 11. Aug 2019 2:00 PM
%%%-------------------------------------------------------------------
-author("jdaaa").
-module(my1st_SUITE).
 -compile(export_all).
 all() ->
 [mod_exists].
 mod_exists(_) ->
 {module,mymod} = code:load_file(mymod).