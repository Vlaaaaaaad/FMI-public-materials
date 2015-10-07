Ecuatii Diferentiale si cu Derivate Partiale
==================================

[TOC]

#Bibliografia
- Ioan Rosca, "Ecuatii diferentiale si cu derivate partiale", Editura Fundatiei 'Romania de Maine' 2000
- Stefan Minica, "Ecuatii diferentiale", Editura Universitatii din Bucuresti, volumele 1 si 2
- Aurelian Cernea, "Ecuatii diferentiale", Editura Universitatii din Bucuresti
- Ioan Rosca, "Ecuatii cu derivate partiale", Editura Universitatii din Bucuresti

#Ecuatii diferentiale

######  {#definitie}
O ecuatie diferentiala de ordin $k \in \mathbb{N}^*$ cu functia necunoscuta $x : I \subset \mathbb{R} \to \mathbb{R}^n$, cu $n \in \mathbb{N}^*$, $x = (x_1, \dotsc, x_n)$ se defineste prin $F(t, x, x^{(1)}, \dotsc, x^{(k)}) = 0$ unde $F : G \subset \mathbb{R} \times \mathbb{R}^n \dotsc \times \mathbb{R}^n \to \mathbb{R}$ si  $x^{(j)}= (x_1^{(j)}, \dotsc, x_n^{(j)})$, cu $j= \overline{1,k}$.

Se poate da, daca este posibil, o forma explicita( cvasiliniara): $x^{(k)} = f(t, x, x^{(1)}, \dotsc, x^{(k-1)})$ sau, pe componente: $$x_1^{(k)} = f_1(t, x, x^{(1)}, \dotsc, x^{(k-1)}) \\ \dotsc \\ \dotsc \\ \dotsc \\ x_n^{(k)} = f_n(t, x, x^{(1)}, \dotsc, x^{(k-1)})$$

