:- module(host_name, []).
:- autoload(library(paxos), [paxos_set/2]).
:- autoload(library(socket), [gethostname/1]).

:- initialization(up, program).

up :-
    gethostname(Host),
    tcp_host_to_address(Host, Address),
    paxos_set(Host, Address).
