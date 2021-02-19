max(X,Y,Z):-X>Y,Z is X,!.
max(_,Y,Y):-!.
max(X,Y,U,X):-X>Y, X>U,!.
max(_,Y,U,Y):-Y>U,!.
max(_,_,U,U):-!.
fact(1,1):-!.
fact(N,X):-N1 is N-1,fact(N1,X1),X is X1*N.
