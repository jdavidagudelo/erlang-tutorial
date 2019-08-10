_Anonymous shell_

Move to working directory:

    cd("C:/Users/jdaaa/PycharmProjects/erlang_tutorial/tutorials").

Variables cannot be reassigned in the same scope.
    
    A = 13.
    A = 2.
    
Basic expressions:

    8 + 5.
    (42 + 77) * 66 / 3 - 2605.

Expressions:

    1 + 2.
    +2.
    -2.
    1 * 2.
    1 / 2.
    1 div 2.
    1 rem 2.
    1 band 2.
    1 bor 2.
    1 bxor 2.
    1 bsl 2.
    1 bsr 2.
    
    not true.
    true or false.
    true and false.
    true xor false.
    true and garbage.
    
    false orelse 2.
    true andalso 1.
    
    [1, 2, 3] ++ [4, 5, 6, 7].
    [1, 2, 3] -- [4, 5, 6, 7].
    
Numbers:

    13
    $\r.
    2#101.
    1.3.
    1.3e3.
    1.3e-3.

Atoms:

      hello.
      phone_number.
      'Monday'.
      'Phone number'.
 
 Binaries:
 
    <<10, 20>>.
    <<"ABC">>.
    <<1:1,0:1>>.
 
Functions:
 
    Fun1 = fun (X) -> X+1 end.
    
A function declaration sequence of function clauses
followed by semicolons and terminated by period.
 
 PID:
 
    self().
 
 Tuples:
 
    P = {adam,24,{july,29}}.
    element(1, P).
    P2 = setelement(2, P, 25).
    tuple_size(P).
    tuple_size(P2).
 
 Maps:
 
    M1 = #{name=>adam,age=>24,date=>{july,29}}.
    maps:get(name,M1).
    maps:get(date,M1).
    M2 = maps:update(age,25,M1).
    map_size(M2).
    map_size(M1).
    
Latest key in map takes precedence:

    #{1 => a, 1 => b}.

hello is a shorthand for:

    [$h,$e,$l,$l,$o].

Adjacent strings are concatenated:

    "a" "/aaaba".

Try catch:

    catch 1 + a.
    A = (catch 1 + 2).

Tail recursion factorial:

    c(tail_recursive_factorial).
    tail_recursive_factorial:fact(20).

Tail recursive fibonacci:

    c(tail_recursive_fibonacci).
    tail_recursive_fibonacci(17).
    

Tail recursive array sum:

    c(tail_recursive_array_sum).
    tail_recursive_array_sum([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]).
 
   

Compile a .erl file:
    
    c(tut).

Run a compiled file:

    tut:double(13).

Compile Fact function:

    c(tut1).
    
    
Execute fact function:

    tut1:fac(13).
    
Compile atoms code:

    c(tut2).
    
Apply functions to make conversions:

    tut2:convert(3, inch).
    tut2:convert(7, centimeter).

Invalid application:

    tut2:convert(3, miles).

Better conversion function:

    c(tut3).

Tuples can have more than two parts, in fact as many parts as you want, and contain any valid Erlang term.

Use improved conversion:

    tut3:convert_length({inch, 5}).
    tut3:convert_length(tut3:convert_length({inch, 5})).
    
Tuples example:

    {moscow, {c, -10}}.
    {cape_town, {f, 70}}.
    {paris, {f, 28}}.

List in erlang:

    [First |TheRest] = [1,2,3,4,5].
    First.
    TheRest.
    [E1, E2 | R] = [1,2,3,4,5,6,7].
    E1.
    E2.
    R.
    [A, B | C] = [1, 2].
    A.
    B.
    C.
    
List Length function:

    c(tut4).

Compile List length:

    tut4:list_length([1,2,3,4,5,6,7]).

In Erlang String are lists:

    [97,98,99].

Maps in erlang:

    #{ "key" => 42 }.

Color example:

    c(color).
    C1 = color:new(0.3,0.4,0.5,1.0).
    C2 = color:new(1.0,0.8,0.1,0.3).
    color:blend(C1,C2).
    color:blend(C2,C1).

Output to terminal:

    io:format("hello world~n", []).
    io:format("this outputs one Erlang term: ~w~n", [hello]).
    io:format("this outputs two Erlang terms: ~w~w~n", [hello, world]).
    io:format("this outputs two Erlang terms: ~w ~w~n", [hello, world]).
    
Larger example:

    c(tut5).
    tut5:format_temps([{moscow, {c, -10}}, {cape_town, {f, 70}},
    {stockholm, {c, -4}}, {paris, {f, 28}}, {london, {f, 36}}]).
    
Guards and scope of variables:

    c(tut6).
    tut6:list_max([1,2,3,4,5,7,4,3,2,1]).
    
Guard operators:
    
    < less than
    > greater than
    == equal
    >= greater or equal
    =< less or equal
    /= not equal
    =:=	Exactly equal to
    =/=	Exactly not equal to
    
Applications:

    5 < 6.
    6 > 5.
    6 == 6.0.
    6 >= 6.0.
    6 =< 7.0.
    6 =:= 6.
    6.0 =:= 6.0.
    6 =:= 6.0.
    6 =/= 6.0.
    
 Match operator = 
 
    M = 5.
    M = 6.
    M = M + 1.

