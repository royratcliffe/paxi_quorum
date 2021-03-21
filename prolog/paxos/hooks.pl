:- module(paxos_hooks, []).

:- multifile paxos:paxos_message_hook/3.

paxos:paxos_message_hook(Paxos, -, udp(paxos, Paxos)) :- !.
paxos:paxos_message_hook(Paxos, Timeout, udp(paxos, Paxos, Timeout)).
