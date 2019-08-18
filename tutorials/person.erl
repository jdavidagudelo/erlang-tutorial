-module(person).
-export([new/3, find_phone/2]).

-record(person, {name = "", phone = [], address}).

new(Name, Phone, Address) ->
    #person{name=Name, phone=Phone, address = Address}.

find_phone([#person{name=Name, phone=Phone} | _], Name) ->
    {found,  Phone};
find_phone([_| T], Name) ->
    find_phone(T, Name);
find_phone([], _) ->
    not_found.