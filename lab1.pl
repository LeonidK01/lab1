man(akakii).
man(genya).
man(arsenya).
man(petya).
man(zahar).
man(artem).
man(vova).
man(gena).


woman(sveta).
woman(ksyha).
woman(polina).
woman(masha).
woman(katya).
woman(dasha).

parent(akakii,masha).
parent(sveta,masha).

parent(genya,petya).
parent(genya,zahar).
parent(ksyha,petya).
parent(ksyha,zahar).

parent(arsenya,katya).
parent(polina,katya).

parent(petya,artem).
parent(petya,dasha).
parent(masha,artem).
parent(masha,dasha).

parent(zahar,vova).
parent(zahar,gena).
parent(katya,vova).
parent(katya,gena).

man:-man(X),write(X),nl, fail.
woman:-woman(X),write(X),nl,fail.
children(X):-parent(X,Y),write(Y),nl,fail.
mother(X,Y):-parent(X,Y),woman(X).
mother(X):-mother(Y,X),write(Y),nl,fail.
father(X,Y):-parent(X,Y),man(X).
father(X):-father(Y,X), write(Y),nl,fail.
brother(X,Y):-man(X),parent(Z,X),parent(Z,Y).
brothers(X):-brother(Y,X),dif(X,Y),write(Y),nl,fail.
sister(X,Y):-woman(X),parent(Z,X),parent(Z,Y).
sisters(X):-sister(Y,X),dif(X,Y),write(Y),nl,fail.
b_s(X,Y):-parent(Z,X),woman(Z),parent(Z,Y).
b_s(X):-b_s(X,Y),dif(X,Y),write(Y),nl,fail.
grand_pa(X,Y):-father(Z,Y),father(X,Z);mother(Z,Y),father(X,Z).
grand_pas(X):-grand_pa(Y,X),write(Y),nl,fail.
