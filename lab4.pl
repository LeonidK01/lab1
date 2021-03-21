append1([],X,X).
append1([A|B],C,[A|D]):-append1(B,C,D).
read_list(0,[]):-!.
read_list(N,X):-write("Введите элемент"),nl,read(X1), N1 is N-1,read_list(N1,X2),append1([X1],X2,X).
write_list([X]):-write(X).
write_list([X|Y]):-write(X),write_list(Y).

sum_list_downn(N,Sum):-read_list(N,X),sum_list_down(X,Sum).
sum_list_down(List,Sum):-sum_list_down(List,0,Sum).
sum_list_down([],Sum,Sum):-!.
sum_list_down([Head|Tail],S,Sum):-S1 is S+Head,sum_list_down(Tail,S1,Sum).

sum_list_up([],0):-!.
sum_list_up([H|T],Sum):-sum_list_up(T,Sum1),Sum is Sum1+H.

list_el_numb(List,Elem,Num):-list_el_numb(List,Elem,0,Num).
list_el_numb([H|_],H,Num,Num):-!.
list_el_numb([_|T],Elem,Pos,Num):-Pos1 is Pos+1,list_el_numb(T,Elem,Pos1,Num).

prov4_2:-write("Количество элементов"),nl,read(N),nl,read_list(N,X), nl,write("Введите Элемент"),nl,read(Elem),list_el_numb(X,Elem,Num),write(Num).
prov4_2:-write("Нет элемента").