Pulling apart an erlang term using match operator:
 
    {X, Y} = {paris, {f, 28}}.
    X.
    Y.
    {X, Y} = {london, {f, 36}}.

More about lists:

    [M1|T1] = [paris, london, rome].
    M1.
    T1.
    L1 = [madrid | T1].
    L1.

Reverse a list:

    c(tut8).
    tut8:reverse([1,2,3]).

Convert list to celsius:

    c(tut7).
    tut7:format_temps([{moscow, {c, -10}}, {cape_town, {f, 70}},
    {stockholm, {c, -4}}, {paris, {f, 28}}, {london, {f, 36}}]).

Conditionals:

    c(tut9).
    tut9:test_if(5,33).
    tut9:test_if(33,6).
    tut9:test_if(2, 3).
    tut9:test_if(1, 33).
    tut9:test_if(33, 7).
    tut9:test_if(33, 33).

Case construct:

    c(tut10).
    tut10:convert_length({inch, 6}).
    tut10:convert_length({centimeter, 2.5}).

Complex cases:

    c(tut11).
    tut11:month_length(2004, feb).
    tut11:month_length(2003, feb).
    tut11:month_length(1947, aug).

Erlang BIFs that can be used as guards:

    trunc(5.6).
    round(5.6).
    length([a,b,c,d]).
    float(5).
    is_atom(hello).
    is_atom("hello").
    is_tuple({paris, {c, 30}}).
    is_tuple([paris, {c, 30}]).

Erlang BIFs that cannot be used as guards:

    atom_to_list(hello).
    list_to_atom("goodbye").
    integer_to_list(22).

Higher order functions:

    Xf = fun(X) -> X * 2 end.
    Xf(5).

Map function:

     Add_3 = fun(X) -> X + 3 end.
     lists:map(Add_3, [1,2,3]).

Print cities:

     Print_City = fun({City, {X, Temp}}) -> io:format("~-15w ~w ~w~n",[City, X, Temp]) end.
     lists:foreach(Print_City, [{moscow, {c, -10}}, {cape_town, {f, 70}},
     {stockholm, {c, -4}}, {paris, {f, 28}}, {london, {f, 36}}]).


Complex example:
    
    c(tut13).
    tut13:convert_list_to_c([{moscow, {c, -10}}, {cape_town, {f, 70}},
    {stockholm, {c, -4}}, {paris, {f, 28}}, {london, {f, 36}}]).

Concurrent Programming:

    c(tut14).
    tut14:say_something(hello, 3).
    tut14:start().


Message passing:

    c(tut15).
    tut15: start().


Registered process names:

    c(tut16).
    tut16:start().
    
Inter nodes communication:
    
    Update .erlang.cookie in both places home folders with the same value.

Start different erlang on windows:

    cd "C:\Program Files\erl10.4\bin"
    erl -sname ping

Start erlang on ubuntu:
    
    cd
    erl -sname pong

On the ubuntu shell:

    c(tut17).
    tut17:start_pong().

On the windows shell started as admin (cmd => ctrl + shift + enter):
    
    c('C:/Users/jdaaa/PycharmProjects/erlang_tutorial/tutorials/tut17').
    tut17:start_ping('pong@DESKTOP-41R15JP').

Restart on windows and enter the next:

    c('C:/Users/jdaaa/PycharmProjects/erlang_tutorial/tutorials/tut18').

Start on ubuntu:

        c(tut18).
        tut18:start('ping@DESKTOP-41R15JP').

Larger example:

In every tab execute erl with a different sname.
Open 3 tab on ubuntu, in the first:

    c(messenger).
    messenger:start_server().

In the second:

    c(messenger).
    messenger:logon(james).

In the third:

    c(messenger).
    messenger:logon(fred).

In the second:

    messenger:message(fred, 'hello world').

In the third:
    
    messenger:logoff().

In the second:

    messenger:message(fred, 'hello world').


Ping - Pong with timeout:

    c(tut19).
    tut19:start_pong().

In another tab:

    c(tut19).
    tut19:start_ping('pong@DESKTOP-41R15JP').

Run ping:
    
    c(tut19).

Links to terminate Pong:

    c(tut20).
    tut20:start('ping@DESKTOP-41R15JP').

Start 1 shell with:

    erl -sname pong

Start another with:

    erl -sname ping
    
Termination of ping:

    c(tut21).
    tut21:start('ping@DESKTOP-41R15JP').


Start 3 shells and run:

    c(messenger_robust).
    messenger_robust:start_sever().

In a client:

    c(messenger_robust).
    messenger_robust:logon(james).

In another client:

    c(messenger_robust).
    messenger_robust:logon(fred).
    messenger:message(james, 'How are you?').

In the first client:

    c(messenger_robust).
    messenger_robust:message(fred, 'I am fine thank you!').

Project with the package:

1 shell for the server:

    c(mess_server).
    mess_server:start_server().

One client:

    c(user_interface).
    user_interface:logon(james).

Another client:

    c(user_interface).
    user_interface:logon(fred).
    user_interface:message(james, 'How are you?').

First client:

    user_interface:message(fred, 'I am fine').
    user_interface:logoff().


    

   


    