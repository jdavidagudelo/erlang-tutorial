_Anonymous shell_

Move to working directory:

    cd("C:/Users/jdaaa/PycharmProjects/erlang_tutorial/tutorials").

Variables cannot be reassigned in the same scope.
    
    V = 13.
    V = 2.
    
Basic expressions:

    8 + 5.
    (42 + 77) * 66 / 3 - 2605.

Expressions:

    11 + 2.
    +13.
    -13.
    1 * 13.
    13 / 1.
    13 div 2.
    13 rem 2.
    13 band 2.
    13 bor 2.
    13 bxor 2.
    13 bsl 2.
    13 bsr 2.
    
    not true.
    true or false.
    true and false.
    true xor false.
    true and garbage.
    
    false orelse 2.
    true andalso 1.
    
    [1, 2, 3, 13] ++ [4, 5, 6, 7].
    [1, 2, 3, 13] -- [4, 5, 6, 7, 13].
    
Numbers:

    13.
    $\r.
    2#1101.
    13.0.
    1.3e13.
    1.3e-13.

Atoms:

      hello.
      phone_number.
      'Monday'.
      'Phone number'.
 
Binaries:
 
    <<10, 20, 13>>.
    <<"ABC">>.
    <<1:1,0:1>>.
 
Functions:
 
    Fun1 = fun (X) -> X+1 end.
    Fun1(12).
    
A function declaration sequence of function clauses
followed by semicolons and terminated by period.
 
