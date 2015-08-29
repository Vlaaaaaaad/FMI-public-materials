Inteligenta Artificiala - seminar
=========================

[TOC]

Facem **AI Simbolic**( Sisteme Expert, NLP, Information Retrieval)

Seria **23 face Retele Neurale, noi nu facem**. :(

Folosim **Prolog** ca limbaj de programare.

# Gramatica Prolog

```prolog
Sentence :- Subject, Verb, Object
Subject :- Noun
Object :- Noun
Verb :- hate
Verb :- love
Noun :- i
Noun :- prolog
```

Backus-Noun Form.

## Din ce e format un program Prolog

### Clauze
Reguli de forma  $\text{Head :- }B_1, B_2, \dots, B_n$.
: Daca $B_1$ si $B_2 \dots$ si $B_n$ atunci  H.

### Fapte
$H$, care sunt tot timpul adevarate.

### Interogare
``:-?``

### Simboluri

| Simbol | Sens |
| :----: | :--: |
|   :-   | daca |
|   ,    | si   |
|   ;    | sau  |
|   _    | orice|

### Variabile
Incep cu litera mare sau cu ``_`` aka ``Variabila`` sau ``_ceva``

### Atomi
- stringuri (care incep cu litera mica)
- siruri de caractere intre **apostrofi**, nu ghilimele (exemplu: ``'Ana'``)
- caractere speciale( exemplu: ``:-``)

### Operatori
- Aritmetici( atentie la ``is`` - e folosit cand avem nevoie sa efectuam o operatie aritmetica)
- Relationali
	- ``=`` predicatul (de unificare)
	- ``=\=`` inegalitate de valori
	- ``\==`` inegaliate de termeni
	- ``==`` echivalenta structurala
	- ``=:=`` egalitate de valori numerice


### Predicate
#### **CUT(!)** - previne backtracking

##### **Verde**
```prolog
min(X, Y, y) :- Y =< X.
min(X, Y, X) :- X < Y.
```

``min(X, Y, y) :- Y =< X, !`` eficientizeaza programul adica ii spune lui Prolog sa nu mai caute alta solutie ceea ce e bine ca avem 1 singura solutie la intrebarea de minim. Asta e **CUT VERDE**.

##### **Rosu**

Nu e la fel de relevant ca cel verde.

```prolog
max(X, Y, Z) :- x =< Y, !, Y = Z.
max(X, Y, X).
```

Interogare: `` ?- max (2, 4, 2).`` **fara CUT** $\implies$ 2 e mai mare ca 4

```
Call max(2, 4, 2).
Call 2 <= 4.
Exit.
Call 2 = 4.
Fail 2 = 4.
Exit max(2, 4, 2).

yes.
```

Interogare: `` ?- max (2, 4, 2).`` **cu CUT** $\implies$ 2 nu e mai mare ca 4
```
Call max(2, 4, 2).
	Call 2 =< 4.
		Exit 2 =< 4
	Call 4 = 2.
		Fail 4 = 2.
Fail max(2, 4, 2).

no.
```

#### **FAIL**

Forteaza sa caute toate solutiile.

Exemplu:
```prolog
getX('X1').
getX('X2').
getX('Y1').
getX('Y2').

wr :- getX(X), getY(Y), write(X, Y), fail.
writ(X, Y) :- write(X), write(' '), write(Y), nl.
```

Afiseaza:
```
X1 Y1
X1 Y2
X2 Y1
X2 Y2
no
```

Deci, ia un ``X``, ia un ``Y``, afiseaza, isi da fail, lui ``writ`` nu are cum sa ii dea fail, ii da fail lui ``getY``, ia urmatorul ``Y``, il afiseazam iarasi fail, incearca sa resatisfaca ``Y``, nu are cum, face acelasi lucru si cu`` X2``.

## Exemplu de program in Prolog

```prolog
% FAPTE

barbat(alin). % inseamna ca Alin este barbat
barbat(claudiu).
barbat(adam).

femeie(maria).
femeie(georgiana).

parinte(maria, alin). % Maria e parinte pentru Alin
parinte(adam, paul).
% si eventual altele

% CLAUZE/ REGULI

tata(T, F) :- barbat(T), parinte(T, F).
mama(M, F) :- femeie(M), parinte(M, F).
```

Se salveaza cu extensia ``.pl``

Sicstus Prolog se foloseste aparent, detalii la curs si la laborator. Fail: merge sa se foloseasca si SWI fara probleme( atentie in schimb la ultimele laboratoare).

Daca nu avem erori de compilare apare ``yes``.

## Exemplu de interogare
``?- tata(adam, paul).``
si programul spune ``yes``

``?- tata(X, paul).``
si programul afiseaza ``adam``

``?- tata(X, Y).``
si programul afiseaza ``X = adam Y = paul``


## Exercitiu test triunghi
> Program care verifica daca putem forma un triunghi dreptunghic cu 3 puncte date.

```prolog
isTriunghi(P1, P2, P3) :- dist(P1, P2, P3, D1, D2, D3), pitagora(D1, D2, D3).

dist(P1, P2, P3, D1, D2, D3) :- getDist(P1, P2, D1),
								getDist(P1, P3, D2),
								getDist(P2, P3, D1).

getDist((X1, Y1), (X2, Y2), D) :- D is sqrt( exp(X2 - X1), 2) + exp(Y2 - Y1, 2) ).

pitagora(D1, D2, D3) :- exp(D2, 2) =:= ( exp(D1, 2) + exp(D3, 2) ).
```

Interogare:
```
?- isTriunghi( (1,1), (6,1), (6,8)).
```

# Liste
-  ``[1, 2, a , 'A', 1/2, sqrt(X)]`` - termen compus
-  ``[]`` - termen simplu( lista vida)

Pentru a parcurge elementele listei le impartim cu bara
- ``[H | T]`` unde`` H`` e 1 element, si ``T`` intre 0 elemente si n elemente.
- ``[H1 | H2 | T]`` pentru mai multe. ``H1`` e 1 elment, ``H2`` e 1 element, ``T`` intre 0 si n elemente.

```prolog
nume_predicat([H | T]) :- conditii_si_prelucrari, nume_predicat(T).
nume_predicat([]). % conditie de oprire
```

## Exercitii

### Adaugarea unui element in lista
```prolog
add(A, E, [E | A]).
add([], E, [E]).
```

### Concatenarea a 2 liste
```prolog
concat([], L, L).
concat([H | T], L, [H | L1]) :- concat(T, L, L1).
```

### Adaugarea unui element in lista pe o anumita pozitie
```prolog
add_poz([H | T], E, X, [H | T1]) :- X > 1, Y is X - 1, add_poz(T, E, Y, T1).
add_poz(L, E, 1, [E | L]).
add_poz([], E, _, [E]).
```

### Determinarea unui element de pe o anumita pozitie
```prolog
el_poz([H | T], X) :- Y > 0, Y is X - 1, el_poz(T, Y).
el_poz([H | T], 0) :- write(H).
```

### Adaugarea unui element in lista daca nu apare deja in lista
```prolog
add_new(L, E, [E | L]) :- \+exista(E, L).
add_new(L, E, L) :- exista(E, L).

exista(E, [H | L]) :- exist(E, L).
exista(E, [E | L]).
```

### Determinarea minimului dintr-o lista
```prolog
min(X, Y, X) :- X < Y, !.
min(_, Y, Y).

minim([X], X).
minim([H | T], X) :- minim(T, X1), min(H, X1, X).
```

### Stergerea unui element din lista
```prolog
del(E, [], []).
del(E, [E | T], T). % daca E e p e prima pozitie atunci rezultatul este T
del(E, [H | T], [H | T1]) :- del(E, T, T1).
```

#Cut si fail

```prolog
P(1).
P(2) :- !.
P(3).
```

Interogarea `?- P(X), !, P(Y)` afiseaza:
```
X = 1, Y = 1 ;
X = 1, Y = 2;
no.
```

Ce e dupa CUT **mai poate fi resatisfacut**.

##Combinatii de CUT si FAIL: ajuta la definirea exceptiilor.

```prolog
enjoys(vincent, X) :- horror(X), !, fail. % AKA lui Vincent nu ii plac filmele horror
enjoys(vincent, X) :- movies(X).

movies(X) :- horror(X) ; romance(X) ; comedy(X).

horror(a).
romance(b).
comedy(c).
```
---

```prolog
P :- a, b.
P :- c.

% P implica (a si b) sau c
```

```prolog
P :- a, !, b.
P :- c.

% P implica (a si b) sau (non a si c)
```

```prolog
P :- c.
P :- a, !, b.

% P implica c sau (a si b)
```

#If - then - else

```prolog
A -> B ; C.
% if A then B else C
```

#Structuri
```prolog
diste(punct(X1, Y1), punct(X2, Y2), D) :- bla-bla.
diste(X, Y, D).
```

**Atentie**: la interogare se trimit in aceiasi forma, de exemplu ``?- diste(punct(1, 2), punct(14, 17), D).``.


```prolog
student(adrian, prezente(8), proiect(bun)).
student(marius, prezente(2), proiect(copiat)).
student(andreea, prezente(9), proiect(bun)).
student(ovidiu, prezente(4), proiect(slab)).

% bagof pentru toti stduentii care au peste 7 prezente si proiect bun
bagof(X, ( student(X, prezente(Y), proiect(bun))), Y > 7), Lo).
% ar intoarce Y = 8, Lo = [adrian];
% Y = 9, Lo = [andreea].

% cu ^ ii spun ca nu ma intereseaza valoarea. AKA mai jos nu ma intereseaza Y. E echivalent cu findall().
bagof(X, Y ^ ( student(X, prezente(Y), proiect(bun))), Y > 7), Lo).
% Lo = [adrian, andreea].

% Daca vreau sa afiseze [adrian / 8, andreea / 9]
bagof(X / Y,( student(X, prezente(Y), proiect(bun))), Y > 7), Lo).
```

#Arbori binari

Conditii de oprire ``nil`` si ``Radacina, nil, nil``

Cum se scrie un arbore in Prolog, a la Maude: ``arb(8, arb(4, arb(3, nil, nil), arb(6, nil, nil)), arb(11, arb(9, nil, nil), arb(16, nil, nil))).``

##Afisarea in pre-, in-, post-ordine
```prolog
pre_afis(arb(R, S, D)) :- write(R), pre_afis(arb(S)), pre_afis(arb(D)).
pre_afis(nil).

in_afis(arb(R, S, D)) :- write(S), in_afis(arb(R)), in_afis(arb(D)).
in_afis(nil).

post_afis(arb(R, S, D)) :- write(S), post_afis(arb(D)), post_afis(arb(R)).
post_afis(nil).
```

##Afisarea frunzelor
```prolog
afisf(arb(R, nil, nil)) :- write(R).
afisf(arb(R, S, D)) :- afisf(S), afisf(D).
```

##Suma elementelor
```prolog
suma(Sum, arb(R, S, D)) :- suma(S1, S), suma(S2, D), Sum is S1 + S2 + R.
suma(S, nil) :- S = 0.
```

##Cautarea unui element
```prolog
find(R, arb(R, _, _)) :- true.
find(X, nil) :- false;
find(X, arb(R, S, D)) :- X < R -> find(X, S) ; find(X, D).
```

##Inserarea unui element in arbore binar de cautare
```prolog
insert(X, arb(R, nil, nil), T) :- X > R -> T = arb(R, nil, X) ; T = arb(R, X, nil). % am gasit frunza unde vrem sa inseram
insert(X, arb(R, nil, D), T) :- X > R -> insert(X, D, T) ; T = arb(R, X, D).
insert(X, arb(R, S, nil), T) :- X < R -> insert(X, S, T) ; T = arb(R, S, X).
insert(X, arb(R, S, D), T) :- X < R -> insert(X, S, T1), T = arb(R, T1, D) ; insert(X, D, T2), T = arb(R, S, T2).
```


#Tehnici de cautare

##Cautari ne-informate

###Breadth-first

Pleca de la un nod initial si incearca sa se extina. La urmatorul pas are toti fii de nivel 1, si tot asa.

Pe masura ce parcuge, se tot intreaba: este nodul ce il extind un nod scop pentru mine?

```prolog
rezolva_b( Start, Solutie) :- breadthfirst([[Start]], Solutie). % nodul de start e pus intr-o lista de liste

breadthfirst([[Nod | Drum] | _] , [Nod | Drum]) :- scop(Nod).
breadthfirst([Drum | Drumuri], Solutie) :- extinde(Drum, DrumNou), concateneteaza(Drumuri, DrumNou, D1), breadthfirst(D1, Solutie). % rezultatul concatenarii e pus in D1

extinde([Nod | Drum], DrumNou) :- bagof([NodNou, Nod | Drum], (s(Nod, NodNou), \+(membru(NodNou, [Nod | Drum]))), DrumNou). % s e relatia de succesiune, implementata in functie de cerinta problemei ,
extinde(_, []). % daca cel de mai sus da fail, intoarce o lista vida
```

###Depth-first

Se pleaca de la un nod de start, ii sunt extinsi fii dupa care se merge in adancime, se extinde pe cel din stanga, fii celui din stanga si tot asa pana cand nu mai am de extins. Se intoarce si parcurge in partea cealalta.

```prolog
rezolva_d(Nodul_curent, Solutie) :- depthfirst([], Nodul_curent, Solutie).

depthfirst(Drum, Nod, [Nod | Drum]) :- scop(Nod).
depthfirst(Drum, Nod, Solutie) :- s(Nod, N1), \+membru(N1, Drum), depthfirst([Nod | Drum], N1, Solutie).
```

###Exercitiu: Problema mutarii blocurilor

Avem n blocuri, depozitate pe un teren. Pe suprafata terernului exista m locatii de depozitare. Pentru o mai buna depozitare blocurile se pot aseza in stive. Pot exista locuri cu stive vide. Logic, poti muta un bloc numai daca e el singur sau in varf si numai sa il pui in varf sau pe o zona vida.

Configuratia initiala: ``[ [d], [a, b], [c] ]`` AKA a este deasupra lui b in locatia din mijloc
Configuratia finala, la care vrem sa ajungem: ``[ [ ], [a, b, c, d], [ ] ]`` AKA gol, a peste b peste c peste d, gol.

```prolog
% Membru
membru(X, [X | _]). % caz de oprire
membru(X, [_ | L]) :- membru(X, L). % caz recursiv

% Permutare a listei
delete_pentru_perm(E, [E | T], T). % daca E e p e prima pozitie atunci rezultatul este T
delete_pentru_perm(E, [H | T], [H | T1]) :- E \== H, delete_pentru_perm(E, T, T1).

permutare([], []).
permutare([H | T], P) :- permutare(T, Q), delete_pentru_perm(H, P, Q).

% Breadth-first
rezolva_b(Nod_initial, Solutie) :- breadth_first([[Nod_initial]], Solutie).

breadth_first([[Nod | Drum] | _], [Nod | Drum]) :- scop(Nod).
breadth_first([Drum | Drumuri], Solutie) :- extinde(Drum, DrumNoi),
						concat(Drumuri, DrumNoi, Drumuri1),
						breadth_first(Drum1, Solutie).

extinde([Nod | Drum], DrumNoi) :- bagof([NodNou, Nod | Drum], (s(Nod, NodNou),
					\+membru(NodNou, [Nod, Drum])), DrumNoi),
					!.
extinde(_, []).

% Depth-first
rezolva(Nod, Solutie) :- depth_first([], Nod, Solutie).

depth_first(Drum, Nod, [Nod | Drum]) :- scop(Nod).
depth_first(Drum, Nod, Solution) :- s(Nod, Nod1),
					\+membru(Nod1, Drum),
					depthfirst([Nod | Drum], Nod1, Solution).

% Problema mutarii blocurilor

% Avem m blocuri si n locatii. In cazul nostru m = 4 blocuri, n = 3 locatii
% Configuratia initiala: [ [d], [a, b], [c] ] AKA a este deasupra lui b in locatia din mijloc
% Configuratia finala, la care vrem sa ajungem: [ [ ], [a, b, c, d], [ ] ] AKA gol, a peste b peste c peste d, gol

intial([[d], [a,b], [c]]).
scop([[], [a, b, c, d], []]).

% Trebuie sa scriem s-ul
s(Lista_stive, Lista_stive_rez) :- membru(X, Lista_stive),
					X = [Varf | _],
					det_poz_el(Lista_stive, N, X),
					sterg_la_n(Lista_stive, Lista_stive_inter, N),
				membru(Y, Lista_stive),
					det_poz_el(Lista_stive, N1, Y),
				N1 \== N,
				adauga_la_n(Varf, Lista_stive_inter, Lista_stive_rez, N1),
				\+ permutare(Lista_stive, Lista_stive_rez).

% Determina pozitia lui X in lista si pune pozitia in N
det_poz_el([X | _], 1, X) :- !.
det_poz_el([_ | T], Poz, X) :- det_poz_el(T, Poz1, X), Poz is Poz1 + 1.

% Se sterge primul element din stiva N si se returneaza rezultatul
sterg_la_n([[_ | T] | T1], [T, T1], 1) :- !.
sterg_la_n([H | T], [H | LRez], N) :- N1 is N - 1, sterg_la_n(T, LRez, N1).

% Se adauga elementul Varf la lista Lista_stive_inter in stiva N1 si se intoarce rezultatul in Lista_stive_rez
adauga_la_n(Varf, [H | T], [[Varf | H] | T], 1) :- !.
adauga_la_n(Varf, [H | T], [H | LRez], N) :- N1 is N - 1, adauga_la_n(Varf, T, LRez, N1).
```

##Cautari informate

###Best-first

Cele 3 principii ale best-first-ului
- avem o functie euristica $\hat{f}$ si sunt preferate valorile mici ale lui $\hat{f}$
- se extinde nodul cu cel mai mic $\hat{f}$
- ne oprim cand am ajuns la un nod-scop


####Problema eight-puzzle

Avem un patrat de 3 pe 3 cu numere de la 1 la 8 si o cauta goala. Gen o tabla cu tablite pe ea si 1 casuta goala ca sa le putem muta. Seamana cu jocul ala idiot.

Se da o configuratie initiala ``C1`` si se vrea sa se ajunga la o alta configuratie finala ``C2``. Fiecare pas are un cost si vrem costul minim pentru a ajunge la configuratia finala din configuratia initiala. Costul este determinat cu $h_2$ aka euristica problemei.

#####Configuratiile
AKA: coordonatele pentru cauta goala, coordonatelele$(x/y)$ pentru casuta $1$, coordonatele$(x/y)$ pentru casuta $2$, ... , coordonatele$(x/y)$ pentru casuta $8$.


Configuratia initiala:
``C1: [2/2, 1/3, 3/2, 2/3, 3/3, 3/1, 2/1, 1,1, 1/2]``

|casuta|casuta|casuta|
|------|------|------|
|1|3|4|
|8| |2|
|7|6|5|

Configuratia finala:
``C2: [2/2, 1/3, 2/3, 3/3, 3/2, 3/1, 2/1, 1/2]``
|casuta|casuta|casuta|
|------|------|------|
|1|2|3|
|8| |4|
|7|6|5|

#####Euristica problemei
$h_2(s) = h_1(s) + 3 * \text{secv}(s)$

Unde:
- $h_2$ este euristica
- $h_1$ este distanta Manhattan( aka distanta dintre 2 puncte: $d((X_1, Y_1), (X_2, Y_2)) = |X_2 - X_1| + |Y_2 - Y_1|$
-  $ \text{secv}(s)$ este indicele secventialitatii.

Pentru distanta Manhattan $h_1(s)$ se calculeaza distantele si se aduna intre ele. Gen distanta de la coordonate casuta 1 in configuratia initiala la coordonate casuta 1 in finala. Care in cazul nostru este $4$.

```prolog
scor(2/2, _, 1). % casuta goala
scor(1/2, 2/3, 0). % casuta pe locul ei final
scor(2/3, 3/3, 0).
%...
scor(1/1, 1/2, 0).

scor(_, _, 2). % orice alta casuta care nu e pe pozitia pe care trebuie sa fie
```

Pentru $\text{secv}(s)$ se aduna scorurile. Care in cazul nostru este $7$.

Deci euristica $h_2 = 4 + 3* 7$, pentru configuratiile noastre.

```prolog
h([Gol/Placute], H) :- scop([Gol1/Placute_finale])],
						disttot(Placute, Placute_finale, D),
						H is D + 3 * S.

secv([Prima/Placute], S) :- secv([Prima/Placute], Prima, S).
secv([Placuta1, Placuta2, | Placute], Prima, S) :- scor(Placuta1, Placuta2, S1),
													secv([Placuta2 | Placute], Prima, S2),
													S is S1 + S2.
secv([Ultima], Prima, S) :- scor(Ultima, Prima, S).
```

Succesor:
```
s([Gol|Placute], [Placuta|Placute1]) :- interschimba(Gol, Placuta, Placute, Placute1).

interschimba(Gol, P, [P | Ts], [Gol | Ts]) :- distManhattan(Gol, P, 1).
interschimba(Gol, P, [L1 | T1], [L1 | T2]) :- interschimba(Gol, P, T1, T2).
```

#####Implementarea efectiva

Problema rezolvata la laborator:
```prolog

% Best-first de la profa:

% Predicatul bestfirst(Nod_initial,Solutie) este adevarat daca
% Solutie este un drum (obtinut folosind strategia best-first) de
% la nodul Nod_initial la o stare scop

bestfirst(Nod_initial,Solutie) :- expandeaza([], l(Nod_initial, 0/0), 9999999, _ ,da, Solutie).
expandeaza(Drum, l(N, _), _, _, da, [N | Drum]) :- scop(N).

% Caz 1: daca N este nod scop, atunci construim o cale solutie

expandeaza(Drum, l(N, F/G), Limita, Arb1, Rez, Sol) :- F =< Limita, (bagof(M/C, (s(N, M, C), \+ (membru(M, Drum))), Succ), !, listasucc(G, Succ, As), cea_mai_buna_f(As, F1), expandeaza(Drum, t(N, F1/G, As), Limita, Arb1, Rez, Sol) ; Rez = imposibil).

%  Caz 2: Daca N este nod frunza a carui f^ -valoare este mai mica
% decat Limita,atunci ii generez succesorii si ii expandez in
% limita Limita

expandeaza(Drum, t(N, F/G, [A | As]), Limita, Arb1, Rez, Sol) :- F =< Limita, cea_mai_buna_f(As, BF), min(Limita, BF, Limita1), expandeaza([N | Drum], A, Limita1, A1, Rez1, Sol), continua(Drum, t(N, F/G, [A1 | As]), Limita, Arb1, Rez1, Rez, Sol).

%  Caz 3 Daca arborele de radacina N are subarbori nevizi si
%  f^ -valoarea este mai mica decat Limita, atunci expandam cel mai
% "promitator" subarbore al sau; in functie de rezultatul obtinut
% Rez vom decide cum anume vom continua cautarea prin intermediul
% procedurii (predicatului) continua

expandeaza(_, t(_, _, []), _, _, imposibil, _) :- !.

% Caz 4: pe aceasta varianta nu o sa obtinem niciodata o solutie

expandeaza(_, Arb, Limita, Arb, nu,_) :- f(Arb, F), F > Limita.

% Caz 5: In cazul unor f^ -valori mai mari decat Bound, arborele nu
% mai poate fi extins

continua(_, _, _, _, da, da, _).
continua(P, t(N, _/G, [A1 | As]), Limita, Arb1, nu, Rez, Sol) :- insereaza(A1, As, NAs), cea_mai_buna_f(NAs, F1), expandeaza(P, t(N, F1/G, NAs), Limita, Arb1, Rez, Sol).
continua(P, t(N, _/G, [_ | As]), Limita, Arb1, imposibil, Rez, Sol) :- cea_mai_buna_f(As, F1), expandeaza(P, t(N, F1/G, As), Limita, Arb1, Rez, Sol).

listasucc(_, [], []).
listasucc(G0, [N/C | NCs], Ts) :- G is G0 + C, h(N, H), F is G + H, listasucc(G0, NCs, Ts1), insereaza(l(N, F/G), Ts1, Ts).

%  Predicatul insereaza(A,As,As1) este utilizat pentru inserarea
% unui arbore A intr-o lista de arbori As, mentinand ordinea
% impusa de f^ -valorile lor

insereaza(A, As,[A | As]) :- f(A, F), cea_mai_buna_f(As, F1),F =< F1, !.
insereaza(A, [A1 | As],[A1 | As1]):-insereaza(A, As, As1).

min(X, Y, X):-X =< Y, !.
min(_, Y, Y).

f(l(_, F/_), F). % f-val unei frunze
f(t(_, F/_, _), F). % f-val unui arbore

%  Predicatul cea_mai_buna_f(As,F) este utilizat pentru a
% determina cea mai buna f^ -valoare a unui arbore din lista de
% arbori As, daca aceasta lista este nevida; lista As este
% ordonata dupa f^ -valorile subarborilor constituenti

cea_mai_buna_f([A | _], F) :- f(A, F).
cea_mai_buna_f([], 999999).

% In cazul unei liste de arbori vide, f^ -valoarea determinata este
%foarte mare





% Implementarea efectiva facuta la laborator:

% Membru
membru(X, [X | _]).
membru(X, [_ | L]) :- membru(X, L).

scop([2/2, 1/3, 2/3, 3/3, 3/2, 3/1, 2/1, 1/1, 1/2]). % configuratie a tablitei in care vrem sa ajungem

initial([1/2, 2/3, 3/3, 3/1, 2/1, 1/1, 2/2, 1/3, 3/2]). % configuratia initiala, cea de la care plecam

h1([], [], 0). % 0 casute sunt pe pozitia gresita
h1([E | T], [E1 | T1], H) :- h1(T, T1, H1), (E == E1 -> H is H1; H is H1 + 1).

distManhattan(X/Y, X1/Y1, D) :- D is abs(X - X1) + abs(Y - Y1).

h2([], [], 0). % Suma distantelor Manhattan
h2([E | T], [E1 | T1], H) :- h2(T, T1, H1), distManhattan(E, E1, H2), H is H1 + H2.

% h(s) = h2(s) + 3 * secv(s)

scor(2/2, _, 1) :- !. % casuta goala

scor(1/2, 2/3, 0) :- !. % casuta pe locul ei final
scor(2/3, 3/3, 0) :- !.
scor(3/3, 3/2, 0) :- !.
scor(3/2, 3/1, 0) :- !.
scor(3/1, 2/1, 0) :- !.
scor(2/1, 1/1, 0) :- !.
scor(1/1, 1/2, 0) :- !.
scor(1/2, 1/3, 0) :- !.

scor(_, _, 2). % orice alta casuta care nu e pe pozitia pe care trebuie sa fie

h([Gol | T], H) :- scop([G1 | T1]), h2(T, T1, H2), secv(T, S), H is H2 + 3 * S.

secv([A | B], S) :- secv([A  | B], A, S).
secv([A1 , A2 | B], Prim, S) :- scor(A1, A2, S1), secv([A2 | B], Prim, S2), S is S1 + S2.
secv([U], Prim, S) :- scor(U, Prim, S).

s([G | P], [G1 | P1], 1) :- interschimbare(G, G1, P, P1).

interschimbare(G, G1, [G1 | T], [G | T]) :- distManhattan(G, G1, 1).
interschimbare(G, G1, [A | T], [A | T1]) :- interschimbare(G, G1, T, T1).

afisareSolutie([]).
afisareSolutie([A | B]) :- afisareSolutie(B), nl, afis(A).

afis([P0, P1, P2, P3, P4, P5, P6, P7, P8]) :- membru(Y, [3, 2, 1]), nl, membru(X, [1, 2, 3]),
						membru(Z - X/Y, [' ' - P0, 1 - P1, 2 - P2, 3 - P3, 4 - P4, 5 - P5, 6 - P6, 7 - P7, 8 - P8]),
						write(Z), write(' '), fail ; true.

eightPuzzle :- tell('/eight-puzzle.text'), initial(Poz), bestfirst(Poz, Sol), afisareSolutie(Sol), told.

```



#Jocurile ca probleme de cautare

##Strategia Mini-Max

MAX = calculator
MIN = oponent

###Pasii algoritmului

1. Se genereaza intregul arbore de joc pana la starile terminale
2. Se aplica o functie de utilitate( de evaluare - echivalentul functiei euristice) care obtine valoarea corespunzatoare fiecareia dintre starile finale
3. Ne deplasam de la frunze catre radacina si populam fiecare dintre nodurile parinte in functie de urmatoarele reguli de propagare: Daca ne aflam la un nod parinte de pe nivelul MAX, atunci nodul respeciv ia valoarea $max( \text{fiu } 1, \text{ fiu } 2)$, altfel $min( \text{fiu } 1, \text{ fiu } 2)$
4. Se alege pentru MAX mutarea care duce la valoarea maxima $\implies$ decizie minimax AKA i se da nodului radacina valoarea maxima dintre valorile de adancime 1 fata de el.

###Cod

```prolog
minimax( Poz, SuccBun, Val) :- mutari(Poz, ListaPoz), !, celmaibun(ListaPoz, SuccBun, Val) ; staticval(Poz, Val).

celmaibun([Poz], Poz, Val) :- minimax(Poz, _, Val), !.
celmaibun([Poz1 | ListPoz], PozBun, ValBun) :- minimax(Poz1, _, Val1), celmaibun(ListPoz, Poz2, Val2), maibine(Poz1, Val1, Poz2, Val2, PozBun, ValBun).

maibine(Poz0, Val0, Poz1, Val1, Poz0, Val0) :- mutaremin(Poz0), Val0 > Val1, !, ; mutaremax(Poz0), Val0 < Val1, !.
maibine(Poz0, Val0, Poz1, Val1, Poz1, Val1).

% mutari si staticval se implementeaza in functie de problema - acolo sunt regulile jocului
```


###Comentariu

Decizia ``minimax`` pentru pozitia ``Poz`` este ``SuccBun`` cu valoarea asociala ``Val``. ``SuccBun`` reprezentand mutarea optima care il avantajeaza pe jucatorul MAX, aka calculator.

Predicatul ``mutari`` pleaza de la pozitia ``Poz`` si genereaza o lista de mutari posibile in ``ListaPoz`` folosinduse de regulile de mutari legale pentru joc.

Predicatul ``celmaibun`` identifica cea mai avantajoasa mutare dintre cele din ``ListaPoz`` si le intoarce in ``SuccBun`` cu valoarea ``Val`` asociata. Daca de la ``Poz`` nu mai pot fi efectuate mutari atunci ``Poz`` este evaluat static obtinand valoarea ``Val``. Daca lista de mutari posibile contine un singur element si anume ``Poz``, atunci acest element este evaluat cu predicatul ``minimax``. Altfel fiecare dintre mutarile posibile din ``ListaPoz`` sunt evaluate iar la final predicatul ``maibine`` stabileste care dintre mutari il avantajeaza pe jucatorul MAX.

Predicatul ``maibine`` alege ``Poz0`` ca fiind avantajoasa daca jucatorul MIN efectueaza o mutare la acea pozitie ``Poz0`` iar mutarea respectiva il ajuta pe MAX, care este nodul parinte, sa obtina un rezultat bun( adica remiza sau castig) sau daca jucatorul MAX este cel care efectueaza mutarea la ``Poz0`` si obtine o valoarea ``Val0`` cu ``Val0`` cea mai mica dintre succesori pentru configuratia data.

##Startegia alpha-beta retezare

Functioneaza cam ca si minimax, dar intoarce rezultatul intrun timp mult mai scurt, retezand ramurile stiind ca acolo nu poate sa obtina o solutie mai buna.

---

> Written with [StackEdit](https://stackedit.io/).
