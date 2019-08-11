%%%-------------------------------------------------------------------
%%% @author jdaaa
%%% @copyright (C) 2019, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 10. Aug 2019 9:18 PM
%%%-------------------------------------------------------------------
-module(grammar).
-author("jdaaa").

%% API
-export([grammar/0]).


grammar() ->
    pand(
         por(pconst(a), pconst(b)),
         por(pconst(c), pconst(d))).