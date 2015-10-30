Ecuatii Diferentiale si cu Derivate Partiale
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =

[TOC]

> **NU SE GARANETAZA CORECTITUDINEA SAU COMPLETITUDINEA INFORMATIILOR DE AICI**

> Ai descoperit o greseala? Ai facut o tema si vrei sa o dai si colegilor? Stii cum sa faci ceva sa arate mai bine? Contribuie [direct pe GitHub](https://github.com/Vlaaaaaaad/FMI-public-materials/tree/master/EcuatiiDiferentialeSiCuDerivatePartiale) sau trimite un mail la <mailto:stiu-chestii@vladionescu.me>

#Bibliografia
 - Ioan Rosca, "Ecuatii diferentiale si cu derivate partiale", Editura Fundatiei 'Romania de Maine' 2000
 - Stefan Minica, "Ecuatii diferentiale", Editura Universitatii din Bucuresti, volumele 1 si 2
 - Aurelian Cernea, "Ecuatii diferentiale", Editura Universitatii din Bucuresti
 - Ioan Rosca, "Ecuatii cu derivate partiale", Editura Universitatii din Bucuresti

#Ecuatii diferentiale

###### {#definitie}
O ecuatie diferentiala de ordin $k \in \mathbb{N}^*$ cu functia necunoscuta $x : I \subset \mathbb{R} \to \mathbb{R}^n$, cu $n \in \mathbb{N}^*$, $x = (x_1, \dotsc, x_n)$ se defineste prin $F(t, x, x^{(1)}, \dotsc, x^{(k)}) = 0$ unde $F : G \subset \mathbb{R} \times \mathbb{R}^n \dotsc \times \mathbb{R}^n \to \mathbb{R}$ si $x^{(j)} = (x_1^{(j)}, \dotsc, x_n^{(j)})$, cu $j = \overline{1,k}$.

Se poate da, daca este posibil, o forma explicita( cvasiliniara): $x^{(k)} = f(t, x, x^{(1)}, \dotsc, x^{(k - 1)})$ sau, pe componente: $$x_1^{(k)} = f_1(t, x, x^{(1)}, \dotsc, x^{(k - 1)}) \\
\dotsc \\
\dotsc \\
\dotsc \\
x_n^{(k)} = f_n(t, x, x^{(1)}, \dotsc, x^{(k - 1)})$$

De exemplu:
$$
k = 1, n = 2 \\
x = (x_1, x_2) \\
f = (f_1, f_2) : G \subset \mathbb{R} \times \mathbb{R}^n \dotsc \times \mathbb{n} \to \mathbb{R} \\
x_1^{'} = f_1(t, x)\\
x_2^{'} = f_2(t, x)
$$
unde
$$
f_1(t, x) = \frac{1}{2} x_1 + 2x_2 + e^t \\
f_2(t, x) = x_1 - x_2 + t \\
\implies x_1 = \frac{1}{2} x_1 + 2x_2 + e^t \\
x_2 = x_1 - x_2 + t
$$

Cazul $k = 1$ si $n = 1$ $\implies$ ecuatii diferentiale in $\mathbb{R}$ de ordin 1( scalare).

> Notatie: $x' = \dot x = {\operatorname{d}\over\operatorname{d}\!x}$

Din [definitie](#definitie) $F(t, x, x^{(1)}, \dotsc, x^{(k)}) = 0$, $\implies$ $F(t, x, x') = 0$( forma implicita) unde $F : G \subset \mathbb{R} \times \mathbb{R} \times \mathbb{R} \to \mathbb{R}$

Din [definitie](#definitie) $x^{(k)} = f(t, x, x^{(1)}, \dotsc, x^{(k - 1)})$ $\implies$ $x' = f(t,x)$( forma explicita) unde $f : D \subset \underbrace{\mathbb{R}}_\text{t} \times \underbrace{\mathbb{R'}}_\text{x} \to \mathbb{R}$.

#Cazuri particulare de ecuatii diferentiale scalare de ordin 1

##Ecuatii diferentiale de tip primitiva
$f(t,x)$ depinde doar de t.

###Exemplu
$$
f: I \to \mathbb{R} \\
f(t) = \frac{2 \cos t}{\sin t + \cos t}, \text{ cu }t \in I = \left(0, \frac{\pi}{2}\right)
$$
$$
{\operatorname{d}\!x\over\operatorname{d}\!t} = f(t) \implies x(t) = \int f(t) {\operatorname{d}\!t} = \dotsc
$$

##Ecuatii cu variabile separabile
$f(t,x) = a(t)b(x)$ cu $a : I \subset \mathbb{R} \to \mathbb{R}$ si $b : J \subset \mathbb{R} \to \mathbb{R} $.

$$
{\operatorname{d}\!x\over\operatorname{d}\!t} = a(t)b(x)
$$

###Modul de rezolvare a ecuatiei ${\operatorname{d}\!x\over\operatorname{d}\!t} = a(t)b(x)$
1. Se determina solutii stationare rezolvand ecuatia algebrica $b(x) = 0$. Daca $s_1, \dotsc, s_p$ solutii in $J$ ale ecuatiei $b(x) = 0$, atunci avem solutiile stationare $f_j(t) = s_j$ cu $j = \overline{1,p}$.
O functie $\varphi : I_1 \subset I \to \mathbb{R}$ este o solutie a ecuatiei ${\operatorname{d}\!x\over\operatorname{d}\!t} = f(t,x)$ daca $\varphi'(t) = f(t,\varphi(t)), \forall t \in I_1$.

2. Pentru $x \notin \{s_1, \dotsc, s_j\}$ se separa variabilele in ecuatia ${\operatorname{d}\!x\over\operatorname{d}\!t} = a(t)b(x)$ in urmatorul mod: $\frac{1}{b(x)} {\operatorname{d}\!x} = a(t) {\operatorname{d}\!t}$ si se determina $B(x)$ o primitiva pentru $\frac{1}{b(x)}$ si $A(t)$ o primitiva pentru $a(t)$. Rezulta $B(x) = A(t)) + C, C \in \mathbb{R}$ solutie implicita a ecuatiei ${\operatorname{d}\!x\over\operatorname{d}\!t} = a(t)b(x)$.
Daca se poate exprima $x$ din $B(x) = A(t)) + C$ $\implies$ $x(t) = B^{ - 1}(A(t) + C), C \in \mathbb{R}$ solutie explicita.

###Exemplu
$$
{\operatorname{d}\!x\over\operatorname{d}\!t} = t \sin^2 x, \text{ cu } t \in \mathbb{R} = I \text{ si } x \in \left(0, \frac{\pi}{2}\right) \\
\\
a(t) = t \text{ si } b(x) = \sin^2 x\\
a: \mathbb{R} \to \mathbb{R} \text{ si } b : \left(0, \frac{\pi}{2}\right) \to \mathbb{R}
$$

$$
b(x) = 0 \implies \sin^2 x = 0 \implies \sin x = 0 \implies x = k \pi, \text{ dar } x \in (0, \pi) \implies x \in \varnothing \implies \text{ nu avem solutii stationare}
$$

$$
x\in (0, \pi) - \varnothing = (0, \pi) \implies \text{ separam variabilele } \frac{1}{\sin^2 x}{\operatorname{d}\!x} = t {\operatorname{d}\!t} \\
\left.\begin{aligned}
 \int \frac{1}{\sin^2 x}{\operatorname{d}\!x} = - \cot x + C \implies B(x) = - \cot x \\
\int t {\operatorname{d}\!t} = \frac{t^2}{2} + C \implies A(t) = \frac{t^2}{2}
 \end{aligned}
 \right\}
 \qquad \implies \text{ solutia implicita: } - \cot x = \frac{t^2}{2} + C, C \in \mathbb{R} \implies \cot x = - \left(\frac{t^2}{2} + C\right) \implies \text{solutia explicita }x = \text{arccot}\left( - \frac{t^2}{2} - C\right), C \in \mathbb{R}
$$

Alte 2 exemple ce raman ca tema:
 - ${\operatorname{d}\!x\over\operatorname{d}\!t} = t \cos^2 x$ cu $t \in \mathbb{R} = I \text{ si } x \in (0, \pi) = J$. $a(t) = t \text{ si } b(x) = \cos^2 x$
 - ${\operatorname{d}\!x\over\operatorname{d}\!t} = \frac{1}{t}(x^2 - 3x + 2)$ cu $t \in (0, + \infty) \text{ si } x\in \mathbb{R}$


##Ecuatia diferentiala scalara de ordin I ( omogena)
$f: D \subset \mathbb{R} \times \mathbb{R} \to \mathbb{R}$ este functie omogena, adica: $f(\alpha t, \alpha x) = f(t,x)$, $\forall \alpha \in \mathbb{R}$ astfel incat $(\alpha t, \alpha x) \in D, \forall(t,x) \in D$ **sau** $\exists g : D_1 \subset \mathbb{R} \to \mathbb{R}$ astfel incat $f(t,x) = g(\frac{x}{t})$.

Adica ${\operatorname{d}\!x\over\operatorname{d}\!t} = g(\frac{x}{t})$.

###Modul de rezolvare a ecuatiei ${\operatorname{d}\!x\over\operatorname{d}\!t} = g(\frac{x}{t})$
1. Se schimba variabila dependenta( functia) $x$ cu o alta functie $y$ prin relatia $y = \frac{x}{t}$; $y(t) = \frac{x(t)}{t}$.
$$
(t,x) \rightarrow(t,y) \\
J(t) = \frac{x(t)}{t} \implies x(t) = t y(t) \implies {\operatorname{d}\!x\over\operatorname{d}\!y}(t) = {\operatorname{d}\over\operatorname{d}\!t}(ty(t)) = t'y(t) + t y'(t) = y(t) + t {\operatorname{d}\!y\over\operatorname{d}\!t}(t)
$$
Folosindu - ne de rezultatul de mai sus, ecuatia ${\operatorname{d}\!x\over\operatorname{d}\!t} = g(\frac{x}{t})$ devine:
$$
y + t{\operatorname{d}\!y\over\operatorname{d}\!t} = g(y) \\
\implies t {\operatorname{d}\!y\over\operatorname{d}\!t} = g(y) - y \\
\implies {\operatorname{d}\!y\over\operatorname{d}\!t} = \frac{1}{t} [g(y) - y]
$$
Ecuatia ${\operatorname{d}\!y\over\operatorname{d}\!t} = \frac{1}{t} [g(y) - y]$ este o ecuatie cu variabile separabile in care $a(t) = \frac{1}{t}$ si $b(t) = g(y) - y$.
2. Se determina solutiile ecuatiei in $y$ si apoi solutiile ecuatiei in $x$: $x = t y$.

###Exemplu ramas ca tema
Sa se defineasca multimea solutiilor ecuatiei: ${\operatorname{d}\!x\over\operatorname{d}\!t} = \frac{2xt}{x^2 + t^2}$cu $t \in (0, + \infty)$ si $x \in \mathbb{R}$.
$$
f(t,x) = \frac{2xt}{x^2 + t^2} = \frac{2\frac{x}{t}t^2}{t^2\left(\frac{x^2}{t^2} + 1\right)} = \frac{2\frac{x}{t}}{\left(\frac{x}{t}\right)^2 + 1} = g\left(\frac{x}{t}\right) \\
g(y) = \frac{2y}{y^2 + 1}
$$



##Ecuatia scalara liniara( neomogena)(functie de gradul I in $x$)
$f(t,x) = a(t)x + b(t)$ unde $a,b :I \to \mathbb{R}$, $x \in \mathbb{R}$, $f: I \times \mathbb{R} \to \mathbb{R}$
${\operatorname{d}\!x\over\operatorname{d}\!t} = a(t)x + b(t)$

###Cazul ${\operatorname{d}\!x\over\operatorname{d}\!t} = a(t)x$ omogena
**Propozitie**: Aratam ca multimea solutiilor ecuatiei ${\operatorname{d}\!x\over\operatorname{d}\!t} = a(t)x$ este $x(t) = Ce^{A(t)}$, $C \in \mathbb{R}$ unde $A(t)$ este o primitiva pentru $a(t)$.

*Demonstratie:*

Ecuatia ${\operatorname{d}\!x\over\operatorname{d}\!t} = a(t)x$ este o ecuatie cu variabile separabile cu $b(x) = x$ $\implies$ $x = 0, s_1 = 0, \varphi_1(t) = 0, \forall t \in I$ este solutie stationara.

Separam variabilele: $\frac{1}{x}{\operatorname{d}\!x } = a(t) {\operatorname{d}\!t, x} \neq 0$
$$
\left.\begin{aligned}
 \int \frac{1}{x} {\operatorname{d}\!x } = \ln |x| + C \implies B(x) = \ln |x| \\
 \int a(t) {\operatorname{d}\!x } = A(t) + C
 \end{aligned}
 \right\}
 \qquad \implies \text{ solutia implicita: } \ln |x| = A(t) + C, C \in \mathbb{R}
 $$
$|x| = e^{A(t) + C} = e^C e^{A(t)} = C_1 e^{A(t)} \implies |x| = C_1 e^{A(t)}, C_1 > 0 \implies x = \pm C_1 e^{A(t)}$.

Multimea solutiilor ecuatiei ${\operatorname{d}\!x\over\operatorname{d}\!t} = a(t)x$ este :
$$
\left.\begin{aligned}
 \varphi_1(t) = 0 \\
 x(t) = C_2 e^{A(t)}, C_2 \in \mathbb{R}
 \end{aligned}
 \right\}
 \qquad \implies x(t) = C_2 e^{A(t)}, C_2 \in \mathbb{R}
 $$

