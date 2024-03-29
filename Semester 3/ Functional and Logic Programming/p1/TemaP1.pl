%insert an element E on a position given P in a list
%insertAtPos(L-list, E-element to insert, P-position, R-result list)

insertAtPos([], _, _, []).

insertAtPos(L, E, 1, [E|L]).

insertAtPos([H|T], E, P, [H|R]):-
    P>1,
    NewPos is P-1,
    insertAtPos(T, E, NewPos, R).


%define a predicate to determine the greatest common divisor of all number in a list
%gcd_of_list([H1,H2|T]-the first 2 numbers of the list, GCD).

gcd_of_list([N], N).

%calculate the gcd of a list of numbers
gcd_of_list([H1,H2|T], GCD):-
    gcd(H1, H2, NewGCD),
    gcd_of_list([NewGCD|T], GCD).


gcd(X, 0, X):-
   X>0.

gcd(X, Y, GCD):-%gcd(x,y)=gcd(y,x mod y)
   Y>0,
   Z is X mod Y,
   gcd(Y, Z, GCD).

gcd(X, Y, GCD):- 
   Y<0,
   gcd(Y, X, GCD).

find_gcd(List, GCD):-
   gcd_of_list(List, GCD).
  
   
