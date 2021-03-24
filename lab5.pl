sub_posl([],_):-!.
sub_posl(_,[]):-fail,!.
sub_posl([H|Sub_list],[H|List]):-sub_posl(Sub_list,List),!.
sub_posl(Sub_list,[_|List]):-sub_posl(Sub_list,List).

sub_set([],[]).
sub_set([H|Sub_set],[H|Set]):-sub_set(Sub_set,Set).
sub_set(Sub_set,[H|Set]):-sub_set(Sub_set,Set).

in_list([El|_],El).
in_list([_|T],El):-in_list(T,El).


sprava_next(A,B,[C]):-fail.
sprava_next(A,B,[A|[B|Tail]]).
sprava_next(A,B,[_|List]):-sprava_next(A,B,List).

sleva_next(A,B,[C]):-fail.
sleva_next(A,B,[B|[A|Tail]]).
sleva_next(A,B,[_|List]):-sleva_next(A,B,List).

next_to(A,B,List):-sprava_next(A,B,List).
next_to(A,B,List):-sleva_next(A,B,List).

el_no(List,Num,El):-el_no(List,Num,1,El).
el_no([H|_],Num,Num,H):-!.
el_no([_|Tail],Num,Ind,El):-Ind1 is Ind+1,el_no(Tail,Num,Ind1,El).

pr_ein:- Houses=[_,_,_,_,_],

		in_list(Houses,[red,english,_,_,_]),
		in_list(Houses,[_,spanish,_,dog,_]),
		in_list(Houses,[green,_,coffee,_,_]),
		in_list(Houses,[_,ukrain,tea,_,_]),
		sprava_next([green,_,_,_,_],[white,_,_,_,_],Houses),
		in_list(Houses,[_,_,_,ulitka,old_gold]),
		in_list(Houses,[yellow,_,_,_,kool]),
		el_no(Houses,3,[_,_,milk,_,_]),
		el_no(Houses,1,[_,norway,_,_,_]),
		next_to([_,_,_,_,chester],[_,_,_,fox,_],Houses),
		next_to([_,_,_,_,kool],[_,_,_,horse,_],Houses),
		in_list(Houses,[_,_,orange,_,lucky]),
		in_list(Houses,[_,japan,_,_,parlament]),
		next_to([_,norway,_,_,_],[blue,_,_,_,_],Houses),


		in_list(Houses,[_,WHO1,water,_,_]),
		in_list(Houses,[_,WHO2,_,zebra,_]),
		write(Houses),
		write(WHO1),nl,write(WHO2).

pr_friends:-
Friend=[_,_,_],
in_list(Friend,[belokurov,_]),
in_list(Friend,[ryzhov,_]),
in_list(Friend,[chernov,_]),
in_list(Friend,[_,red]),
in_list(Friend,[_,blonde]),
in_list(Friend,[_,dark-haired]),

not(in_list(Friend,[belokurov, blonde])),
not(in_list(Friend,[belokurov,dark-haired])),
(in_list(Friend,[ryzhov, dark-haired]);in_list(Friend,[ryzhov,blondin])),
(in_list(Friend,[chernov,blonde]);in_list(Friend,[chernov, red])),

write(Friend).

pr_girl:-
Friend=[_,_,_],
in_list(Friend,[_,white,_]),
in_list(Friend,[_,green,_]),
in_list(Friend,[_,blue,_]),
in_list(Friend,[_,_,white]),
in_list(Friend,[_,_,green]),
in_list(Friend,[_,_,blue]),

in_list(Friend,[ann,_,_]),
in_list(Friend,[natasha,_,green]),
in_list(Friend,[valya,_,_]),

(in_list(Friend,[ann,white,white]);in_list(Friend,[ann,blue,blue]);in_list(Friend,[ann,green,green])),
not(in_list(Friend,[valya,white,_])),
not(in_list(Friend,[valya,_,white])),
not(in_list(Friend,[natasha,green,_])),
write(Friend).

pr_work:-Worker=[_,_,_],
    in_list(Worker,[ivanov,_,_,_]),
    in_list(Worker,[semenov,_,_,_]),
    in_list(Worker,[_,tokar,_,_]),
    in_list(Worker,[_,svarshik,_,_]),
    in_list(Worker,[_,_,_,2]),
    in_list(Worker,[_,_,_,3]),
    in_list(Worker,[_,slesar,[],1]),
    in_list(Worker,[borisov,_,[sister],_]),
    in_list(Worker,[semenov,_,_,N1]),
    in_list(Worker,[_,tokar,_,N2]),N1>N2,
write(Worker),!.

pr_zizha:-Zizha=[_,_,_,_],
    in_list(Zizha,[_,butilka]),
    in_list(Zizha,[_,stakan]),
    in_list(Zizha,[_,kuvshin]),
    in_list(Zizha,[_,banka]),

    in_list(Zizha,[milk,_]),
    in_list(Zizha,[limonad,_]),
    in_list(Zizha,[kvas,_]),
    in_list(Zizha,[water,_]),

    not(in_list(Zizha,[water,bottle])),
    not(in_list(Zizha,[milk,bottle])),
    not(in_list(Zizha,[limonad,banka])),
    not(in_list(Zizha,[water,banka])),
    %сосуд с лимонадом находится между кувшином  и сосудом с квасом
    next_to([limonad,_],[_,kuvshin],Zizha),
    next_to([limonad,_],[kvas,_],Zizha),
    next_to([_,stakan],[milk,_],Zizha),
    next_to([_,stakan],[_,banka],Zizha),
   write(Zizha),!.

pr_style:-
Style=[_,_,_,_],
in_list(Style,[voronov,_]),
in_list(Style,[pavlov,_]),
in_list(Style,[levitskii,_]),
in_list(Style,[sakharov,_]),

in_list(Style,[_,dancer]),
in_list(Style,[_,painter]),
in_list(Style,[_,singer]),
in_list(Style,[_,writer]),

not(in_list(Style,[voronov,singer])),
not(in_list(Style,[levitskii,singer])),

not(in_list(Style,[pavlov,painter])),
not(in_list(Style,[pavlov,writer])),

not(in_list(Style,[sakharov,writer])),
not(in_list(Style,[voronov,writer])),
write(Style),!.
