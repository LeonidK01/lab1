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

ost(X,Y):-X1 is X mod 10,X1>3,X2 is X1 mod 2 ,X2 \= 0, Y is 1.
ost(_,Y):-Y is 0,!.

kol_up(0,0):-!.
kol_up(N,X):-N1 is N div 10, kol_up(N1,X1), ost(N,Y), X is X1+Y,!.

kol_down(X,N):-kol_down(X,N,0).
kol_down(0,S,S):-!.
kol_down(X,S,Pr):-X1 is X mod 10, X1>3, X2 is X1 mod 2, Pr1 is Pr+X2, XZ is X div 10, kol_down(XZ,S,Pr1),!.
kol_down(X,S,Pr):-XZ is X div 10, kol_down(XZ,S,Pr).

prov(X,N):- X1 is X mod N, X1==0.
nod(A,B,Otv):-A>B,nod(A,B,B,Otv),!.
nod(A,B,Otv):-B>A, nod(A,B,A,Otv),!.
nod(A,B,Del,Otv):-prov(A,Del),prov(B,Del),Otv is Del,!.
nod(A,B,Del,Otv):-Del_1 is Del-1,nod(A,B,Del_1,Otv).

prost(X):-Del is X div 2,prost(X,Del).
prost(1,_):-!.
prost(_,1):-!.
prost(X,Del):-not(prov(X,Del)), Del1 is Del-1, prost(X,Del1).

kol_del(X,S):-Del is X div 2,kol_del(X,Del,0,S).
kol_del(_,0,Sum,Sum):-!.
kol_del(X,Del,Sum,Otv):-prov(X,Del), Sum1 is Sum + 1, Del1 is Del - 1, kol_del(X,Del1,Sum1,Otv),!.
kol_del(X,Del,Sum,Otv):-Del1 is Del-1,kol_del(X,Del1,Sum,Otv),!.