####Exemple
 - ${\operatorname{d}\!x\over\operatorname{d}\!t} = x \implies x(t) = C e^t, C \in \mathbb{R}$
 - $ {\operatorname{d}\!x\over\operatorname{d}\!t} = \frac{1}{t} \frac{x^2 + 1}{2x}$ ecuatie cu variabila separabila
 - $ {\operatorname{d}\!x\over\operatorname{d}\!t} = \frac{2t}{t^2 + 1}x$, cu $t \in \mathbb{R} \text{ si } x \in \mathbb{R}$

###Cazul ${\operatorname{d}\!x\over\operatorname{d}\!t} = a(t)x + b(t)$ neomogena

####Metoda de rezolvare prin variatia constantelor
1. Se rezolva ecuatia liniara omogena atasata $\frac{\operatorname{d}\bar{x}}{\operatorname{d}\!t} = a(t) \bar{x} \implies \bar{x}(t) = C e^{A(t)}, C \in \mathbb{R}$
2. Se aplica metoda variatiei constantelor: determinam functia $c: I \to \mathbb{R}$ astfel incat $x(t) = C(t) e^{A(t)}$ sa fie solutie a ecuatiei ${\operatorname{d}\!x\over\operatorname{d}\!t} = a(t)x + b(t)$ .
$$ {\operatorname{d}\over\operatorname{d}\!t}(C(t)e^{A(t)} = a(t) C(t) e^{A(t)} + C(t) \implies \text{ ecuatie de tip primitiva pentru } C(t): \\
C'(t) = g(t) \implies \\
C(t) = \int g(t) \operatorname{d}\!t = \frac{G(t) + k}{A(t)} \implies \\
x(t) = \left(G(t) + k\right) e^{A(t)}, k \in \mathbb{R}
$$

####Metoda de rezolvare prin folosirea unei solutii particulare

Daca $\varphi_0$ este solutie a ecuatiei ${\operatorname{d}\!x\over\operatorname{d}\!t} = a(t)x + b(t)$, adica $\frac{\operatorname{d}\!\varphi_0}{\operatorname{d}\!t}(t) = a(t) \varphi_0(t) = b(t)$ atunci solutia generala a ecuatiei se poate exprima prin relatia $x(t) = \varphi_0(t) + C e^{A(t)}$, cu $C \in \mathbb{R}$ unde $A$ est eprimitiva pentru $a$.

Demonstartie: In ecuatia ${\operatorname{d}\!x\over\operatorname{d}\!t} = a(t)x + b(t)$ facem schimbarea de variabila $y = x - \varphi_0$ adica $y(t) = x(t) - \varphi_0(t)$.
Deci, ecuatia ${\operatorname{d}\!x\over\operatorname{d}\!t} = a(t)x + b(t)$ devine: $\frac{\operatorname{d}}{\operatorname{d}\!t}(y(t) + \varphi_0(t)) = a(t)(y(t) + \varphi_0(t)) + b(t) \implies \frac{\operatorname{d}\!y}{\operatorname{d}\!t} + \frac{\operatorname{d}\!\varphi_0}{\operatorname{d}\!t}(t) = a(t)y(t) + a(t)\varphi_0(t) + b(t) \implies \frac{\operatorname{d}\!y}{\operatorname{d}\!t} a(t) y(t)$ o ecuatie liniara omogena $\implies y(t) = C e^{A(t)}$ und $A$ primitiva pentru $a$ si $C \in \mathbb{R}$. $\implies x(t) = \varphi_0(t) + C e^{A(t)}$.

##Ecuatia de forma $\frac{\operatorname{d}\!x}{\operatorname{d}\!t} = g\left(\frac{at + bx + c}{a_1 t + b_1 x + c_1}\right)$

$a,b,c,a_1,b_1,c_1$ sunt constante reale astfel incat $|a| + |a_1| > 0$ si $|b| + |b_1| > 0$.

Observatie:
1. Daca $a = a_1 = 0$ atunci ecuatia devine $\frac{\operatorname{d}\!x}{\operatorname{d}\!t} = g\left(\frac{bx + c}{b_1x + c_1}\right) \implies \frac{\operatorname{d}\!x}{\operatorname{d}\!t} = h(x)$ care este o ecuatie cu variabile separabile.
2. Daca $b = b_1 = 0$ atunci ecuatia devine $\frac{\operatorname{d}\!x}{\operatorname{d}\!t} = g\left(\frac{at + c}{a_1t + c_1}\right) \implies \frac{\operatorname{d}\!x}{\operatorname{d}\!t} = h(t)$ care este o ecuatie de tip primitiva.

Cazurile ce pot fi intalnite pentru ecuatia $\frac{\operatorname{d}\!x}{\operatorname{d}\!t} = g\left(\frac{at + bx + c}{a_1 t + b_1 x + c_1}\right)$ sunt:
1. $c = c_1 = 0 \implies \frac{\operatorname{d}\!x}{\operatorname{d}\!t} = g\left(\frac{at + bx}{a_1t + b_1x}\right) \\
\frac{\operatorname{d}\!x}{\operatorname{d}\!t} = g\left(\frac{a + b \frac{x}{b}}{a_1 + b_1 \frac{x}{t}}\right) = h(\frac{x}{t})$ care este o ecuatie omogena
2. $c \neq 0 \text{ sau } c_1 \neq 0, |c| + |c_1| > 0$
Pentru cazul $|c| + |a| > 0$ calculam $d = ab_1 - b a_1$ si avem
 - daca $d = 0$ atunci prin schimbare de variabila $y = at + bx$ daca $b \neq 0$ sau $y = a_1t + b_1x$ daca $b_1 \neq 0$ atunci ecuatoa se transofrma intro ecuatie cu variabile separabile.
 - daca $d \neq 0$ atunci prin schimbarea de variabila $(t,x) \to (s,y)$ daca prin $s = t - t_0$ si $y = x - x_0$ unde $(t_0, x_0)$ este solutia sistemului algebric liniar $at + bx + c = 0 \\
a_1t + b_1x + c_1 = 0$, transforma ecuatia intro ecuatie omogena.
Demonstratie:
i. $d = 0 \implies ab_1 - ba_1 = 0 \implies a_b1 = ba_1 \implies \frac{a}{a_1} = \frac{b}{b_1}$. Stim ca $b$ sau $b1$ sunt nenule si presupunem ca $b \neq 0$. Atunci schimbarea de variabila este $y = at + bx \iff x = \frac{y - at}{b}$. Ecuatia devine $\frac{\operatorname{d}}{\operatorname{d}\!t}\left(\frac{y - at}{b}\right) = g\left(\frac{at + b \frac{(y - at)}{b} + c}{a_1 t + b_1 \frac{y - at}{b} + c_1}\right) \implies \frac{1}{b} \left(\frac{\operatorname{d}\!y}{\operatorname{d}\!t} - a\right) = g \left(\frac{at + y - at + c}{\frac{(ba_1 - b_1a)t + b_1y + bc_1}{b}}\right) \implies \frac{\operatorname{d}\!y}{\operatorname{d}\!t} = bg\left(\frac{(y + c)b}{b_1y + bc_1}\right) + a \implies \frac{\operatorname{d}\!y}{\operatorname{d}\!t} = h(y)$ care este o ecuatie cu variabile separabile.

ii. $at + bx = - c \\
a_1 t + b_1x = - c_1 \implies$ sistemul $at + bx + c = 0 \\
a_1t + b_1x + c_1 = 0$ are solutie unica $(t_0, x_0)$.
Avem schimbarea de variabila $s = t - t_0$ si $y = x - x_0$ $\iff$ $t = s + t_0$ si $x = y + x_0$ care aplica in ecuatia $\frac{\operatorname{d}\!x}{\operatorname{d}\!t} = g\left(\frac{at + bx + c}{a_1 t + b_1 x + c_1}\right)$ se obtine $\frac{\operatorname{d}\!x}{\operatorname{d}\!t} = \frac{\operatorname{d}}{\operatorname{d}\!s}(y + x_0)\frac{\operatorname{d}\!s}{\operatorname{d}\!t} = \frac{\operatorname{d}\!y}{\operatorname{d}\!s} \frac{\operatorname{d}}{\operatorname{d}\!t}(t - t_0) = \frac{\operatorname{d}\!y}{\operatorname{d}\!s}$.
$\frac{\operatorname{d}\!x}{\operatorname{d}\!t}(t) = \frac{\operatorname{d}\!y}{\operatorname{d}\!s}(s(t))$
$\frac{\operatorname{d}\!y}{\operatorname{d}\!s} = g\left(\frac{a(s + t_0) + b(y + x_0) + c}{a_1(s + t_0) + b_1(y + x_0) + c_1}\right) \implies \frac{\operatorname{d}\!y}{\operatorname{d}\!s} = g\left(\frac{as + by}{a_1s + b_1y}\right) \implies \frac{\operatorname{d}\!y}{\operatorname{d}\!s} = g\left(\frac{a + b \frac{y}{s}}{a_1 + b_1 \frac{y}{s}}\right) \implies \frac{\operatorname{d}\!y}{\operatorname{d}\!s} = h\frac{y}{s}$ care este ecuatie omogena.


##Ecuatia Bernoulli

$\frac{\operatorname{d}\!x}{\operatorname{d}\!t} = a(t)x + b(t)x^\alpha$, cu $\alpha \in \mathbb{R} - \{ 0, 1 \}$ unde $a, b : I \subset \mathbb{R} \to \mathbb{R}$

Observatii:
1. Daca $\alpha = 0$ ecuatia devine $\frac{\operatorname{d}\!x}{\operatorname{d}\!t} = a(t) x + b(t)$ care este ecuatie liniara neomogena
2. Daca $\alpha = 1$ ecuatia devine $\frac{\operatorname{d}\!x}{\operatorname{d}\!t} = (a(t) + b(t))x$ care este ecuatie liniara omogena.
3. Daca $a, b $ sunt functii constante atunci ecuatia devine $\frac{\operatorname{d}\!x}{\operatorname{d}\!t} = ax + bx^\alpha$ care este ecuatie cu variabile separabile.

###Metoda de rezolvare cu variatia constantelor
1. Se rezolva ecuatia liniara omogena atasata $\frac{d\bar{x}}{\operatorname{d}\!t} = a(t)\bar{x} \implies \bar{x} = C e^{A(t)}$ unde $A$ este o primitiva pentru $a$.
2. Aplicam variatia constantelor, adica determinam $C : I \to \mathbb{R}$ functie astfel incat $x(t) = C(t) e^{A(t)}$ sa fie solutie a ecuatiei Bernoulli.
$$
\frac{\operatorname{d}}{\operatorname{d}\!t}(C(t)e^{A(t)}) = a(t) C(t) e^{A(t)} + b(t)\left(C(t) e^{A(t)}\right)^\alpha \implies \\
\frac{dC}{\operatorname{d}\!t} e^{A(t)} + C(t) e^{A(t)} A'(t) = \\
 = a(t) C(t) e^{A(t)} + b(t) C^\alpha e^{\alpha A(t)} \implies \frac{dC}{\operatorname{d}\!t} e^{A(t)} = b(t) C^\alpha e^{\alpha A(t)} \implies \frac{dC}{\operatorname{d}\!t} = \left(b(t) e^{(\alpha - 1)A(t)}\right)C^\alpha \implies \frac{dC}{\operatorname{d}\!t} = a_1(t)C^\alpha
$$ care este acuatie cu variabile separabile pentru functia $C$.
Observatie: Daca $\alpha > 0$ atunci ecuatia are solutie stationara $C = 0.$ Altfel, pentru $\alpha < 0$, ecuatia nu are solutii stationare.

###Metoda cu schimbare de variabile
$(t,x) \to (t,y)$ prin $y = x^{1 - \alpha} \iff x = y^{\frac{1}{1 - \alpha}}$, $y(t) = \left(x(t)\right)^{1 - \alpha}$

Prin schimbarea de variabila $y = x^{1 - \alpha}$ ecuatia Bernoulli devine o ecuatie liniara neomogena.

Demonstartie: $y = x^{1 - \alpha} \implies \frac{\operatorname{d}}{\operatorname{d}\!t}(y^{\frac{1}{1 - \alpha}}) = a(t) y^{\frac{1}{1 - \alpha}} + b(t) \left(y^{\frac{1}{1 - \alpha}}\right)^\alpha \implies \frac{1}{1 - \alpha} y^{\frac{1}{1 - \alpha} - 1} \frac{\operatorname{d}\!y}{\operatorname{d}\!t} = a(t) y^{\frac{1}{1 - \alpha}} + b(t) y^{\frac{\alpha}{1 - \alpha}} \implies \frac{1}{1 - \alpha} y^{\frac{\alpha}{1 - \alpha}} \frac{\operatorname{d}\!y}{\operatorname{d}\!t} = a(t) y^{\frac{1}{1 - \alpha}} + b(t) y^{\frac{\alpha}{1 - \alpha}} \implies \frac{1}{1 - \alpha} \frac{\operatorname{d}\!y}{\operatorname{d}\!t} = a(t) y^{\frac{1}{1 - \alpha} - \frac{\alpha}{1 - \alpha}} + b(t) \implies \frac{\operatorname{d}\!y}{\operatorname{d}\!t} = (1 - \alpha)a(t)y + (1 - \alpha)b(t)$ care este o ecuatie liniara in $y$.


##Ecuatia Riccati
$\frac{\operatorname{d}\!x}{\operatorname{d}\!t} = a(t)x^2 + b(t)x + c(t)$ unde $a,b,c : I \subset \mathbb{R} \to \mathbb{R}$

Cazuri particulare:
 - Daca $a(t) = 0 \forall t \in I$ atunci ecuatia Eiccati este ecuatie liniara neomogena
 - Daca $c(t) = 0, \forall t \in I$ atunci ecuatia devine $\frac{\operatorname{d}\!x}{\operatorname{d}\!t} = b(t)x + a(t)x^2$ care este ecuatie Bernoulli cu $\alpha = 2$
 - Daca $a,b,c$ sunt constante atunci $\frac{\operatorname{d}\!x}{\operatorname{d}\!t} = ax^2 + bx + c$ ecuatie cu variabile separabile
 - Daca $a,b,c$ sunt proportionale adica $\exists k_1, k_2 \neq 0$ astfel incat $b(t) = k_1a(t), c(t) = k_2a(t), \forall t \in I$ atunci $\frac{\operatorname{d}\!x}{\operatorname{d}\!t} = a(t)(x^2 + k_1x + k_2)$ ecuatie cu variabile separabile

Daca $\varphi_0 : I \to \mathbb{R}$ este solutie a ecuatiei, adica $\frac{\operatorname{d}\!\varphi_0}{\operatorname{d}\!t}(t) = a(t) \varphi_0^2(t) + b(t)\varphi_0(t) + c(t), \forall t \in I$ atunci prin schimbarea de variabila $ y = x - \varphi_0$ ecuatia devine o ecuatie Bernoulli cu $\alpha = 2$.
Demonstratie:
$x = x - \varphi_0 \iff x = y + \varphi_0$ $x(t) = y(t) + \varphi_0(t)$.
Ecuatia devine $\frac{\operatorname{d}}{\operatorname{d}\!t}(y + \varphi_0(t)) = a(t)(y + \varphi_0(t))^2 + b(t)(y + \varphi_0(t)) + c(t) \implies \frac{\operatorname{d}\!y}{\operatorname{d}\!t} + \frac{\operatorname{d}\!\varphi_0}{\operatorname{d}\!t}(t) = a(t) y^2 + a(t) 2y \varphi_0(t) + a(t)\varphi_0^2(t) + b(t)y + b(t)\varphi_0(t) + c(t) \implies \frac{\operatorname{d}\!y}{\operatorname{d}\!t} = [ 2a(t)\varphi_0(t) - b(t)]y + a(t)y^2 \implies \frac{\operatorname{d}\!y}{\operatorname{d}\!t} = a_1(t)y + b_1(t)y^2$ ecuatie Bernoulli cu $\alpha = 2$.

 - - - -

#Ecuatii implicite de ordinul intai integrabile prin cuadraturi

$F(t,x,x') = 0$

1. Daca din $F(t,x,x') = 0$ pot exprima pe $x' = f(t,x)$ ecuatia este explicita si cautam intre tipurile de ecuatii deja studiate.
2. Daca nu se poate explicita in functie de $x'$ atunci se incearca o explicitare in rasport cu $x$ sau $t$. Adica $x = g(t, x')$ sau $t = h(x, x')$.

##Cazuri particulare pentru ecuatii in forma $x = g(t, x')$

###Ecuatia Lagrange
$x = t\varphi(x') + \Psi(x')$ unde $\varphi, \Psi : I \subset \mathbb{R} \to \mathbb{R}$ functii derivabile.

Pentru integrare derivam $x = t\varphi(x') + \Psi(x')$ in raport cu $t$:
$x' = 1 \varphi(x') + t \varphi'(x')(x') + \Psi'(x')(x')'$. Notam $x' = p \implies (x')' = p' = \frac{\operatorname{d}\!p}{\operatorname{d}\!t}$. Adica $p = \varphi(p) + t \varphi'(p) \frac{\operatorname{d}\!p}{\operatorname{d}\!t} + \Psi(p) \frac{\operatorname{d}\!p}{\operatorname{d}\!t} \implies p - \varphi(p) = (t\varphi'(p) + \Psi'(p))\frac{\operatorname{d}\!p}{\operatorname{d}\!t} \implies \frac{\operatorname{d}\!p}{\operatorname{d}\!t} = \frac{p - \varphi(p)}{t\varphi'(p) + \Psi'(p)} \implies \frac{\operatorname{d}\!t}{\operatorname{d}\!p} = \frac{t\varphi'(p) + \Psi'(p)}{p - \varphi(p)} \implies \frac{\operatorname{d}\!t}{\operatorname{d}\!p} = \left(\frac{\varphi'(p)}{p - \varphi(p)}\right)t + \left(\frac{\Psi'(p)}{p - \varphi(p)}\right)$ ecuatie liniara neomogena $\implies$ $t = t(p)$ solutie paramentrica a ecuatiei Lagrange $t = t(p) \\
x = t\varphi(p) + \Psi(p)$. Daca in solutia parametrica se elimina $p$ atunci se obtine solutia explicita.

**Exemplu**: Fie ecuatia Lagrange $x = t(1 + x') + (x')^2$. Se cere multimea solutiilro ecuatiei.

Identificam $\varphi(x') = 1 + x'$ si $\Psi(x') = (x')^2$ derivabile. $\varphi(u) = 1 + i$ si $\Psi(u) = u^2$.
Se deriveaza ecuatia $$x' = (t(1 + x'))' + ((x')^2)' \\x' = 1(1 + x') + t(0 + (x')') + s(x')^{2 - 1}(x')' \\
 = 1 + x' + t(x')' + 2x'(x')'.$$.

Notam $x' = p \implies p = 1 + p + tp' + 2pp' \implies - 1 = '(t + 2p) \implies p' = \frac{ - 1}{t + 2p} \implies \frac{\operatorname{d}\!p}{\operatorname{d}\!t} = \frac{ - 1}{t - 2p} \implies \frac{\operatorname{d}\!t}{\operatorname{d}\!p} = \frac{t + 2p}{ - 1} \implies \frac{\operatorname{d}\!t}{\operatorname{d}\!p} = - t - 2p$.
Ecuatia liniara $\frac{\operatorname{d}\!t}{\operatorname{d}\!p} = a(p) t + b(p)$ cu $a(p) = - 1$si $b(p) = - 2p$.
Ecuati aliniara omogena atasata $$\frac{\operatorname{d}\!\bar{t}}{\operatorname{d}\!p} = - \bar{t} \implies \bar{t}(p) = C e^{A(p)} \\
\int ( - 1)\operatorname{d}\!p = - p + C \implies A(p) = - p \\
\implies \bar{t}(p) = C e^{ - p}$$.

variem constanta: Determinam $C: t\subset \mathbb{R} \to \mathbb{R}$ astfel incat $t(p) = C(p)e^{ - p}$ sa fie solutia ecuatiei $\frac{\operatorname{d}\!t}{\operatorname{d}\!p} = - t - 2p$.
$$
\frac{\operatorname{d}}{\operatorname{d}\!p}(C(p)e^{ - p}) = - C(p) e^{ - p} \\
C'(p)e^{ - p} + C(p) e^{ - p}(_1) = - C(p) e^{ - p} - 2p\\
C'(p) = - 2pe^p \implies C(p) = - 2 \int pe^p\operatorname{d}\!p = - 2pe^p + 2e^p + C_1 \\
\implies t(p) = ( - 2pe^p + 2e^p + C_1)e^{ - p} = - 2p + 2 + C_1e^{ - p}, C_1 \in \mathbb{R}
$$
Solutia parametrica este $$t = - 2p + 2 + C_1 e^{ - p} \\
x = t(1 + p) + p^2$$, $p$ parametru, $C_1 \in \mathbb{R}$.

Observatie: In ecuatia Lagrange trebuie sa abem $\varphi(x') \neq x'$.

###Ecuatia Clairant

$x = tx' + \Psi(x')$

Pentru determinarea solutiei parametrice a ecuatiei derivam ecuatia in raport cu $t$:

$$
x' = (tx')' + (\Psi(x'))' \\
x' = x' + t(x')' + \Psi'(x')(x')'
$$

Notam $x' = p \implies 0 = tp' + \Psi'(p)p' \implies p'(t + \Psi'(p)) = 0 \implies p' = 0 \text{ sau } \Psi'(p) + t = 0$

