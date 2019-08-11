%%%-------------------------------------------------------------------
%%% @author jdaaa
%%% @copyright (C) 2019, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 10. Aug 2019 9:11 PM
%%%-------------------------------------------------------------------
-module(token_parser).
-author("jdaaa").

%% API
-export([pconst/1]).

pconst(X) ->
    fun (T) ->
       case T of
           [X|T1] -> {ok, {const, X}, T1};
           _      -> fail
       end
    end.