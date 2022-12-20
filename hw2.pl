child(andrew,elizabeth).
child(andrew,philip).
child(anne,elizabeth).
child(anne,philip).
child(beatrice,andrew).
child(beatrice,sarah).
child(charles,elizabeth).
child(charles,philip).
child(diana,kydd).
child(diana,spencer).
child(edward,elizabeth).
child(edward,philip).
child(elizabeth,george).
child(elizabeth,mum).
child(eugenie,andrew).
child(eugenie,sarah).
child(harry,charles).
child(harry,diana).
child(james,edward).
child(james,sophie).
child(louise,edward).
child(louise,sophie).
child(margaret,george).
child(margaret,mum).
child(peter,anne).
child(peter,mark).
child(william,charles).
child(william,diana).
child(zara,anne).
child(zara,mark).

female(anne).
female(beatrice).
female(diana).
female(elizabeth).
female(kydd).
female(louise).
female(margaret).
female(mum).
female(sarah).
female(sophie).
female(zara).

male(andrew).
male(charles).
male(edward).
male(eugenie).
male(george).
male(harry).
male(james).
male(mark).
male(peter).
male(philip).
male(spencer).
male(william).

spouse(anne,mark).
spouse(diana,charles).
spouse(elizabeth,philip).
spouse(kydd,spencer).
spouse(mum,george).
spouse(sarah,andrew).
spouse(sophie,edward).

parent(X,Y):- child(X,Y),(female(Y);male(Y)).
grandparent(X,Y) :- parent(X,Z), parent(Z,Y).
grandchild(X,Y) :- grandparent(Y,X).
son(X,Y) :- parent(X,Y), male(X).
daughter(X,Y) :- parent(X,Y), female(X).
siblings(X,Y) :- parent(X,Z), parent(Y,Z), X \= Y.
brother(X,Y) :- siblings(X,Y), male(Y).
sister(X,Y) :- siblings(X,Y), female(Y).
ancestor(X,Y) :- parent(X,Y).
ancestor(X,Y) :- parent(Z,Y),ancestor(X,Z).
firstcousin(X1,X2):- parent(X1,Y1),parent(X2,Y2),siblings(Y1,Y2).
uncle(X,Y):- parent(X,Z),brother(Z,Y).
aunt(X,Y):- parent(X,Z),sister(Z,Y).
brotherinlaw(X,Y):-male(Y),(spouse(X,Z);spouse(Z,X)),siblings(Z,Y).
brotherinlaw(X,Y):-male(Y),siblings(X,Z),(spouse(Y,Z);spouse(Z,Y)).
sisterinlaw(X,Y):-female(Y),(spouse(X,Z);spouse(Z,X)),siblings(Z,Y).
sisterinlaw(X,Y):-female(Y),siblings(X,Z),(spouse(Y,Z);spouse(Z,Y)).







