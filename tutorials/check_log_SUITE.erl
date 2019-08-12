%%%-------------------------------------------------------------------
%%% @author jdaaa
%%% @copyright (C) 2019, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 11. Aug 2019 2:04 PM
%%%-------------------------------------------------------------------
-module(check_log_SUITE).
-author("jdaaa").

%% API
 -module(check_log_SUITE).
 -export([all/0, init_per_suite/1, end_per_suite/1]).
 -export([check_restart_result/1, check_no_errors/1]).
 -define(value(Key,Config), proplists:get_value(Key,Config)).
 all() -> [check_restart_result, check_no_errors].
 init_per_suite(InitConfigData) ->
 [{logref,open_log()} | InitConfigData].
 end_per_suite(ConfigData) ->
 close_log(?value(logref, ConfigData)).
 check_restart_result(ConfigData) ->
 TestData = read_log(restart, ?value(logref, ConfigData)),
 {match,_Line} = search_for("restart successful", TestData).
 check_no_errors(ConfigData) ->
 TestData = read_log(all, ?value(logref, ConfigData)),
 case search_for("error", TestData) of
 {match,Line} -> ct:fail({error_found_in_log,Line});
 nomatch -> ok
 end.
