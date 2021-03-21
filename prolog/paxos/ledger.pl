:- module(paxos_ledger,
          [ current_ledger/4,
            current_ledger/2
          ]).
:- use_module(library(paxos), []).

current_ledger(Key, Gen, Value, Holders) :-
     paxos:ledger_current(Key, Gen, Value, Holders).

current_ledger(Key, Value) :- current_ledger(Key, _, Value, _).
