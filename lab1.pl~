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
