% Task 1: Boolean Expression

% AND
and(true, true, true).
and(true, false, false).
and(false, true, false).
and(false, false, false).

% OR
or(true, true, true).
or(true, false, true).
or(false, true, true).
or(false, false, false).

% NOT
neg(true, false).
neg(false, true).

% Rule for (A AND B) OR (NOT A AND NOT B)
logicGate(A, B, Output) :-
    and(A, B, X),         
    neg(A, NotA),         
    neg(B, NotB),         
    and(NotA, NotB, Y),   
    or(X, Y, Output).     