De exemplu:
$$
k = 1, n = 2 \\
x=(x_1, x_2) \\
f=(f_1, f_2) : G \subset \mathbb{R} \times \mathbb{R}^n \dotsc \times \mathbb{n} \to \mathbb{R} \\
x_1^{'} = f_1(t, x)\\
x_2^{'} = f_2(t, x)
$$
unde
$$
f_1(t, x) = \frac{1}{2} x_1 + 2x_2 + e^t \\
f_2(t, x) = x_1 -x_2 +t \\
\implies x_1 = \frac{1}{2} x_1 + 2x_2 + e^t \\
x_2 = x_1 -x_2 +t
$$

Cazul $k=1$ si $n = 1$ $\implies$ ecuatii diferentiale in $\mathbb{R}$ de ordin 1( scalare).

> Notatie: $x'=\dot x = {\operatorname{d}\over\operatorname{d}\!x}$

Din [definitie](#definitie) $F(t, x, x^{(1)}, \dotsc, x^{(k)}) = 0$, $\implies$ $F(t, x, x') = 0$( forma implicita) unde $F : G \subset \mathbb{R} \times  \mathbb{R}  \times  \mathbb{R}  \to  \mathbb{R}$

Din [definitie](#definitie) $x^{(k)} = f(t, x, x^{(1)}, \dotsc, x^{(k-1)})$ $\implies$ $x'=f(t,x)$( forma explicita) unde $f : D \subset \underbrace{\mathbb{R}}_\text{t} \times \underbrace{\mathbb{R'}}_\text{x}  \to \mathbb{R}$.

#Cazuri particulare de ecuatii diferentiale scalare de ordin 1

##Ecuatii diferentiale de tip primitiva
$f(t,x)$ depinde doar de t.

###Exemplu
$$
f: I \to \mathbb{R} \\
f(t) = \frac{2 \cos t}{\sin t + \cos t}, \text{ cu }t \in I = (0, \frac{\pi}{2})
$$
$$
{\operatorname{d}\!x\over\operatorname{d}\!t} = f(t) \implies x(t) = \int f(t) {\operatorname{d}\!t} = \dotsc
$$

##Ecuatii cu variabile separabile
$f(t,x) = a(t)b(x)$ cu $a : I \subset \mathbb{R} \to  \mathbb{R}$ si $b : J \subset  \mathbb{R}  \to  \mathbb{R} $.

$$
{\operatorname{d}\!x\over\operatorname{d}\!t}=a(t)b(x)
$$

###Modul de rezolvare a ecuatiei ${\operatorname{d}\!x\over\operatorname{d}\!t}=a(t)b(x)$
1. Se determina solutii stationare rezolvand ecuatia algebrica $b(x) = 0$. Daca $s_1, \dotsc, s_p$ solutii in $J$ ale ecuatiei $b(x) = 0$, atunci avem solutiile stationare $f_j(t) = s_j$ cu $j = \overline{1,p}$.
O functie $\varphi : I_1 \subset I \to \mathbb{R}$ este o solutie a ecuatiei ${\operatorname{d}\!x\over\operatorname{d}\!t}=f(t,x)$ daca $\varphi'(t)=f(t,\varphi(t)), \forall t \in I_1$.

2. Pentru $x \notin \{s_1, \dotsc, s_j\}$ se separa variabilele in ecuatia ${\operatorname{d}\!x\over\operatorname{d}\!t}=a(t)b(x)$ in urmatorul mod: $\frac{1}{b(x)} {\operatorname{d}\!x} = a(t) {\operatorname{d}\!t}$ si se determina $B(x)$ o primitiva pentru $\frac{1}{b(x)}$ si $A(t)$ o primitiva pentru $a(t)$. Rezulta $B(x) = A(t)) + C, C \in \mathbb{R}$ solutie implicita a ecuatiei  ${\operatorname{d}\!x\over\operatorname{d}\!t}=a(t)b(x)$.
Daca se poate exprima $x$ din $B(x) = A(t)) + C$ $\implies$ $x(t) = B^{-1}(A(t) + C), C \in \mathbb{R}$ solutie explicita.

###Exemplu
$$
{\operatorname{d}\!x\over\operatorname{d}\!t}=t \sin^2 x, \text{ cu } t \in \mathbb{R} = I \text{ si } x \in (0, \frac{\pi}{2}) \\
\\
a(t) = t \text{ si } b(x) = \sin^2 x\\
a: \mathbb{R} \to \mathbb{R} \text{ si } b : (0, \frac{\pi}{2}) \to \mathbb{R}
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
 \qquad \implies \text{ solutia implicita: } -\cot x = \frac{t^2}{2} + C, C \in \mathbb{R} \implies \cot x = -(\frac{t^2}{2} + C) \implies \text{solutia explicita }x = \text{arccot}(-\frac{t^2}{2}- C), C \in \mathbb{R}
$$

Alte 2 exemple ce raman ca tema:
- ${\operatorname{d}\!x\over\operatorname{d}\!t} = t \cos^2 x$ cu $t \in \mathbb{R} = I \text{ si } x \in (0, \pi) = J$. $a(t) = t \text{ si } b(x)= \cos^2 x$
- ${\operatorname{d}\!x\over\operatorname{d}\!t} = \frac{1}{t}(x^2 -3x + 2)$ cu $t \in (0, +\infty) \text{ si } x\in \mathbb{R}$


##Ecuatia diferentiala scalara de ordin I ( omogena)
$f: D \subset \mathbb{R} \times \mathbb{R} \to \mathbb{R}$ este functie omogena, adica: $f(\alpha t, \alpha x) = f(t,x)$, $\forall \alpha \in \mathbb{R}$ astfel incat $(\alpha t, \alpha x) \in D, \forall(t,x) \in D$ **sau** $\exists g : D_1 \subset \mathbb{R} \to \mathbb{R}$ astfel incat $f(t,x) = g(\frac{x}{t})$.

Adica ${\operatorname{d}\!x\over\operatorname{d}\!t} = g(\frac{x}{t})$.

###Modul de rezolvare a ecuatiei ${\operatorname{d}\!x\over\operatorname{d}\!t} = g(\frac{x}{t})$
1. Se schimba variabila dependenta( functia) $x$ cu o alta functie $y$ prin relatia $y =\frac{x}{t}$; $y(t) = \frac{x(t)}{t}$.
$$
(t,x) \rightarrow(t,y) \\
J(t) = \frac{x(t)}{t} \implies x(t) =t y(t) \implies {\operatorname{d}\!x\over\operatorname{d}\!y}(t) = {\operatorname{d}\over\operatorname{d}\!t}(ty(t)) =t'y(t) + t y'(t) = y(t) + t {\operatorname{d}\!y\over\operatorname{d}\!t}(t)
$$
Folosindu-ne de rezultatul de mai sus, ecuatia ${\operatorname{d}\!x\over\operatorname{d}\!t} = g(\frac{x}{t})$ devine:
$$
y + t{\operatorname{d}\!y\over\operatorname{d}\!t} = g(y) \\ \implies t {\operatorname{d}\!y\over\operatorname{d}\!t} = g(y) - y \\ \implies {\operatorname{d}\!y\over\operatorname{d}\!t} = \frac{1}{t} [g(y) -y]
$$
Ecuatia ${\operatorname{d}\!y\over\operatorname{d}\!t} = \frac{1}{t} [g(y) -y]$ este o ecuatie cu variabile separabile in care $a(t) = \frac{1}{t}$ si $b(t) = g(y) -y$.
2. Se determina solutiile ecuatiei in $y$ si apoi solutiile ecuatiei in $x$: $x = t y$.

###Exemplu ramas ca tema
Sa se defineasca multimea solutiilor ecuatiei: ${\operatorname{d}\!x\over\operatorname{d}\!t} = \frac{2xt}{x^2+t^2}$cu $t \in (0, +\infty)$ si $x \in \mathbb{R}$.
$$
f(t,x) = \frac{2xt}{x^2+t^2}=\frac{2\frac{x}{t}t^2}{t^2(\frac{x^2}{t^2}+1)} = \frac{2\frac{x}{t}}{(\frac{x}{t})^2+1} = g(\frac{x}{t}) \\
g(y)= \frac{2y}{y^2+1}
$$



##Ecuatia scalara liniara( neomogena)(functie de gradul I in $x$)
$f(t,x) = a(t)x + b(t)$ unde $a,b :I \to \mathbb{R}$, $x \in \mathbb{R}$, $f: I \times \mathbb{R} \to \mathbb{R}$
${\operatorname{d}\!x\over\operatorname{d}\!t}=a(t)x + b(t)$

###Cazul ${\operatorname{d}\!x\over\operatorname{d}\!t}=a(t)x$ omogena
**Propozitie**: Aratam ca multimea solutiilor ecuatiei ${\operatorname{d}\!x\over\operatorname{d}\!t}=a(t)x$ este $x(t) = Ce^{A(t)}$, $C \in \mathbb{R}$ unde $A(t)$ este o primitiva pentru $a(t)$.

*Demonstratie:*

Ecuatia ${\operatorname{d}\!x\over\operatorname{d}\!t}=a(t)x$ este o ecuatie cu variabile separabile cu $b(x) = x$ $\implies$ $x = 0, s_1 = 0, \varphi_1(t)=0, \forall t \in I$ este solutie stationara.

Separam variabilele: $\frac{1}{x}{\operatorname{d}\!x }= a(t) {\operatorname{d}\!t, x} \neq 0$
$$
\left.\begin{aligned}
     \int \frac{1}{x} {\operatorname{d}\!x }= \ln |x| + C \implies B(x) = \ln |x| \\
     \int a(t) {\operatorname{d}\!x }= A(t) + C
       \end{aligned}
 \right\}
 \qquad \implies \text{ solutia implicita: } \ln |x| = A(t) + C, C \in \mathbb{R}
 $$
$|x| = e^{A(t) + C} = e^C e^{A(t)} = C_1 e^{A(t)} \implies |x| =  C_1 e^{A(t)},  C_1 > 0 \implies x = \pm C_1 e^{A(t)}$.

Multimea solutiilor ecuatiei ${\operatorname{d}\!x\over\operatorname{d}\!t}=a(t)x$ este :
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
- $ {\operatorname{d}\!x\over\operatorname{d}\!t} = \frac{1}{t} \frac{x^2+1}{2x}$ ecuatie cu variabila separabila
- $ {\operatorname{d}\!x\over\operatorname{d}\!t} = \frac{2t}{t^2+1}x$, cu $t \in \mathbb{R} \text{ si } x \in \mathbb{R}$

###Cazul ${\operatorname{d}\!x\over\operatorname{d}\!t}=a(t)x + b(t)$ neomogena

####Metoda de rezolvare
1. Se rezolva ecuatia liniara omogena atasata $\frac{\operatorname{d}\bar{x}}{\operatorname{d}\!t} = a(t) \bar{x} \implies  \bar{x}(t) = C e^{A(t)}, C \in \mathbb{R}$
2. Se aplica metoda variatiei constantelor: determinam functia $c: I \to \mathbb{R}$ astfel incat $x(t) = C(t) e^{A(t)}$ sa fie solutie a ecuatiei ${\operatorname{d}\!x\over\operatorname{d}\!t}=a(t)x + b(t)$ .
$$ {\operatorname{d}\over\operatorname{d}\!t}(C(t)e^{A(t)} = a(t) C(t) e^{A(t)} + C(t) \implies \text{ ecuatie de tip primitiva pentru } C(t): \\
C'(t)=g(t) \implies \\
C(t) = \int g(t) \operatorname{d}\!t = \frac{G(t)+k}{A(t)} \implies \\
x(t) = (G(t) +k) e^{A(t)}, k \in \mathbb{R}
$$

> Written with [StackEdit](https://stackedit.io/).
