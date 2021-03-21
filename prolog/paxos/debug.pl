:- module(paxos_debug, []).
:- use_module(library(debug), [debug/1]).
:- use_module(library(paxos), []).

:- initialization(up, program).

up :-
    debug(paxos),
    debug(paxos(node)),
    debug(paxos(replicate)),
    debug(paxos(request)).
