%%%-------------------------------------------------------------------
%%% @author jdaaa
%%% @copyright (C) 2019, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 10. Aug 2019 4:52 PM
%%%-------------------------------------------------------------------
-module(gcd).
-author("jdaaa").

%% API
-export([gcd/2]).


gcd(A, 0) ->
  A;
gcd(A, B) ->
  gcd(B, A rem B).