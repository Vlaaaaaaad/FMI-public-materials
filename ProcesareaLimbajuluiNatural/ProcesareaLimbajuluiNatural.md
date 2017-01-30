Procesarea Limbajului Natural
=============================

> **NU SE GARANETAZA CORECTITUDINEA SAU COMPLETITUDINEA INFORMATIILOR DE AICI**

> Ai descoperit o greseala? Ai facut o tema si vrei sa o dai si colegilor? Stii cum sa faci ceva sa arate mai bine? Contribuie [direct pe GitHub](https://github.com/Vlaaaaaaad/FMI-public-materials/tree/master/) sau trimite un mail la <mailto:stiu-chestii@vladionescu.me>

[TOC]

> **NU SE GARANETAZA CORECTITUDINEA SAU COMPLETITUDINEA INFORMATIILOR DE AICI**

> Ai descoperit o greseala? Ai facut o tema si vrei sa o dai si colegilor? Stii cum sa faci ceva sa arate mai bine? Contribuie [direct pe GitHub](https://github.com/Vlaaaaaaad/FMI-public-materials/tree/master/) sau trimite un mail la <mailto:stiu-chestii@vladionescu.me>

#Reprezentarea gramaticilor in Prolog. Gramatici DCG

Caracterul regulilor utilizare de o gramatica variaza in functie de tipul acestora. Tipul de reguli cel mai frecvent folosit este cel al regulilor PS( phrase structure). Ne vom concentra pe reprezentarea in Prolog a gramaticilor PS independente de context, care utilizeaza o multime finita de categorii gramaticale si o multime finita de reguli pentru a specifica modul in care categoriile din membrul stang pot fi realizate ca o succesiune de elemente ale membrului drept.
In scrierea unei gramatici, pe langa specificarea categoriilor gramaticale si a regulilor, este necesara si furnizarea unui lexicon care sa arate modul de realizare a unor categorii gramaticale si, mai ales, lexicale. Conform unei definitii minimale, un lexicon reprezinta o lista de cuvinte care asociaza fiecarui cuvant o serie de proprietati sintactice si morfologice. Cea mai importanta dintre acestea este data de categoria careia ii apartine cuvantul. In plus, un lexicon poate contine informatii referitoare la subcategoria unui cuvant( daca un vers este tranzitiv sau intranzitiv, spre exemplu), ori alte informatii, de natura morfologica( genul unui substantiv, spre exemplu) sau de natura semantica.
In cea mai simpla gramatica pe care o putem lua in consideratie, utilizand notatia de tip PATR( PArse and TRanslate), o intrare lexicala ar putea avea urmatoarea forma:
```
Cuvant iubeste:
        <cat> = V
```
Aceasta ne spune, ca iubeste este un cuvant a carui categorie este aceea de verb.

O intrare lexicala corespunzatoare aceluiasi cuvant ar putea fi:
```
Cuvant iubeste:
        <cat> = V
        <timp> = prezent
        <arg1> = NP
```
Aceasta ne spune, in plus, ca verbul este la timpul prezent si ca "iubeste" reprezinta un verb tranzitiv( NP = noun phrase).

Reprezentarea gramaticilor PS independente de context in Prolog se poate face intrun mod extrem de natural si direct. Astfel, fiecarei reguli PS de tipul ``S -> NP VP`` ii va corespune, in programl Prolog de implementare a gramaticii, clauza ``s( L1, L):- np(L1, L2), vp(L2, L)`` in care ``L1`` reprezinta sirul de intrare initial( "Ana are mere"), ``L2`` reprezinta sirul de intrare fara grupul nominal initial( "are mere") si ``L`` reprezinta sirul de intrare fara grupul nominal si grupul verbal( []). Aceasta clauza Prolog ar mai putea fi descrisa ca: "Inlaturarea unui substantiv din L1 produce L daca inlaturarea unui NounPhrase din L1 produce L2 si ilaturarea unui VerbPhrase din L2 produce L".

Regulile care introduc simboluri terminale( cuvinte) vor fi de forma ``n( [pacient | L], L)`` care se traduce prin "pentru a izola un substantiv, inlatura cuvantul *pacient* de la inceputul sirului de intrare". Aceasta corespunde unei intrari lexicale de cea mai sompla forma cu putinta( specifica numai categoria lexicala a cuvantului dat).

Un exemplu de gramatica reprezentata in Prolog este:
```prolog
s( X, Z ) :- no( X, Y ), vp( Y, Z ).
vp( X, Z ) :- v( x, Z ).
vp( X, Z ) :- v( X, Y ), np( Y, Z ).
np( [ 'Dr. Popescu' | X ], X ).
np( [ 'Colentina' | X ], X )
np( [ 'surori' | X], X).
np( [ 'pacienti' | X], X).
v( [ 'omoara' | X], X).
v( [ 'angajeaza' | X], X).
```

Conversia regulilor PS in clauze Prolog este atat de simpla incat se poate efectua si in mod automat. Prolog include o facilitate oentru a realiza acest lucru, si anume o extindere a notatiei numita notatie DGC( definite clause grammars). Aceasta reprezinta o notatie speciala pentru regulile unei gramatici. Exemple de clauze scrise utilizand notatia DCG sunt:
```prolog
s --> np, vp.
np --> det, n.
n --> [elev].
```

Aceste clauze vor fi automat convertite, in faza de consultare, la:
```prolog
s( X, Z ) :- np( X, Y ), vp( Y, Z ).
np( X, Z ) :- det( X, Y ), n ( Y, Z ).
n( [ elev | X ], X).
```

Sistemul DCG reprezinta un compilator pentru regulile gramticii, pe car ele traduce direct in clauze Prolog executabile. Un program poate contine atat reguli DCG cat si clauze Prolog obijnuite. Translatorul DCG afecteaza numai clauzele ce contin functorul ``-->``. O regula DCG este de forma ``Simbol neterminal --> extindere``, unde ``extindere`` consta in unul din urmatoarele elemente:
- un simbol neterminal( de exemplu, np)
- o lista de simboluri terminale( de exemplu, [ elev ] sau [ fiecare, elev])
- un constituent vid reprezentat prin []
- un scop Prolog inclus intre acolade( de exemplu ``(write('GASIT NP!'));``
- o serie de oricare dintre aceste elemente, separate prin virgule

Ca si in Prolog, ``;`` are semnificatia de 'sau' ceea ce permite scrierea unor reguli DCG de forma ``n ->> [elev] ; [elevi] ; [carte].`` A se nota ca simbolurile neterminale nu se mai afla intre paranteze, in timp ce simbolurile terminale sunt incluse in paranteze drepte.
Spre deosebire de notatia PATR, care nu impune o ordine si o aritate fixate, notatia DCG presupune in mod esential ca numarul si ordinea argumentelor sa fie fixare. De asemenea, DCG permite imbricarea termenilor si variabilelor.

In cazul implementarilor Prolog care accepta notatia DCG, gramaticile transformate corespunzator pot fi imediat utilizate ca dispozitive de recunoastere a propozitiilor. Un asemenea dispozitiv de recunoastere presupune insa, in mod esential, ca propozitiile sa fie reprezentate sub forma listei diferenta de simboluri terminale.

Prin operatia de conversie pe care o efectueaza, prolog transforma automat regulile DGC in clauze Prolog obijnuire si, in acest mod, converteste regulile de rescriere date ale gramaticii intrun program de recunoastere a propozitiilor generate de gramatica respectiva.

#Analiza sintactica top-down. Algoritm de analiza sintactica top-down si implementarea lui in Prolog

#Analiza sintactica bottom-up. Algoritm de analiza sintactica bottom-up si implementarea lui in Prolog

#Analiza sintactica din coltul stang. Descriere si implementare in Prolog (cu si fara legaturi)

#Parser-ul BUP

Cea mai cunoscuta implementare in Prolog a analizei sintactice din coltul stang o reprezinta implementarea BUP( bottom-up parser) care transforma fiecare regula PS intro clauza Prolog al carei cap nu este dat de nodul parinte ci de fiul cel mai mare din stanga. Astfel, regula ``NP -> Det N PP`` se transforma in clauza Prolog ``det( C, S1, S ) :- parse( n, S1, S2 ), parse( pp, S2, S3 ), np( C, S3, S ).``.
Aceasta clauza prolog spune ca "daca tocmai sa completat un constituent de tip Det, atunci se analizeaza un N si apoi un PP; dupa care se apeleaza procedura care trareaza un constituent completat de tip NP". ``C`` reprezinta constituentul de rang cel mai inalt si ``S1``, ``S2``, ``S3`` si ``S`` reprezinta sirul de intrare in diverse momente ale analizei.

Pe langa cate o clauza Prolog corespunzand fiecareia dintre regulile PS, implementarea BUP necesita si o clauza de terminare pentru fiecare tip de constituent.

Implementarea BUP este extrem de eficienta datorita faptulu ca partea foarte delicata a procesului de cautare, aceea care urmeaza dupa completarea unui fiu aflat cel mai in stanga, este rezolvata de cel mai rapid mecanism de cautare al Prolgului, si anume mecanismul de gasire a unei clauze fiind dat de predicatul corespunzator.

#Descrierea si implementarea unui parser bottom-up cu harta

Predicatul `init_harta` realizeaza initializarea hartii prin introducerea muchiilor inactive corespunzator fiecarui cuvant din sirul de intrare.

Predicatul `pentru_fiecare` are rolul de a executa un proces de backtracking in cautarea tuturor modalitatior de satisfacere a primului sau argument.

Predicatul `adauga_muchie`, pe langa faptul ca afirma existenta muchiei pe care o introduce in baza de date, determina ce alte muchii trebuie incluse pe harta ca consecinta a acestei adaugari.

Predicatul `parse` indeplineste urmatoarele atributii:
- specifica varful initial
- afiseaza toate rezultatele analizei
- inlatura toate muchiile create in timpul analizei

```prolog
init_harta(V0, V0, []).
init_harta(V0, Vn, [Cuvant | Cuvinte]) :-
        V1 is V0 +1,
        pentru_fiecare(cuvant(Categorie,Cuvant),
                       adauga_muchie(V0, V1, Categorie, [],
                                     [Cuvant, Categorie])),
        init_harta(V1, Vn, Cuvinte).

pentru_fiecare(X, Y) :- X, executa(Y), fail.
pentru_fiecare(_, _) :- true.

executa(Y) :- Y, !.

adauga_muchie(V0, V1, Categorie, Categorii, Analiza) :-
        muchie(V0, V1, Categorie, Categorii, Analiza), !.
adauga_muchie(V1, V2, Categorie1, [], Analiza) :-
        asserta(muchie(V1, V2, Categorie1, [], Analiza)),
        pentru_fiecare( regula(categorie2, [Categorie | Categorii]), adauga_muchie(V1, V2, Categorie2, [categorie1 | Categorii], [Categorie2])),
        pentru_fiecare( muchie(V0, V1, Categorie2, [Categorie1 | Categorii], Analize),
        adauga_muchie(0, V2, Categorie2, Categorii, [Analiza | Analize])).
adauga_muchie(V0, V1, Categorie1, [Categorie2 | Categorii], Analize) :-
        asserta(muchie(V0, V1, Categorie1, [Categorie2 | Categorii], Analize)),
        pentru_fiecare(muchie(V1, V2, Categorie2, [], Aaliza), adauga_muchie(V0, V2, Categorie1, Categorii, [Analiza | Analize])).

parse( Cat, Sir) :-
        V0 is 1,
        init_harta(V0, Vn, Sir),
        ((\+ muchie(V0, Vn, Sir),
        retractall(muchie(_, _, _, _, _)), !, fail);
        (pentru_fiecare(muchie(V0, Vn, Cat, [], Analiza), mwrite(Analiza)),
        retractall(muchie(_, _, _, _, _)))).

```


#Descrierea si implementarea unui parser top-down cu harta

Predicatul `parse` realizeaza
- initializarea hartii cu muchii lexicale inactive
- stabileste categoria simbolului considerat ca fiind initial sau de start
- adauga la inceputul hartii muchii active vide etichetate cu aceasta categorie.

Predicatul `init_harta` realizeaza initializarea hartii prin introducerea muchiilor inactive corespunzator fiecarui cuvant din sirul de intrare.

Predicatul `init_activ(Varf, Categorie)` stipuleaza ca pentru fiecare regula care extinde `Categorie` creeaza o muchie activa vida, in `Varf` bazata pe acea regula.

Predicatul `adauga_muchie` adauga pe harta o muchie activa sau inactiva, facand diferenta intre acestea, avand in vedere regula fundamentala cat si regula top-down.

Predicatul `test(Sir)` are rolul de a:
- specifica varful initial
- afisa rezultatele analizei
- inlatura toate muchiile create

```prolog
parse( V0, Vn, Sir) :-
        init_hart(V0, Vn, Sir),
        initial(Simbol),
        init_activ(V0, Simbol).

init_harta(V0, V0, []).
init_harta(V0, Vn, [Cuvant | Cuvinte]) :-
        V1 is V0 +1,
        pentru_fiecare(cuvant(Categorie,Cuvant), adauga_muchie(V0, V1, Categorie, [], [Cuvant, Categorie])),
        init_harta(V1, Vn, Cuvinte).

pentru_fiecare(X, Y) :- X, executa(Y), fail.
pentru_fiecare(_, _) :- true.

executa(Y) :- Y, !.

init_activ( V0, Categorie) :-
        pentru_fiecare(regula(Categorie, Categorii), adauga_muchie(V0, V0, Categorie, Categorii, [Categorie])).

adauga_muchie( V1, V2, Categorie, Categorii, Analiza) :-
        muchie( V1, V2, Categorie, Categorii, Analiza), !.
adauga_muchie( V1, V2, Categorie1, [], Analiza) :-
        asserta(muchie(V1, V2, Categorie1, [], Analiza)),
        pentru_fiecare(muchie(V0, V1, Categorie2, [Categorie1 | Categorii], Analize), adauga_muchie(V0, V2, Categorie2, Categorii, [Analiza | Analize])).
adauga_muchie( V1, V2, Categorie1, [Categorie2 | Categorii], Analize) :-
        asserta(muchie(V1, V2, Categorie1, [Categorie2 | Categorii], Analize)),
        pentru_fiecare(muchie(V2, V3, Categorie2, [], Analiza), adauga_muchie(V1, V3, Categorie1, Categorii, [Analiza| Analize])),
        init_activ(V2, Categorie2)

test(Sir) :- V0 is 1,
        inital(Simbol),
        parse(V0, Vn, Sir)
        ((\+ muchie(V0, Vn, Simbol, [], _),
        retractall(uchie(_, _, _, _, _)), !, fail);
        (pentru_fiecare(muchie(V0, Vn, Simbol, [], Analiza), mwrite(Analiza)),
        retractall(muchie(_, _, _, _, _)))).
```

#Descrierea si implementarea unui parser bottom-up cu harta si agenda

Predicatul `init_agenda(Sir, Varf, Agenda` creeaza o agenda initiala ce contine muchii lexicale, fiind dat sirul de intrare `Sir` care incepe de la nodul `Varf`. Se izoleaza primul cuvant, se consulta lexiconul si se plazeaza intro agenda toate muchiile inactive care acopera cuvantul. Aceasta agenda se adauga in fara agendei obtinute ca urmare a consultarii lexiconului relativ la celelalte cuvinte.

Predicatul `extinde_muchii(Agenda, InHarta, OutHarta)` este folosit pentru adaugarea muchiilor din `Agenda` unei harti initiale `InHarta`, adaugare ce ia in consideratie atat regula fundamentala cat si regula bottom-up. Aceste actiuni au ca rezultate crearea unei noi harti numita `OutHarta`.

Predicatul `muchii_noi(Muchie, Harta, Muchii)` care face corespondenta dintre `Muchie` si `Harta` si o multime de noi muchii `Muchii`, aparuta in urma adaugarii lui `Muchie` la `Harta`. Acest predicat are rolul de a adauga hartii muchiile active vide care declanseaza procesul de analiza sintactica. In definirea predicatului `muchii_noi` sunt luate in considerare cele doua cazuri posibile in inserarea pe harta a unei noi muchii( adaugarea unei muchii inactive sau adaugarea unei muchii active).

Predicatul `parse( Cat, Sir)` este cel ce se foloseste penntru interogare si indeplineste atributiile de a:
- specifica varful initial
- verifica daca harta contine intradevar o muchie care acopera intreg sirul de intrare relativ la categoria specificata

```prolog
init_agenda([], _ []).
init_agenda([Cuvant | Cuvinte], V0, Agenda) :-
        V1 is V0 + 1,
        findall(muchie(V0, V1, Categorie, []), cuvant(Categorie, Cuvant), Agenda1),
        init_agenda(Cuvinte, V1, Agenda2),
        append(Agenda1, Agenda2, Agenda).

extinde_muchii([], Harta, Harta).
extinde_muchii([Muchie | Agenda1], Harta1, Harta2) :-
        membru(Muchie, Harta1), !,
        extine_muchii(Agenda1, Harta1, Harta2).
extinde_muchii([Muchie | Agenda1], Harta1, Harta3) :-
        Harta2 = [Muchie | Harta1],
        muchii_noi(Muchie, Harta2, Muchii),
        adauga_muchii(Muchii, Agenda1, Agenda2),
        extinde_muchii(Agenda2, Harta2, Harta3).

adauga_muchie(Muchie, Muhcii, Muchii) :-
        membru(Muchie, Muchii), !.
adauga_muchie( Muchie, Muchii, [Muchie | Muchii]).

adauga_muchii([], Muchii, Muchii).
adauga_muchii([Muchie | Muchii], Muchii1, Muchii3) :-
        adauga_muchie(Muchie, Muchii1, Muchii2),
        adauga_muchii(Muchii, Muchii2, Muchii3).

muchii_noi(muchie(V1, V2, Categorie1, []), Harta, Muchii) :-
        findall( muchie(V1, V1, Categorie2, [Categorie1 | Categorii1]), regula(Categorie2, [Categorie1 | Categorii1]), Muchii1),
        findall(mcuhie(V0, V2, Categorie3, Categorii2), membru(muchie(V0, V1, Categorie3, [Categorie1 | Categorii2]), Harta), Muchii2),
        adauga_muchii(Muchii1, Muchii2, Muchii).
muchii_noi(muchie(V1, V2, Categorie1, [Categorie2 | Categorii]), Harta, Muchii) :-
        findall(muchie(V1, V3, Categorie1, Categorii), membru(muchie(V2, V3, Categorie2, []), Harta), Muchii).

parse(Cat, Sir) :-
        init_agenda(Sir, 0, Agenda),
        extinde_muchii(Agenda, [], Harta),
        memnru( muchie(0, M, Cat, []), Harta),
        N is M + 1,
        \+ (membru( muchie( _, N, _, _), Harta)).
```

#Descrierea si implementarea unui parser top-down cu harta si agenda

Predicatul `init_agenda` creeaza o agenda initializata cu muchii lexicale si e considerata si ca fiind harta initiala.

Predicatul `init_activ( Categorie, Varf, Muchii)` introduce pe harta initiala muchii active. Pentru fiecare regula care extinde `Categorie` creeaza, la `Varf` o muchie activa vida bazata pe regula respectiva. Muchia este apoi introdusa in lista `Muchii`.

Regula fundamentala a analizei sintactice cu harta, precum si regula top-down vor fi incorporate in predicatul `muchii_noi( Muchie, Harta, Muchii)` care face corespondenta intre `Muchie` si `Harta` si o multime de muchii noi numita `Muchii`, care ia nastere prin adaugarea lui `Muchie` la `Harta`. In definirea predicatului `muchii_noi` sunt luate in considerare cele doua cazuri posibile in inserarea pe harta a unei noi muchii( adaugarea unei muchii inactive sau adaugarea unei muchii active).

Interogarea se realizeaza prin intermediul predicatului `parse(Cat, Sir)` care:
- initializeaza harta
- creeaza, la inceputul hartii, muchia( muchiile) activa vida corespunzatoare categoriei analizate
- apeleaza `extinde_muchii` care realizeaza efectiv analiza sintactica a sirului de intrare `Sir` relativ la categoria specificata `Cat`
- elaboreaa harta pana la final efectuand o verificare a sfarsitului sirului de intrare
- verifica daca sa inregsitrat success in analiza sirului de intrare

```prolog
init_agenda([], _, []).
init_agenda([Cuvant | Cuvinte], V0, Agenda) :-
        V1 is V0 + 1,
        findall(muchie(V0, V1, Categorie, []), cuvant(Categorie, Cuvant), Agenda1),
        init_agenda(Cuvinte, V1, Agenda2),
        append(Agenda1, Agenda2, Agenda).

extinde_muchii([], Harta, Harta).
extinde_muchii([Muchie | Agenda1], Harta1, Harta2) :-
        membru(Muchie, Harta1), !,
        extinde_muchii(Agenda1, Harta1, Harta2).
extinde_muchii([Muchie | Agenda1], Harta1, Harta3) :-
        Harta2 = [Muchie | Harta1],
        muchii_noi(Muchie, Harta2, Muchii),
        adauga_muchii(Muchii, Agenda1, Agenda2),
        extinde_muchii( Agenda2, Harta2, Harta3).

adauga_muchie(Muchie, Muchii, Muchii) :-
        membru(Muchie, Muchii), !.
adauga_muchie(Muchie, Muchii, [Muchie | Muchii]).

adauga_muchii([], Muchii, Muchii).
adauga_muchii([Muchie | Muchii], Muchii1, Muchii3) :-
        adauga_muchie(Muchie, Muchii1, Muchii2),
        adauga_muchii(Muchii, Muchii2, Muchii3).

init_activ(categorie, Varf, Muchii) :-
        findall(muchie(Varf, Varf, Categorie, Categorii), regula(Categorie, Categorii), Muchii).

muchii_noi(muchie(V1, V2, Categorie1, []), Harta, Muchii) :-
        findall_muchie(V0, V2, categorie2, Categorii), membru(muchie(V0, V1, Categorie2, [Categorie1 | Categorii]), Harta), Muchii).
muchii_noi(muchie(V1, V2, Categorie1, [Categorie2  Categorii]), Harta, Muchii) :-
        init_activ(Categorie2, V2, Muchii1),
        findall(muchie(V1, V3, Categorie1, Categorii), membru(muchie(V2, V3, Categorie2, []), Harta), Muchii2),
        append(Muchii1, Muchii2, Muchii).

parse(Cat, Sir) :-
        init_agenda(Sir, 0, Harta1),
        init_activ(Cat, 0, Agenda),
        extinde_muchii(Agenda, Harta1, Harta2),
        membru(muchie(0, M, Cat, []), Harta2),
        N is M + 1,
        \+ (membru(muchie(_, N, _, _), Harta2)).
```


> **NU SE GARANETAZA CORECTITUDINEA SAU COMPLETITUDINEA INFORMATIILOR DE AICI**

> Ai descoperit o greseala? Ai facut o tema si vrei sa o dai si colegilor? Stii cum sa faci ceva sa arate mai bine? Contribuie [direct pe GitHub](https://github.com/Vlaaaaaaad/FMI-public-materials/tree/master/) sau trimite un mail la <mailto:stiu-chestii@vladionescu.me>

-------

> Written with [StackEdit](https://stackedit.io/).
