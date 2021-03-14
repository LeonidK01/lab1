max(X,Y,Z):-X>Y,Z is X,!.
max(_,Y,Y):-!.
max(X,Y,U,X):-X>Y, X>U,!.
max(_,Y,U,Y):-Y>U,!.
max(_,_,U,U):-!.
fact(1,1):-!.
fact(N,X):-N1 is N-1,fact(N1,X1),X is X1*N.
fact(1,Cur_x,Cur_x):-!.
fact(N,Cur_x,X):-Cur_x1 is Cur_x*N, N1 is N-1, fact(N1,Cur_x1,X).
factorial(N,X):-fact(N,1,X).
fib(1,1):-!.
fib(2,1):-!.
fib(N,X):-N_1 is N-1,N_2 is N-2,fib(N_1,X_1),fib(N_2,X_2),X is X_1+X_2 .
fibonach(N,N,X,_,X):-!.
fibonach(N,N_nac,Xt,Cur_x,X):-N_nac1 is N_nac+1,Xt1 is Xt + Cur_x,fibonach(N,N_nac1,Xt1,Xt,X).
fib1(N,X):-fibonach(N,1,1,0,X).

sum(X,S):- 0 is X div 10,S=X,!.
sum(X,S):-X_1 is X div 10,sum(X_1,S_1),S is S_1+X mod 10.

sum1(N,S):-sum1(N,S,0).
sum1(0,A,A):-!.
sum1(N,A,Tec):-Tec1 is (N mod 10)+Tec,N1 is (N div 10),sum1(N1,A,Tec1).

proiz(0,N):-N is 1,!.
proiz(N,P):-N1 is N div 10,proiz(N1,P1),P is P1*(N mod 10).

proiz1(N,P):-proiz1(N,P,1).
proiz1(0,A,A):-!.
proiz1(N,A,Tec):- Tec1 is (N mod 10)*Tec, N1 is N div 10,proiz1(N1,A,Tec1).

ost(X):-X1 is X mod 10,X1>3,X2 is X1 mod 2 ,X2 \= 0.


kol_up(0,0):-!.
kol_up(N,X):-N1 is N div 10, kol_up(N1,X1), ost(N) ,X is X1+1.