Records:
    
    c(person).
    rd(person, {name = "", phone= [], address}).
    P = #person{phone=[0,8,2,3,4,3,1,2], name="Stalin"}.
    P#person.name.
    P#person.phone.
    is_record(P, person).
    person:find_phone([#person{phone=[1, 2, 3], name="Hitler"}, #person{phone=[1, 2, 4], name="Stalin"}], "Hitler").

Record nested:
 
    c(person_nested).
    person_nested:demo().
 
PID:
    
    self().
 
Tuples:
 
    T = {adam,24,{july,29}}.
    element(1, T).
    T2 = setelement(2, T, 25).
    tuple_size(T).
    tuple_size(T2).
 
Maps:
 
    M1 = #{name=>adam,age=>24,date=>{july,29}}.
    maps:get(name,M1).
    maps:get(date,M1).
    M2 = maps:update(age,25,M1).
    map_size(M2).
    map_size(M1).
    
Latest key in map takes precedence:

    #{1 => a, 1 => b}.

"hello" is a shorthand for:

    [$h,$e,$l,$l,$o].
    
Adjacent strings are concatenated:

    "a" "/aaaba".

Try catch:

    catch 1 + a.
    A = (catch 1 + 2).

Run escript:

    escript C:\Users\jdaaa\PycharmProjects\erlang_tutorial\tutorials\factorial_script.erl 15

Manage system erlang:
    
    init:restart().
    init:reboot().
    init:stop(). 
   
Compile a .erl file:
    
    c(tut).

Run a compiled file:

    tut:double(13).

Compile Fact function:

    c(tut1).
    
    
Execute fact function:

    tut1:fac(13).

Multiple functions examples:

    c(pascal).
    pascal:pascal(0, 2).
    pascal:pascal(1, 2).
    pascal:pascal(1, 3).
    
    c(balance).
    balance:balance("(if (zero? x) max (/ 1 x))").
    balance:balance("I told him (that it’s not (yet) done). (But he wasn’t listening)").
    balance:balance(":-)").
    balance:balance("())(").
    
    c(count_change).
    count_change:count(5, [1, 2, 3]).
    
    c(average).
    average:average([1, 2, 3, 4, 5, 6, 7, 8, 9, 10]).
    
    c(perms).
    perms:perms([1, 2, 3, 4]).
    gcd:gcd(18872, 4).
    c(pythagorean).
    pythagorean:pyth(15).
    
Tail recursion factorial:

    c(factorial).
    factorial:fact(20).
    
    c(tail_recursive_factorial).
    tail_recursive_factorial:fact(20).

Tail recursive fibonacci:

    c(fibonacci).
    fibonacci:fib(17).
    fibonacci:test().

    c(tail_recursive_fibonacci).
    tail_recursive_fibonacci:fib(17).
    

Tail recursive array sum:

    c(array_sum).
    array_sum:array_sum([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]).
    
    c(tail_recursive_array_sum).
    tail_recursive_array_sum:array_sum([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]).

    
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
    [X, Y | Z] = [1, 2].
    
List Length function:

    c(tut4).

Compile List length:

    tut4:list_length([1,2,3,4,5,6,7]).

Maps and filters:

    c(sort).
    sort:sort([5, 4, 3, 2, 1]).
    
    L = ["I","like","Erlang"].
    lists:foldl(fun(X, Sum) -> length(X) + Sum end, 0, L).
    
    c(upcase).
    upcase:up_case_word("this is an upcase").
    
    Upcase =  fun(X) when $a =< X,  X =< $z -> X + $A - $a;
    (X) -> X 
    end.
    
    Upcase_w = 
    fun(X) -> lists:map(Upcase, X) end.
    
    Upcase_w("Erlang").
    lists:map(Upcase_w, L).
    
    lists:mapfoldl(fun(Word, Sum) ->
    {Upcase_word(Word), Sum + length(Word)}
    end, 0, L).
    Big =  fun(X) -> if X > 10 -> true; true -> false end end.
    lists:any(Big, [1,2,3,4]).
    lists:any(Big, [1,2,3,12,5]).
    lists:all(Big, [1,2,3,4,12,6]).
    lists:all(Big, [12,13,14,15]).
    lists:foreach(fun(X) -> io:format("~w~n",[X]) end, [1,2,3,4]).
    lists:filter(Big, [500,12,2,45,6,7]).
    lists:takewhile(Big, [200,500,45,5,3,45,6]).
    lists:dropwhile(Big, [200,500,45,5,3,45,6]).
    lists:splitwith(Big, [200,500,45,5,3,45,6]).
    
    Adder = fun(X) -> fun(Y) -> X + Y end end.
    Add13 = Adder(13).
    Add13(0).
    

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
 
    {X_v, Y_v} = {paris, {f, 28}}.
    X_v.
    Y_v.
    {X_v, Y_v} = {london, {f, 36}}.

More about lists:

    [M1_v|T1_v] = [paris, london, rome].
    M1_v.
    T1_v.
    L1 = [madrid | T1_v].
    L1.

Reverse a list and running unit tests:

    c(tut8).
    tut8:reverse([1,2,3]).
    tut8:test().

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

Expressions valid as guards

* The atom true
* Other constants (terms and bound variables), all regarded as false
* Calls to the BIFs specified in table Type Test BIFs
* Term comparisons
* Arithmetic expressions
* Boolean expressions
* Short-circuit expressions (andalso/orelse)


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

Profiling:

    c(foo).
    fprof:start().
    fprof:apply(foo, create_file_slow, [junk, 1024]).
    fprof:profile().
    fprof:analyse().

Generate cgrind profile:

    escript C:\Users\jdaaa\PycharmProjects\erlgrind\src\erlgrind C:\Users\jdaaa\PycharmProjects\erlang_tutorial\tutorials\out_profile.prof

Debugging:
    
    dbg:tracer().
    dbg:p(all, c).
    dbg:tp(lists, seq, x).
    lists:seq(1,10).
    dbg:fun2ms(fun([M,N]) when N > 3 -> return_trace() end).
    X=3.
    dbg:fun2ms(fun([M,N]) when N > X  -> return_trace() end).
    
    dbg:fun2ms(fun([M,N]) when N > X, is_atom(M)  -> return_trace() end).
    dbg:tp({dbg,ltp,0},[{[],[],[{message, two, arguments}, {noexist}]}]).
    
    dbg:tracer(port, dbg:trace_port(ip,4711)).
    

Parser:

    P1 = token_parser:pconst(a).
    P1([a, b, c]).
    P1([x, y, z]).
    
    c(parse).
    parse:parse([a,c]).
    parse:parse([a,d]). 
    parse:parse([b,c]).   
    parse:parse([b,d]). 
    parse:parse([a,b]).   