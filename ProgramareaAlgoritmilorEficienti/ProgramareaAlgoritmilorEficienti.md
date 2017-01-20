
Progrmarea algoritmilor eficienti
=================================

> **NU SE GARANETAZA CORECTITUDINEA SAU COMPLETITUDINEA INFORMATIILOR DE AICI**

> Ai descoperit o greseala? Ai facut o tema si vrei sa o dai si colegilor? Stii cum sa faci ceva sa arate mai bine? Contribuie [direct pe GitHub](https://github.com/Vlaaaaaaad/FMI-public-materials/tree/master/) sau trimite un mail la <mailto:stiu-chestii@vladionescu.me>

[TOC]

> **NU SE GARANETAZA CORECTITUDINEA SAU COMPLETITUDINEA INFORMATIILOR DE AICI**

> Ai descoperit o greseala? Ai facut o tema si vrei sa o dai si colegilor? Stii cum sa faci ceva sa arate mai bine? Contribuie [direct pe GitHub](https://github.com/Vlaaaaaaad/FMI-public-materials/tree/master/) sau trimite un mail la <mailto:stiu-chestii@vladionescu.me>



#Curs 1

> Poate o sa am timp sa scriu si cursurile frumos ca cele de jos, dar nu garantez.

![Curs 1, poza 1](https://www.vladionescu.me/PAE-Curs-1-1.JPG)

![Curs 1, poza 2](https://www.vladionescu.me/PAE-Curs-1-2.JPG)

![Curs 1, poza 3](https://www.vladionescu.me/PAE-Curs-1-3.JPG)

![Curs 1, poza 4](https://www.vladionescu.me/PAE-Curs-1-4.JPG)

> Poate o sa am timp sa scriu si cursurile frumos ca cele de jos, dar nu garantez.



#Seminar 1

##Teorema Master

Exercitii:
1. $T(n) = T\left(\frac{n}{2}\right) + O(1)$
2. $T(n) = 2 \cdot T\left(\frac{n}{2}\right) + O(n)$
3. $T(n) = 4 \cdot T\left(\frac{n}{2}\right) + O(n)$
4. $T(n) = 3 \cdot T\left(\frac{n}{2}\right) + O(n)$

Rezolvari:

1.
$$
a = 1 \\
b = 2 \\
d = 0 \\
b^d = 1 \\
a = b^d \\
T(n) = O\left( n^0 \log n \right) = O(\log n)
$$

2.
$$
a = 2 \\
b = 2 \\
d = 1 \\
b^d = 2 \\
a = b^d \\
T(n) = O(n \log n)
$$

3.
$$
a = 4 \\
b = 2 \\
n = 1 \\
b^d = 2 \\
a \gt b^d \\
T(n) = O\left(n^2\right)
$$

4.
$$
a = 3 \\
b = 2 \\
d = 1 \\
b^d = 2 \\
a \gt b^d \\
T(n) = O\left(n \log_2(3)\right)
$$

##Algoritm de inmultire a 2 numere de lungime n

Algoritmul direct are complexitatea $O\left(n^2\right)$.

Alt algoritm bazat pe paradigma Divide and Conquer.
Vrem sa inmultim $x$ cu $y$. Impart numerele in 2 jumatati. $x_\text{left}$ si $x_\text{right}$ si $y_\text{left}$ si $y_\text{right}$( fiecare de $\frac{n}{2}$ biti). Incercam sa obtinem rezultatul inmultind jumatatile intre ele. Trebuie sa le scriem ca sume intre cele 2 bucati.

$x = 2^{\frac{n}{2}} \cdot x_\text{left} + x_\text{right}$. A se nota ca x e reprezentat in binar.

$x \cdot y = 2^n \cdot x_\text{left} \cdot y_\text{left} + 2^{\frac{n}{2}}(x_\text{left} \cdot y_\text{right} + x_\text{right} \cdot y_\text{left}) + x_\text{right} \cdot y_\text{right}$


Deci, putem scrie un program de genul pentru a le inmulti:

```
Produs(n)
	Imparte x, y in 2                                     O(n)

	(Apelez)Produs(n/2) ->(returneaza) x_left * y_left    O(n/2)
	(Apelez)Produs(n/2) ->(returneaza) x_right * y_right  O(n/2)
	(Apelez)Produs(n/2) ->(returneaza) x_left * y_right   O(n/2)
	(Apelez)Produs(n/2) ->(returneaza) x_right * y_left   O(n/2)

	Combina                                               O(n)
```
Cost total:                                                   $T(n) = 4 \cdot T\left(\frac{n}{2}\right) + O(n)$

Dar am calculat si asta e echivalenta cu $O\left(n^2\right)$ care e echivalenta cu algoritmul direct. Nu e de bine. Vrem sa ne gandim la o solutie mai buna, cu 3 apeluri recursive. Daca reduc numarul de apeluri la 3 obtin o solutie sub-patratica, mai buna.

Putem sa optimizam ecuatia aia cu $x \cdot y$.
$$\\
(x_\text{left} \cdot y_\text{right} + x_{\text{right}} \cdot y_\text{left}) \to \\
(x_\text{left} + x_\text{right})(y_\text{left} + y_\text{right}) = x_\text{left} \cdot y_\text{left} + x_\text{right} \cdot y_\text{right} + (x_\text{left} \cdot y_\text{right} + x_\text{right} \cdot y_\text{left})
$$

Deci, programul devine:
```
Produs(n)
	Imparte x, y in 2                                                 O(n)

	Produs(n/2) ->(returneaza) x_left * y_left                        O(n/2)
	Produs(n/2) ->(returneaza) x_right * y_right                      O(n/2)
	Produs(n/2) ->(returneaza) (x_left + x_right)*(y_left + y_right)  O(n/2)
	Reconstitui (x_left * y_right + x_right * y_left)                 O(1)

	Combina                                                           O(n)
```
Cost total:                                                               $T(n) = 3 \cdot T\left(\frac{n}{2}\right) + O(n) = T(n^{\log_2 3})$ care e mai mic decat $O\left(n^2\right)$, deci mai bun.



##Comparatii

$$ \\
A_1: T(n) = 4 \cdot T\left(\frac{n}{2}\right) + O(n) \\
A_2: T(n) = 3 \cdot T\left(\frac{n}{2}\right) + O(n) \\
A_3: T(n) = 4 \cdot T\left(\frac{n}{2}\right) + O\left(n^2\right) \\
A_4: T(n) = 3 \cdot T\left(\frac{n}{2}\right) + O\left(n^2\right) \\
$$

Sa se compare 2 cate 2 intre ei. Facem apel la Teorema Master numai daca nu avem un control.

$A_2$ e mai bun decat $A_1$, in mod clar. Am 3 apeluri in loc de 4.
$A_4$ e mai bun decat $A_3$, la fel.

$A_1$ e mai bun decat $A_3$.
$A_2$ e mai bun decat $A_4$.

$A_3$ cu $A_2$. E clar ca nu mai trebuie comparati.

$A_1$ cu $A_4$ trebuie comparati.
Aplicam Teorema Master.
$$\\
A_1: a = 4, b = 2, d =1 \\
a \gt b^d \implies T(n) = O(n^{\log_2 4}) = O(n^2)\\
$$

$$\\
A_4: a = 3, b = 2, d = 2 \\
a \lt b^d \implies T(n) = O(n^2) \\
$$

Deci, $A_1$ e echivalent cu $A_4$.



##Probabilitati

Arunc 2 zaruri. Cate evenimente avem? Ies $\{(i,j) | i,j = \overline{1,6}\} = 36$.

Sa estimam probabilitatea ca suma celor 2 zaruri este egala cu 7, 4, 12.

$Pr\{\text{suma } = 7\} = Pr\{(1,6) \vee (2,5) \vee (3, 4) \vee (4,3) \vee (5,2) \vee  (6,1)\} = 6  \frac{1}{36}  = \frac{1}{6}$
$Pr\{\text{suma } = 4\} = Pr\{(1,3) \vee (2,2) \vee (3,1)\} = \frac{1}{12}$
$Pr\{\text{suma } = 12\} = Pr\{(6,6)\} = \frac{1}{36}$

##Variabile aleatoare

Suma de mai sus e o varibila aleatoare.
Vreau sa calculez media variabilei aleatoare Suma.
$E[\text{Suma}] = 7$.

Dar $E[1 \text{ zar}] = \frac{7}{2}$ si $E[\text{Chestie 1} + \text{Chestie 2}] = E[\text{Chestie 1}] + E[\text{Chestie 2}]$.

Nu am scris mai detaliat ca am iesit la tabla.



#Curs2

> **Lipsa, se accepta donatii.**



#Seminar2

##B-arbori

###Numarul minim de chei dintr-un B-arbore

**Teorema**: Intr-un B-arbore cu $n$ chei( chei, nu noduri) de grad minim $t$ si inaltime $h$ avem urmatoarea limita superioara pentru inaltime: $h \le \log_t \frac{n+1}{2}$.

**Demonstratie**:

Demonstram plecand de la o inegalitate de tipul $n \ge \text{ numarul minim de chei la grad } t \text{ si inaltime } h$.
O sa imi construiesc un B-arbore de grad $t$, o sa ii pun inaltimea $h$ si o sa incarc fiecare nod cu un numar minim de chei. In radacina $1$ cheie, in celelalte noduri cate $t-1$ chei si $\implies$ numarul minim de chei pe tot arborele.

| Nivelul | Numar de noduri | Numar de chei |
|---------|-----------------|---------------|
|   $0$   |      $1$        |      $1$      |
|   $1$   |      $2$        |     $2t-1$    |
|   $2$   |      $2t$       |    $2t(t-1)$  |
|   $3$   |      $2t^2$     |   $2t^2(t-1)$ |
|   ...   |      ...        |       ...     |
|   $h$   |      $2t^{h-1}$ |$2t^{h-1}(t-1)$|

Deci numarul minim de chei pentru tot arborele este:
$$\\
1 + 2t-1 + 2t^2(t-1) + \cdots + 2t^{h-1}(t-1)\\
= 1 + 2(t-1)\left( 1 + t + t^2 + \cdots + t^{h-1} \right) \\
= 1 + 2(t-1) \cdot \frac{t^h-1}{t-1} \\
= 1 + 2 (t^h - 1) \\
= 2t^h - 1 \\
$$

Dar eu vreau ca $n$ sa fie mai mare decat numarul minim de chei.

$$\\
n \ge 2t^h-1 \\
2t^h \le 1 + n \\
t^h \le \frac{1+n}{2} \\
h \le \log_t \frac{n+1}{2} \\
$$

###Numarul maxim de chei dintr-un B-arbore

De data asta incarc la maxim nodurile. Iau un nod radacina, ii pun maximul posibil de chei, adica $2t-1$. O sa am $2t$ copii, fiecare cu $2t-1$ chei. Fiecare are la randul lui $2t$ copii cu $2t-1$ chei.

| Nivelul | Numar de noduri | Numar de chei |
|---------|-----------------|---------------|
|    0    | 1               | $2t-1$        |
|    1    | $2t$            | $2t(2t-1)$    |
|    2    | $(2t)^2$        | $(2t)^2(2t-1)$|
|   ...   |        ...      |      ...      |
|    h    | $(2t)^h$        | $(2t)^h(2t-1)$|

Deci numarul maxim de chei pentru tot arborele este:
$$\\
(2t-1)\left( 1 + 2t + (2t)^2 + \cdots + (2t)^h \right) \\
= (2t-1) \frac{(2t)^{h+1}-1}{2t-1} \\
= (2t)^{h+1}-1 \\
$$

Deci daca scriu inegalitate $n$ $\le$ numarul maxim de chei $\implies$:
$$\\
n \le (2t)^{h+1}-1 \\
\log_{2t}(n+1) \le h+1 \\
h \ge \log_{2t}(n+1)-1 \\
$$

###Exercitii
1. Construiti B-arborele:
$t = 3$, $2 \le n(x) \le 5$
Cheile care se insereaza: `F`, `S`, `Q`, `K`, `C`, `L`, `H`, `T`, `V`, `W`, `M`, `R`, `N`, `P`, `A`, `B`, `X`, `Y`, `D`, `Z`, `E`.

Plecam cu un nod gol, asa ca punem chei. Cat timp n-am ajuns la 5 chei, pun acolo. Cheile se pun in ordine crescatoare. Cheile sunt separatori pentru cheile din copii. Ca la arbore binar de cautare.

Radacina: Punem 5 litere. `FSQKC`, dar ordonate alfabetic. Deci punem in radacina `CFKQS`.

Trebuie sa il bagam pe `L`, dar nu mai avem loc. Cries. Spargem nodul plin in jurul cheii mediane. Ia cheia mediana, o ridica un nivel mai sus si separa cei 2 copii.

Facem split dupa nodul de mijloc. `K`. `K` se ridica ca radacina care o sa aiba un fiu stang si un fiu drept.
In nodul stang am `CF` si in nodul drept `QS`. Vrem sa il bagam pe `L`.
Il bagam in dreapta ca e mai mare ca `K`, `LQS`.
![Seminar 2, poza 1 - Inseram L](https://www.vladionescu.me/PAE-Seminar-2-1.png)

Vrem sa il bagam pe `H`. E mai mic ca `K`, se duce in stanga. Stanga devine `CFH`.
![Seminar 2, poza 2 - Inseram H](https://www.vladionescu.me/PAE-Seminar-2-2.png)

Vrem sa il bagam pe `T`. E mai mare ca `K`, merge in dreapta. Dreapta devine `LQST`.
![Seminar 2, poza 3 - Inseram T](https://www.vladionescu.me/PAE-Seminar-2-3.png)

Inseram pe `V`.
![Seminar 2, poza 4 - Inseram V](https://www.vladionescu.me/PAE-Seminar-2-4.png)

Vrem sa il bagam pe `W`. E mai mare ca `K`, merge in dreapta. Nodul din dreapta in schimb e plin. Spargem nodul din dreapta deci. `S` e cheia mediana si o ridicam ca radacina, langa `K`. Deci radacina e acum `KS`. Radacina are 3 copii. In stanga am nodul care era acolo, `CFH`. In mijloc am `LQ`. In dreapta am `TV` unde adaugam pe `W` asa ca devine `TVW`.
![Seminar 2, poza 5 - Inseram W](https://www.vladionescu.me/PAE-Seminar-2-5.png)

Inseram `M`.
![Seminar 2, poza 6 - Inseram M](https://www.vladionescu.me/PAE-Seminar-2-6.png)

Inseram `R`.
![Seminar 2, poza 7 - Inseram R](https://www.vladionescu.me/PAE-Seminar-2-7.png)

Inseram `N`.
![Seminar 2, poza 8 - Inseram N](https://www.vladionescu.me/PAE-Seminar-2-8.png)

Cand vrem sa il adaugam pe `P` care e intre `K` si `S` vrem sa il adaugam in mijloc. Dar nodul din mijloc e plin. Asa ca il spargem. `N` se duce in radacina care acum e `KNS`. In stanga am `CFH`, langa ea `LM`( primul spart), langa `QR` ( al doilea spart) si in dreapta `TVW`. Il punem pe `P` in al 3-lea, deci `PQR`.
![Seminar 2, poza 9 - Inseram P](https://www.vladionescu.me/PAE-Seminar-2-9.png)

Inseram `A`.
![Seminar 2, poza 10 - Inseram A](https://www.vladionescu.me/PAE-Seminar-2-10.png)

Inseram `B`.
![Seminar 2, poza 11 - Inseram B](https://www.vladionescu.me/PAE-Seminar-2-11.png)

Inseram `X`.
![Seminar 2, poza 12 - Inseram X](https://www.vladionescu.me/PAE-Seminar-2-12.png)

Inseram `Y`.
![Seminar 2, poza 13 - Inseram Y](https://www.vladionescu.me/PAE-Seminar-2-13.png)

Vrem sa il bagam pe `D` care e mai mic ca `K`, deci vrem sa il punem in stanga. Dar in stanga avem care e plin. Trebuie spart si el. `C` urca in radacina unde avem acum `CKNS`. Ca noduri avem acum: `AB`( primul spart), `FH`( al doilea spart), `LM`, `PQR`, `TVWXY`.
![Seminar 2, poza 14 - Inseram D](https://www.vladionescu.me/PAE-Seminar-2-14.png)

Vrem sa il bagam pe `Z` care e mai mare ca `S` deci trebuie sa fie maxim in dreapta unde avem `TVWXY`. Il spargem. `W` urca in radacina unde avem `CNKSW` acum. Avem 6 copii. `AB`, `DFH`, `LM`, `PQR`, `TV`( primul spart), `XYZ`( al doilea spart).
![Seminar 2, poza 15 - Inseram Z](https://www.vladionescu.me/PAE-Seminar-2-15.png)

Vrem sa il bagam pe `E`. Dar radacina e plina. **Nu trecem niciodata peste un nod plin ca nu stim daca mai jos are loc**. Spargem.
![Seminar 2, poza 16 - Inseram E](https://www.vladionescu.me/PAE-Seminar-2-16.png)

Radacina este `N`. Ca copii avem `CK`, `SW`.
`CK` are si el copii. `AB`, `DEFH`, `LM`.
`SW` are si el copii. `PQR`, `TV`, `XYZ`.

2. Stergere.
Din arborele rezultat mai sus sa il stergem pe `R`:

Plec din radacina si ma duc la `R`. Adica in dreapta ca e mai mare. Mergem in `SW` si constatam ca e incarcat la minim( 2). Nu am voie sa trec peste el. Are frati care sunt incarcati tot la minim. Cobor o cheie din parinte si unesc fratii incarcati la minim si fac merge. Invers pentru spart.
Avem ca radacina `CKNSW`.
Intre `K` si `N` avem un nod. `LM`.
Intre `N` si `S` avem un nod. `PQR`.
Intre `C` si `K` avem un nod. `DEFH`.
Mai mic ca `C` avem nod. `AB`.
Intre `SW` avem `TV`.
Mai mare ca `W` avem nod. `XYZ`.

Deci copii pentru radacina `AB`, `DEFH`, `LM`, `PQ*R*`, `TV`, `XYZ`. Stergem `R` si avem ca copii `AB`, `DEFH`, `LM`, `PQ`, `TV`, `XYZ`.
![Seminar 2, poza 17 - Stergem R](https://www.vladionescu.me/PAE-Seminar-2-17.png)

Din arborele asta vrem sa il stergem pe `W`.
Cheia aia separa 2 fii. Trebuie sa gasesc in fii pe cine urca ca separator. Are fii destul de bogati, pe `XYZ`. O sa urce `X`.

Radacina devine deci `CKNSX`.
Ca copii avem `AB`, `DEFH`, `LM`, `PQ`, `TV`, `YZ`.
![Seminar 2, poza 18 - Stergem W](https://www.vladionescu.me/PAE-Seminar-2-18.png)

Vrem sa il stergem pe `B`.


Are numar minim de chei nodul lui `B`( adica `AB`). Ne uitam la frati. Din fratele lui vrem sa urce din frate cineva la `C`, `C` cobora in `AB`. `DEFH`( fratele) poate sa ne dea separator. Ne da pe `D`.

Radacina devine `DKNSX`.
Copii: `AC`, `EFH`, `LM`, `PQ`, `TV`, `YZ`.
![Seminar 2, poza 19 - Stergem B](https://www.vladionescu.me/PAE-Seminar-2-19.png)

Vrem sa il stergem pe `S`. Nasol momentu'.
E intr-un nod interior deci trebuie sa ridic din fii separator, dar amandoi fii sunt saraci( au 2 chestii). Deci cobor pe `S` si unesc cei 2 fii si din nodul nou format sterg.

Radacina devine `DKNX`.
Copii: `AC`, `EFH`, `LM`, `PQSTV`, `YZ`.
Stergem `S`, deci avem copii `AC`, `EFH`, `LM`, `PQTV`, `YZ`.
![Seminar 2, poza 19 - Stergem S](https://www.vladionescu.me/PAE-Seminar-2-20.png)

3. Sa constuim toti B-arborii de grad $t=2$ care eu cheile `1`, `2`, `3`, `4`, `5`. Trebuie sa luam toate permutarile.

Deci la gradul $t=2$ avem $ 1 \ge n(x) \le 3$( e formula pentru asta - a se vedea mai sus si teoria).
Deci avem voie sa avem 1, 2 sau 3 chei.

E la fel ca la alfabet, dar de data asta avem numere. Yey, nu trebuie sa stim alfabetul.

 3.1. Inseram `1`, `2`, `3`, `4`, `5`( prima permutare)

Radacina `123`.

Vrem sa il bagam pe `4`. Vad radacina plina asa ca ii facem split. Se ridica `2` ca radacina.

Deci avem ca radacina `2`.
Copii: `1`, `345`.

3.2. Vrem sa trecem la urmatoarea permutare. Ne gandim ca avem $5!$ permutari si ca e nasol. Ca $5! = 120$. Dar in radacina o sa am intotdeauna 3 chei in ordine crescatoare. Cand inseram al patrulea element spargem radacina. Cheia din mijloc se ridica sus. Cheie din mijloc putem avea deci 2, 3 sau 4.

Deci ies 3 arbori repede:

Radacina: `2`. Copii: `1`, `345`.
Radacina: `3`. Copii: `12`, `45`.
Radacina: `4`. Copii: `123`, `5`.

Alte optiuni nu avem, deci gata. Yey, nu a trebuit sa ne plimbam prin 120 permutari.



#Curs 3

> **Lipsa, se accepta donatii.**



#Seminar 3

##Arbori binomiali

1. Demonstrati ca $\forall$ $k$, $B_k$ sunt adeavare urmatoarele afirmatii:

a. $B_k$ are $2^k$ noduri, adica $|B_h| = 2^k$
b. inaltimea lui $B_k$ e $k$, adica $h(B_k) = k$
c. la nivelul $i$ in $B_k$ avem $C_k^i$ noduri
d. gradul radadcinii lui $B_k$ este $k$ si este cel mai mare grad dintre toate nodurile din $B_k$ si daca copii radacinii sunt numerotati de la dreapta la stanga, atunci avem ca si copii ai radacinii $B_0, B_1, B_2, \ldots B_{k-1}$, adica
$\text{deg}(\text{root}(B_k)) = k$

Se face inductie si se demonstreaza toate proprietatile pentru $B_0$ si dupa se face ipoteza de inductie.

Demonstratii:

a.

Pentru $B_0$ avem ca:
a. $B_0$: $|B_0| = 1 = 2^0$
b. $h(B_0) = 0$
c. la nivelul $i$ in $B_0$ avem $C_0^0 = 1$ care e adevarat
d. $\text{deg}(\text{root}(B_k)) = 0$ ca nu are nici un fiu

Inductie: $B_{k-1}$ verifica toate cellalte proprietati.

Il luam pe $B_k$ si veirificam.

a. $|B_k| = |B_{k-1}| + |B_{k-1}| = 2^{k-1} + 2^{k-1} = 2^k$
b. $h(B_k) = h(B_{k-1}) + 1 = k - 1 + 1 = k$
c. $$D(k,i) = \text{numarul de noduri in } B_k \text{ la nivelul } i \\
= D(k-1, i-1) + D(k-1, i) \\
= C_{k-1}^{i-1} + C_{k-1}^i \\
= \frac{(k-1)!}{(i-1)! (k-1)!} + \frac{(k-1!)}{i! (k-i-1)!} \\
= C_k^i$$
d. $\text{deg}(\text{root}(B_k)) = \text{deg}(\text{root}(B_{k-1})) + 1 = k - 1 + 1 = k$

Partea a 2-a se rezolva cu desen care iese din regulile de constructie.

##Heap binomial

Colectii de arbori binomiali:
a. fiecare arbore este min-heap
b. pentru fiecare grad am in heap un singur arbore de acel grad lista de radacini, credcator grade.

1. Reuniti $H_1$ cu $H_2$.

Ne apucam sa parcurgem si sa legam.

Trebuie sa legam 12 cu 18 si sa fie min-heap. Ca sa fie min, 12 e radacina si 18 e fiu, deci am ceva de grad 1. Asa ca am 2 abori de grad 1: 12, 7 si 3. Il las pe loc pe primul si ii leg pe urmatorii 2.

**text lipsa**

![Seminar 3, poza 1 - H1 U H2 = H3](https://www.vladionescu.me/PAE-Seminar-3-1.JPG)

![Seminar 3, poza 2 - H1 U H2 = H3, continuare I guess](https://www.vladionescu.me/PAE-Seminar-3-2.JPG)

2. Extragere de minim. ( Evident, minimul se afla printre lista nodurilor radacina. )
Cum il extragem e 1? Il taiem pe 1 si dupa reunim ce a ramas. **text lipsa**
Parcurgem lista de radacini si unim intre ei 2 cate 2 cei care au acelasi grad. Facem asta pana ramanem pentru fiecare grad cu un arbore. Gata extragerea de minim.

![Seminar 3, poza 3 - Extragere de minim](https://www.vladionescu.me/PAE-Seminar-3-3.JPG)

3. Descresterea unei chei. Vreau sa il descres pe 26 de la 26 la 5. Adica vreau sa pun 5 in loc de 26. Daca descresc o cheie se strica proprietatea de min-heap, deci trebuie sa verific. 16 nu e mai mic ca 5, deci il scad pe 16 si il urc pe 5. Dupa compar pe 5 cu 10. 10 nu e mai mic ca 5, deci le interschimb.

![Seminar 3, poza 4 - Descrestere](https://www.vladionescu.me/PAE-Seminar-3-4.JPG)

4. Stergerea unui nod.

Se sterge in 2 pasi: iau nodul de sters, si il descresc cheia pana la -\infinity, urca in radacina si intregului ansamblu ii aplic o extragere de minim.

Vreau sa il sterg pe $23$. Il fac pe $23$ $-\infty$. $-\infty$ e mai mic ca $10$, deci il mut. $-\infty$ e mai mic ca $5$, deci il mut. $-\infty$ ajunge radacina. $-\infty$ e radacina, il extragem. Gata stergerea nodului. Stim sa il stergem pe $-\infty$.

![Seminar 3, poza 5 - Stergere de nod](https://www.vladionescu.me/PAE-Seminar-3-5.JPG)


#Curs 4

> **Lipsa, se accepta donatii.**



#Seminar 4

##Heapuri fibbonaci

1. Extrageti minimul din arborele de mai jos.

Dispare cheia, toti fii se leaga in lista de radacini si de la urmatorul nod fac parcurgere cu consolidare.

** Explicatie pe lung lipsa. **

2. Din heap-ul rezultat de la exercitiul precedent( cu nodurile 26, 18 si 19 marcate) sa se descreasca cheia nodului 46 la 15( vreau sa pun 15 in loc de 46). 15 nu e in relatie buna cu 24( nu e mai mare 15 ca 24) deci il marcheaza pe 24 si se duce in lista de radacini.

3. Acum mai facem o descrestere de cheie. Vrem sa il descrestem pe 35 la 5. Il taiem pe 35. Tatal e deja marcat. Deci il tai de la tata si il pun in lista de radacini si il pun si pe tata in lista de radacini ca e marcat. E si tatal tatalui marcat( 24), deci il punem si pe el( 24) in lista de radacini. Noul minim e 5.

> See cascading cut in Cormen.

4. Vrem sa stergem nodul. Descrestem cheia la $-\infty$ si facem extragere de minim. Trebuie facuta si consolidare.


##Arborbi binomiali

$\forall k, B_k $cu nodurile etichetate in postordine, in binar. Pentru fiecare nod $x \in B_k$:
a. Numarul de 0 din eticheta imi da nivelul nodului
b. Gradul nodului este dat de numar de 1 din dreapta celui mai din dreapta 0 al etichetei.



#Curs 5

> **Lipsa, se accepta donatii.**



#Seminar 5

##[Retele de sortare](https://en.wikipedia.org/wiki/Sorting_network)

1. Retelele din poza sunt retele de sortare sau nu?

![Seminar 5 poza 1 - Retele](https://www.vladionescu.me/PAE-Seminar-5-1.JPG)

Demonstratie:
Dupa primii doi pasi pe primul fir o sa am minus. Simetric, pe firul 4 o sa am maximul dupa 2 pasi.
La pasul 3 compar ce a mai ramas la mijloc si le asez in ordinea care trebuie.

Alte retele aici. Gave up.

Brad = bubble sort. Reteaua e paralela. Dar bubble sort nu e. Deci reteaua imi spune ca il pot paraleliza pe bubble sort.

![Seminar 5, poza 2 - Bubble sort](https://www.vladionescu.me/PAE-Seminar-5-2.JPG)


#Curs 6

> **Lipsa, se accepta donatii.**



#Seminar 6

> **Lipsa, se accepta donatii.**



#Curs 7

> **Lipsa, se accepta donatii.**



#Seminar 7

##Algoritmi paraleli pe liste

Presupunem ca fiecare nod al listei asignat cate un procesor.

###List ranking

Vreau sa gasesc pentru fieacre nod al listei cate noduri mai sunt pana la sfarsit. Rangul ultimului nod va fi 0, in mod evident.

Initializam cu 0 ultimul nod si cu 1 toate celelalte noduri.

Programul paralel care va fi ``exclusiveReadexclusiveWrite(EREW)``.

```
for fiecare procesor i in paralel
	do if next[i] == nil
		then d[i] = 0
		else d[i] = 1
// gata initalizarea

while exista i astfel incat next[i] != nil
	do for fiecare i in paralel
		do if next[i] != nil
			then d[i] = d[i] + d[next[i]]
			     next[i] = next[next[i]]
```

Timpul de rulare e $\log(n)$ datorita saririi pointerilor.

![Seminar 7, poza 1 - List ranking](https://www.vladionescu.me/PAE-Seminar-7-1.JPG)

###Calculul unor prefixe paralele

Avem o operatie binara asociativa. Presupunem ca e adunare. Ni se dau numere $x_1, x_2, \dotsc, x_n$. Vreau sa calculex $y_1 = x_1, y_2 = x_1 + x_2, \dotsc, y_k = x_1 + x_k$. Vreau sa calculez toate aceste sume partiale. Folosesc notatia $x_i + \dotsc + x_j = [i,j]$ si $x_i = [i,i]$.

O sa am urmatoarea aritmetica $[i,j] + [j+1, k] = [i, k]$.

``ListPrefix(EREW)``
```
for fiecare i in paralel
	do y[i] = x[i]

// gata initializarea

while exista i astfel incat next[i] != nil
	do for fircare i in paralel
		do if next[i] != nil
			then y[next[i]] = y[i] + y[next[i]]
			     next[i] = next[next[i]]
```
Din nou avem pointer-jumping. E foare asemanator cu programul precedent.

![Seminar 7, poza 2 - ListPrefix](https://www.vladionescu.me/PAE-Seminar-7-2.JPG)

---

O sa folosim algoritmi pe liste ca sa rezolvam probleme pe arbori, spre exemplu arbori binari. Vreau intrun arbore binar sa aflu inaltimea fiecarui nod. 0 radacina, 1 la nodurile de la nivelul 1 si tot asa.

Vreau sa pun pe arborele meu o structura de lista simplu inlantuita. Pe arborele meu vreau sa pun o structura de tur oriler. E un drum care parcurge fiecare arc o singura data. Deci prin fiecare arc trec 1 singura data, dar printrun varf pot sa trec d emai multe ori. O sa vreau pe arborele meu sa pun o structura deasta ca sa pun o structura care e o lista simplu inlantuita. Pleaca din radacina si parcurge tot arborele o singura data si iese tot prin radacina.

Asignez fiecarui nod cate 3 procesoare: A, B si C. Si leg printro sageata procesorul A al unui nod de procesarul A al fiului sau stang; daca nu am fiu stang A merge in B-ul din acelasi nod. Din B ma duc in A-ul filui drept, daca exista. Am ametit si pierdut firul, a se vedea poza.

Pe lista simplu inlantuita rezultata pot sa fac programe de liste. De exemplu sa calculez List Prefix de mai sus. Trebuie sa ma gandesc sa fac in mod inteligent initializarea procesoarelor astfel incat calculul ``ListPrfeix`` sa imi dea rezultatul dorit.

In toate A pun 1, in B pun 0 si in C pun -1. Cu aceste 3 valori cu ``ListPrefix`` aflam in procesorul C nivelul fiecarui nod, in timp $\log(3n)$.

![Seminar 7, poza 3 - Arborele inainte sa fie completat](https://www.vladionescu.me/PAE-Seminar-7-3.JPG)

![Seminar 7, poza 4 - Arborele completat](https://www.vladionescu.me/PAE-Seminar-7-4.JPG)


> **NU SE GARANETAZA CORECTITUDINEA SAU COMPLETITUDINEA INFORMATIILOR DE AICI**

> Ai descoperit o greseala? Ai facut o tema si vrei sa o dai si colegilor? Stii cum sa faci ceva sa arate mai bine? Contribuie [direct pe GitHub](https://github.com/Vlaaaaaaad/FMI-public-materials/tree/master/) sau trimite un mail la <mailto:stiu-chestii@vladionescu.me>

-------

> Written with [StackEdit](https://stackedit.io/).