####Cazul $p' = 0$
Daca $p' = 0 \implies \frac{\operatorname{d}\!p}{\operatorname{d}\!t} = 0 \implies p = C, C \in \mathbb{R} \implies x' = C \implies \frac{\operatorname{d}\!x}{\operatorname{d}\!t} = C \implies x = Ct + C_1 \text{, cu } C, C_1 \in \mathbb{R}$.

Constantele $C, C_1$ nu sunt independente; dependenta lor este data din verificarea ecuatiei initiale:
$Ct + C_1 = tC + \Psi(C) \implies C_1 = \Psi(C) \implies x(t) = Ct + \Psi(C)$, cu $C \in \mathbb{R}$

####Cazul $\Psi'(p) + t = 0$
$\Psi'(p) + t = 0 \implies t = - \Psi'(p) \implies$ solutia parametrica $$t = - \Psi'(p) \\
x = tp + \Psi(p)$$ cu $p$ parametru.

###Ecuatia implicita $x = g(t,x')$

$\implies \frac{\operatorname{d}\!x}{\operatorname{d}\!t} = \frac{\operatorname{d}}{\operatorname{d}\!t}(g(r,x')) \implies \frac{\operatorname{d}\!x}{\operatorname{d}\!t} = \frac{\partial g}{\partial t}(t,x') + \frac{\partial g}{\partial x'}(t,x')(x')'$

Notam $x' = p = \frac{\operatorname{d}\!x}{\operatorname{d}\!t}$ $\implies$ $p = \frac{\partial g}{\partial t}(t,p) + \frac{\partial g}{\partial p}(t,p)p' \implies p' = \frac{p - \frac{\partial g}{\partial t}(t,p)}{\frac{\partial g}{\partial p}(t,p)} = \frac{\operatorname{d}\!p}{\operatorname{d}\!t} \implies p = p(t) \text{ sau } t = t(p) \implies $ solutia parametrica $$t = t(p) \\
x = g(t,p)$$, $p$ parametru.

###Ecuatia implicita $t = h(x,x')$

Se deriveaza in rasport cu $x$: $\frac{\operatorname{d}\!t}{\operatorname{d}\!x} = \frac{\operatorname{d}}{\operatorname{d}\!x}(h(x,x'))$.

$\frac{\operatorname{d}\!t}{\operatorname{d}\!x} = \frac{\partial h}{\partial x}(x, x') + \frac{\partial h}{\partial x'}(x,x')\frac{\operatorname{d}\!x'}{\operatorname{d}\!x}$. Notam $x' = p$ si folosim ca $\frac{\operatorname{d}\!t}{\operatorname{d}\!x} = \frac{1}{\frac{\operatorname{d}\!x}{\operatorname{d}\!t}} = \frac{1}{x'} = \frac{1}{p}$

$$\implies \frac{1}{p} = \frac{\partial h}{\partial x}(x,p) + \frac{\partial h}{\partial p}(x,p)\frac{\operatorname{d}\!p}{\operatorname{d}\!x} \\
\implies \frac{\operatorname{d}\!p}{\operatorname{d}\!x} = \frac{\frac{1}{p} - \frac{\partial h}{\partial x}(x,p)}{\frac{\partial h}{\partial p}(x,p)}$$ $\implies$ Se determina $p = p(x)$ sau $x = x(p)$ $\implies$ se poate scrie solutia parametrica $$x = x(p) \\
t = h(x,p)$$

#Problema Cauchy pentru ecuatii diferentiale scalare de ordinul intai

**Definitie**: Spunem ca se da o problema Cauchy pentru ecuatia $x' = f(t,x)$ cu $f: \Omega \subset \mathbb{R}^2 \to \mathbb{R}$ daca se cere determinarea unei solutii care sa verifice conditia $x(t_0) = x_0$, unde $(t_0,x_0) \in \Omega$.

Problema Cauchy se noteaza prin tripletul $(f,t_0,x_0)$ sau, explicit, prin $x' = f(t,x), \text{ cu } x(t_0) = x_0$.

O functie $\varphi : I \subset \mathbb{R} \to \mathbb{R}$ este solutie a problemei Cauchy $(f,t_0,x_0)$ daca:
$$\varphi'(t) = f(t, \varphi(t)), \forall t \in I \\
\varphi(t_0) = x_0$$

Interpretare geometrica:
![Interpretarea geometrica](https://vladionescu.me/reprgrafica1.jpg "Interpretarea geometrica")

##Teorema de existenta si unicitate a solutiei problemei Cauchy

Ipoteze: Pentru $f: \Omega \subset \mathbb{R}^2 \to \mathbb{R}$:
1. $\exists a,b > 0 $ astfel incat $D = [t_0 - a, t_0 + a]\times[x_0 - b, x_0 + b] \subset \Omega$ aka exista un dreptungi in jururl lui $x_0, t_0$ care este in $\Omega$
2. $f$ este cotinua in ambele variabile ( asta inseamna ca $\exists M \geq 0$ astfel incat $M = \sup \left|f(t,x)\right|, (t,x) \in D$
3. $f$ este Lipschitz in a doua variabila adica $\exists L \geq 0$ astfel incat $\left|f(t,x_1) - f(t,x_2)\right| \leq L\left|x_1 - x_2\right|, \forall (t,x_1), (t,x_2) \in D$ **sau** $f$ este derivabila in raport cu $x$ si $\frac{\partial f}{\partial x}$ este continua pe $D$.

**Tema:** Aratati ca daca $\frac{\partial f}{\partial x}$ este continua, atunci $f$ este Lipschitz in raport cu a doua variabila.

In ipotezele de mai sus, rezulta ca:
$\forall \alpha \leq \min\left\{{a, \frac{b}{M}}\right\}, \exists! \varphi: [t_0 - \alpha, t_0 + \alpha]\to[x_0 - b, x_0 + b]$ solutie a problemei Cauchy, adica $\frac{d \varphi}{\operatorname{d}\!t}(t)=f(t, \varphi(t))$, $\forall t \in [t_0 - \alpha, t_0 + \alpha]$ si $\varphi(t_0)= x_0$.

*Demonstratie*:

Se defieneste sirul de functii $(\varphi_n)_{n \geq 0}$ definit prin $$\varphi_0(t) = x_0, \forall t \in [t_0 - \alpha, t_0 + \alpha] \\
\varphi_{n+1}(t) = x_0 + \int_{t_0}^t f(s,\varphi_n(s))\operatorname{d}\!s$$

Etapele demonstratiei:
1. Aratam ca graficul $\Gamma_{\varphi_n} = \left\{(t,\varphi_n(t)) | t \in [t_0 - \alpha, t_0 + \alpha]\right\} \subseteq [x_0 - b, x_0 + b]$
2. Aratam ca $(\varphi_n)_{n \geq 0}$ este sir Cauchy, deci converge uniform la o functie $\varphi : [t_0 - \alpha, t_0 + \alpha] \to [x_0 - b, x_0 + b]$, $\varphi(t)= \lim_{n \to \infty} \varphi_n(t)$, $\forall t \in [t_0 - \alpha, t_0 + \alpha]$
3. Aratam ca $\varphi$ este solutia problemei Cauchy
4. Aratam ca solutia gasita pentru problema Cauchy este unica(in sensul ca daca $\Psi : [t_0 - \alpha, t_0 + \alpha] \to \mathbb{R}$ solutie pentru ecuatia Cauchy, atunci $\Psi \equiv \varphi$)

> **Demonstratiile de mai jos probabil au greseli si/sau sunt incomplete.**

1.
$$
\text{Fie } n \geq 0 \text{. Avem }\\
\Gamma_{\varphi_n} \subset [x_0 -b, x_0 +b] \iff \left|\varphi_n(t) -x_0\right| \leq b , \forall t \in [t_0 - \alpha, t_0 + \alpha] \\
\text{Pentru } n = 0 \text{: } \varphi_0(t) = x_0 \implies \left|\varphi_0(t)-x_0\right| = 0 \leq b, \forall t \in [t_0 - \alpha, t_0 + \alpha]  \\
\text{Pentru } n \geq 0 \text{: } \varphi_n(t) = x_0 + \int_{t_0}^t f\left(s, \varphi_{n-1}(s)\right) \operatorname{d}\!s \implies \varphi_n(t) - x_0 = \int_{t_0}^{t} f\left(s, \varphi_{n-1}(s)\right) \operatorname{d}\!s \implies \left|\varphi_n(t)-x_0\right| = \left|\int_{t_0}^t f(s, \varphi_{n-1}(s))\operatorname{d}\!s\right| \leq \int_{t_0}^t \left|f(s, \varphi_{n-1}(s))\right| \operatorname{d}\!s \implies \int_{t_0}^t M \operatorname{d}\!s = Ms_{t_0}^t = M(t-t_0) \leq M\alpha \leq M \frac{b}{M} = b \implies \Gamma_{\varphi_n} \subset [x_0-b, x_0 +b], \forall n \geq 0
$$
Tema: Demonstrati ca $|\varphi_n(t)-x_0| \leq b$, $\forall t < t_0$

2.
$$
\text{Aratam ca } \forall n \geq 0 \text{ are loc inegalitatea: } \\
\left|\varphi_{n+1}(t)-\varphi_n(t)\right| \leq \frac{M L^n(t-t_0)^{n+1}}{(n+1)!}, \forall t \geq t_0 \\
\text{Demonstratie prin inductie dupa } n \text{: }\
n = 0 \text{: } |\varphi_1(t)-\varphi_0(t)| = |x_0 + \int_{t_0}^t f(s, \varphi_0(s))\operatorname{d}\!s - x_0| = |\int_{t_0}^t f(s, \varphi_0(s))\operatorname{d}\!s| \leq \int_{t_0}^t |f(s, \varphi_0(s))|\operatorname{d}\!s \leq \int_{t_0}^t M \operatorname{d}\!s = M(t-t_0) = \frac{M L^0(t-t_0)^{n+2}}{(0 + 1)!} \\
\text{Avem: }
\left|\varphi_{n+2}(t) - \varphi_{n+1}\right| = \left|x_0 + \int_{t_0}^t f(s, \varphi_{n+1}(s))\operatorname{d}\!s - x_0 - \int_{t_0}^t f(s,\varphi_n(s))\operatorname{d}\!s\right| = \left|\int_{t_0}^t(f(s, \varphi_{n+1}(s)) - f(s, \varphi_n(s))) \operatorname{d}\!s\right| \leq \int_{t_0}^t \left|f(s, \varphi_{n+1}(s))-f(s, \varphi_n(s))\right|\operatorname{d}\!s \leq \int_{t_0}^t L\left|\varphi_{n-1}(s)-\varphi_n(s)\right|\operatorname{d}\!s \leq \int_{t_0}^t L \frac{ML^n(s-t_0)^{n+1}}{(n+1)!}\operatorname{d}\!s = \frac{ML^{n+1}}{(n+1)!} \int_{t_0}^{t} (s-t_0)^{n+1}\operatorname{d}\!s =  \frac{ML^{n+1}}{(n+1)!} \frac{(t-t_0)^{n+2}}{(n+2)} = \frac{ML^{n+1}(t-t_0)^{n+2}}{(n+2)!} \implies \text{ inegalitatea este adevarata. }\\
\text{Aratam ca } \lim_{n \to \infty}\left|\varphi_{n+p}(t) - \varphi_n(t)\right| = 0 \\
\text{Calculam } \left|\varphi_{n+p}(t) - \varphi_n(t)\right| = \left|\varphi_{n+p}(t) - \varphi_{n+p-1}(t)+ \varphi_{n+p-1}(t) - \varphi_{n+p-2}(t) + \dotsc + \varphi_{n+2}(t) - \varphi_{n+1}(t) + \varphi_{n+1}(t)-\varphi_n(t)\right| \leq \text{ suma modulelor }\leq \frac{ML^{n+p-1}(t-t_0)^{n+p}}{(n+p)!} + \frac{ML^{n+p-2}(t-t_0)^{n+p-1}}{(n+p-1)!} + \dotsc + \frac{ML^{n+1}(t-t_0)^{n+2}}{(n+2)!} + \frac{ML^{n}(t-t_0)^{n+1}}{(n+1)!} = \sum_{k=1}^p \frac{ML^{n+k-1}(t-t_0)^{n+k}}{(n+k)!} = \sum_{r=0}^{p-1} \frac{ML^{n+p-r-1}(t-t_0)^{n+p-r}}{(n+p-r)!} = M L^n(t-t_0)^n \sum_{r=0}^{p-1} \frac{L^{p-r-1}(t-t_0)^{p-r}}{(n+p-r)!} \leq \frac{ML^n(t-t_0)^n}{(n+1)!} \sum_{r=0}^{p-1} \frac{L^{p-r-1}(t-t_0)^{p-r}}{(p-r-1)!} \\\implies \left|\varphi_{n+p}(t)-\varphi_n(t)\right| \leq a_n C_p \\
\lim_{n \to \infty} \frac{a_{n+1}}{a_n} = \lim_{n \to \infty} \frac{ML^{n+1}(t-t_0^{n-1})}{(n+2)!} \frac{(n+1)!}{M L^n(t-t_0)^n} = \lim_{n \to \infty} \frac{L(t-t_0)}{n+2} = 0\\  \implies lim_{n \to \infty} a_n = 0 \implies lim_{n \to \infty} \left|\varphi_{n+p}(t) - \varphi_n(t)\right| = 0 \implies (\varphi_n)_{n \geq 0} \text{ este sir Cauchy} \implies \\
\exists \varphi \text{ astfel incat } \varphi(t) = lim_{n \to \infty} \varphi_n(t) \text{, congruenta fiind uniforma } \implies \varphi \text{ este continua si derivabila la fel si functiile din sirul } (\varphi_n)_{n \geq 0}
$$

3.
$$
\text{Aratam ca } \varphi \text{ este solutia problemei Cauchy.} \\
\text{Demonstratie lipsa.} \\
\text{Pentru a contribui vedeti inceputul sau sfarsitul documentului.}
$$

4. $$
\text{Demonstratie lipsa.} \\
\text{Pentru a contribui vedeti inceputul sau sfarsitul documentului.}
$$

***Tema***: Fie problema Cauchy: $$x' = x \\ x(0) = 1$$
1. Aratati ca solutia problemei este $x(t) = e^t$
2 Calculati sirul aproximatilor succesive si aratati ca $\varphi_n(t) = \sum_{k = 0}^n \frac{t^k}{k!}$

Interpretare geometrica:
![Interpretarea geometrica](https://vladionescu.me/reprgrafica2.jpg "Interpretarea geometrica")

**Lema**( reprezentarea sub forma integrala a solutiei problemei Cauchy).

Fie $\varphi : I \subset \mathbb{R} \to \mathbb{R}$. Urmatoarele afirmatii sunt echivalente:
1. $\varphi$ este solutie a problemei Cauchy $$x' = f(t,x) \\
x(t_0) = x_0$$
2. $\forall t \in I \varphi(t) = x_0 + \int_{t_0}^{t} f(s,\varphi(s)) \operatorname{d}\!s$ ecuatie integrala

*Demonstratie lema*:

 - 1 $\implies$ 2
Ipoteza: $\varphi$ solutie $\implies$ $$\varphi'(t) = f(t, \varphi(t)) \\
\varphi(t_0) = x_0$$
Avem $\varphi(t) - \varphi(t_0) = \int_{t_0}^{t} \varphi'(s) \operatorname{d}\!s \implies \varphi(t) = x_0 + \int_{t_0}^t f(s, \varphi(s))\operatorname{d}\!s$.

 - 2 $\implies$ 1
Ipoteza $\varphi(t) = x_0 + \int_{t_0}^tf(s, \varphi(s))\operatorname{d}\!s \implies \varphi(t_0) = x_0$
Calculam $\varphi'(t)$:
$$\varphi'(t) = (x_0 + \int_{t_0}^{t}f(s, \varphi(s)\operatorname{d}\!s)' = \\
G \text{ primitiva pentru }g \text{ si } G'(s) = g(s) \\
 = (G(t) - G(t_0))' = G'(t) - 0 = g(t) = f(t,\varphi(t)) \implies \varphi'(t) = f(t, \varphi(t))$$

**Tema**: Aratati ca daca $g: I \subset \mathbb{R} \to \mathbb{R}$ continua si $u,v : I \to \mathbb{R}$ derivabile, atunci $\frac{\operatorname{d}}{\operatorname{d}\!t}\left(\int_{u(t)}^{v(t)}g(s)\operatorname{d}\!s\right) = g(v(t))v'(t) - g(u(t))u'(t)$.

> **NU SE GARANETAZA CORECTITUDINEA SAU COMPLETITUDINEA INFORMATIILOR DE AICI**

> Ai descoperit o greseala? Ai facut o tema si vrei sa o dai si colegilor? Stii cum sa faci ceva sa arate mai bine? Contribuie [direct pe GitHub](https://github.com/Vlaaaaaaad/FMI-public-materials/tree/master/EcuatiiDiferentialeSiCuDerivatePartiale) sau trimite un mail la <mailto:stiu-chestii@vladionescu.me>

> Written with [StackEdit](https://stackedit.io/).
