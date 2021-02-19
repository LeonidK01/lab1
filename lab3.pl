max(X,Y,Z):-X>Y,Z is X,!.
max(_,Y,Y):-!.
max(X,Y,U,X):-X>Y, X>U,!.
max(_,Y,U,Y):-Y>U,!.
max(_,_,U,U):-!.
