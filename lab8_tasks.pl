% Task 2: sumlist(List, Sum)

% Base case
sumlist([], 0).

%Recursive case
sumlist([Head|Tail], Sum) :-
    sumlist(Tail, TailSum),
    Sum is Head + TailSum.


% Task 3: Total and Average

total_and_average :-
    write('Enter first number: '),
    read(N1),
    write('Enter second number: '),
    read(N2),
    write('Enter third number: '),
    read(N3),
    
    Total is N1 + N2 + N3,
    Average is Total / 3,
    
    nl, write('The Total is: '), write(Total), nl,
    write('The Average is: '), write(Average), nl.