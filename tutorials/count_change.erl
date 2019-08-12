%%%-------------------------------------------------------------------
%%% @author jdaaa
%%% @copyright (C) 2019, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 11. Aug 2019 8:01 AM
%%%-------------------------------------------------------------------
-module(count_change).
-author("jdaaa").

%% API
-export([count/2]).


count(Amount, Coins) ->
    {N,_C} = count(Amount, Coins, dict:new()),
    N.

count(0,_,Cache) ->
    {1,Cache};
count(N,_,Cache) when N < 0 ->
    {0,Cache};
count(_N,[],Cache) ->
    {0,Cache};
count(N,[C|Cs]=Coins,Cache) ->
    case dict:is_key({N,length(Coins)},Cache) of
        true ->
            {dict:fetch({N,length(Coins)},Cache), Cache};
        false ->
            {N1,C1} = count(N-C,Coins,Cache),
            {N2,C2} = count(N,Cs,C1),
            {N1+N2,dict:store({N,length(Coins)},N1+N2,C2)}
    end.

