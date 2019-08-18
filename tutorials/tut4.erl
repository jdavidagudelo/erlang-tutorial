-module(tut4).

-export([list_length/1, list_length_tr/1]).

list_length([]) ->
    0;    
list_length([_ | Rest]) ->
    1 + list_length(Rest).

list_length_tr(List) ->
    list_length_tr(List, 0).

list_length_tr([], Length) ->
    Length;
list_length_tr([_|Rest], Length) ->
    list_length_tr(Rest, Length + 1).
