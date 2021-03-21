:- module(paxos_initialize, []).
:- use_module(library(paxos), [paxos_initialize/1]).
:- ensure_loaded(udp).
:- ensure_loaded(hooks).

:- initialization(up, program).

up :-
    gethostname(Host),
    tcp_host_to_address(Host, ip(_, _, _, Node)),
    paxos_initialize([node(Node)]).
