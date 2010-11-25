% p2.erl
% solves project euler problem 2
-module(p2).
-export([solve/0]).

solve() ->
    F = gen_fibs(),
    sum(F).

sum(L) ->
    sum(L,0).
sum([], Acc) ->
    Acc;
sum([H|T],Acc) ->
    sum(T,Acc + H).

gen_fibs() ->
    gen_fibs([2,1]).
gen_fibs([H1,H2|_T]=L) when (H1 + H2) < 4000000 ->
    gen_fibs([H1+H2] ++ L);
gen_fibs(L) ->
    [X || X <- L,
	  X rem 2 == 0].
