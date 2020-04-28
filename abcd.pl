%login
login(kuis,prolog).

%soal1(mencari orang tua)
kakek(suparjo, rendi).
nenek(wulas, rendi).
paman(anton, rendi).
bibi(viola, rendi).
bapak(andre, rendi).
ibu(vivi, rendi).
adik(erik, rendi).

%soal2(mencari nilai terakhir)
findLast(X,[X]).
findLast(X,[_|T]) :-findLast(X,T).

%soal3(mencari nilai pertama)
findFirst(X,[X|_]).
findFirst(X,[H|_]) :- findFirst(X,H).

%soal4(perkalian)
kali(X,1,X) :- !.
kali(X,Y,Z) :- K is Y-1, kali(X,K,Z1),Z is X+Z1.

pangkat(X,1,X) :- !.
pangkat(X,Y,Z) :- K is Y-1, pangkat(X,K,Z1), Z is X*Z1.

%soal5(fpb)
fpb(X,0,X) :- !.
fpb(0,Y,Y) :- !.
fpb(X,Y,Z) :- X>Y, A is mod(X,Y), fpb(A,Y,Z).
fpb(X,Y,Z) :- X<Y, A is mod(Y,X), fpb(X,A,Z).

%soal6(faktorial)
faktorial(1,1) :- !.
faktorial(X,Y) :- K is X-1, faktorial(K,Y1), Y is Y1*X.

%soal7(tree)
leaves(nil,[]).
leaves(t(X,nil,nil),[X]).
leaves(t(_,L,nil),S) :- L = t(_,_,_), leaves(L,S).
leaves(t(_,nil,R),S) :- R = t(_,_,_), leaves(R,S).
leaves(t(_,L,R),S) :- L = t(_,_,_), R = t(_,_,_), leaves(L,SL), leaves(R,SR), append(SL,SR,S).

and(A, B, C, D):- (not(A\= C)),(not(B\=D)).

%soal8(ListofList)
linearList([],[]).
linearList(H,[H]) :- not(is_list(H)).
linearList([H|T],Z) :- linearList(H,X),linearList(T,Y),append(X,Y,Z).

%soal9(Operasi Logika)
and(A,B) :- A,B.

%soal10(Operasi Logika)
xor(A,B) :- A\=B.
