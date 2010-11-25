% Project Euler problem 1
% solved by jared kofron <jared.kofron@gmail.com> on 11/24/2010
% sum of all multiples of 3 or 5 below 1000.
-module(p1).
-export([solve/0]).

solve() ->
    L = [X || X <- lists:seq(3,999),
	      ((X rem 3) == 0) or ((X rem 5) == 0)],
    sum(L).
sum(L) ->
    sum(L,0).
sum([],Acc) ->
    Acc;
sum([H|T],Acc) ->
    sum(T,Acc + H).
