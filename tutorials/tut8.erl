-include_lib("eunit/include/eunit.hrl").
-module(tut8).

-export([reverse/1]).

reverse(List) ->
    reverse(List, []).

reverse([Head | Rest], Reversed_List) ->
    reverse(Rest, [Head | Reversed_List]);
reverse([], Reversed_List) ->
    Reversed_List.

reverse_nil_test() -> [] = reverse([]).
reverse_one_test() -> [1] = reverse([1]).
reverse_two_test() -> [2,1] = reverse([1,2]).
