
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

$x  y = 2^n \cdot x_\text{left} \cdot y_\text{left} + 2^{\frac{n}{2}}(x_\text{left} \cdot y_\text{right} + x_\text{right} \cdot y_\text{left}) + x_\text{right} \cdot y_\text{right}$


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

Putem sa optimizam ecuatia aia cu $x \times y$.
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


> **NU SE GARANETAZA CORECTITUDINEA SAU COMPLETITUDINEA INFORMATIILOR DE AICI**

> Ai descoperit o greseala? Ai facut o tema si vrei sa o dai si colegilor? Stii cum sa faci ceva sa arate mai bine? Contribuie [direct pe GitHub](https://github.com/Vlaaaaaaad/FMI-public-materials/tree/master/) sau trimite un mail la <mailto:stiu-chestii@vladionescu.me>

 -------

> Written with [StackEdit](https://stackedit.io/).
