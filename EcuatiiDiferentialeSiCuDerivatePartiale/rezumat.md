[TOC]

> **NU SE GARANETAZA CORECTITUDINEA SAU COMPLETITUDINEA INFORMATIILOR DE AICI**

#Tabel general de primitive

$\int \operatorname{d}\!x = x + C$
$\int x^n \operatorname{d}\!x = \frac{x^{n+1}}{n+1} + C$
$\int e^x \operatorname{d}\!x = e^x + C$
$\int a^x \operatorname{d}\!x = \frac{a^x}{\ln a} + C$
$\int \frac{1}{\sqrt{x}} \operatorname{d}\!x = 2 \sqrt{x} + C$
$\int \frac{1}{x} \operatorname{d}\!x = \ln |x| + C$
$\int \frac{1}{x^2 + a^2} \operatorname{d}\!x = \frac{1}{a} \arctan \frac{x}{a} + C$
$\int \frac{1}{x^2 - a^2} \operatorname{d}\!x = \frac{1}{2a} \ln \left|\frac{x - a}{x + a}\right| + C$
$\int \frac{1}{\sqrt{x^2 + a^2}} \operatorname{d}\!x = \ln \left(x + \sqrt{x^2 + a^2} \right) + C$
$\int \frac{1}{\sqrt{x^2 - a^2}} \operatorname{d}\!x = \ln \left(x + \sqrt{x^2 - a^2} \right) + C$
$\int \sin x \operatorname{d}\!x = - \cos x + C$
$\int \cos x \operatorname{d}\!x = \sin x + C$
$\int \tan x \operatorname{d}\!x = - \ln |\cos x| + C$
$\int \cot x \operatorname{d}\!x = \ln |\sin x | + C$
$\int \frac{1}{\cos^2 x} \operatorname{d}\!x = \tan x + C$
$\int \frac{1}{\sin^2 x} \operatorname{d}\!x = -\cot x + C$
$\int \frac{1}{\sqrt{a^2 - x^2}} \operatorname{d}\!x = \arcsin \frac{x}{a} + C$
$\int \frac{1}{x^2} \operatorname{d}\!x = -\frac{1}{x} + C$
$\int \frac{1}{x \pm a} \operatorname{d}\!x = \ln |x \pm a| + C$

#Tipuri de ecuatii diferentiale

##Ecuatia de tip primitiva

Se da $f : I \to \mathbb{R}$ se cere sa se afle $F\left(x\right)$, unde $f\left(x\right) = \frac{\operatorname{d}\!x}{\operatorname{d}\!t}$.

$f\left(x\right) = 4 \sin x - \cos x$
$F\left(x\right) = \int \left(4 \sin x - \cos x\right) \operatorname{d}\!x \\ = 4 \int \sin x \operatorname{d}\!x - \int \cos x \operatorname{d}\!x \\ = -4 \cos x - \sin x +C$

##Ecuatie cu variabile separabile
$f\left(x, x\right) = a\left(t\right) \cdot b\left(x\right)$
$\frac{\operatorname{d}\!x}{\operatorname{d}\!t} = a\left(t\right) \cdot b\left(x\right)$

1. Se rezolva $b\left(x\right) = 0$
2. Se separa variabilele $\frac{1}{b\left(x\right)} \cdot \operatorname{d}\!x = a\left(t\right) \cdot \operatorname{d}\!t$
3. Se gaseste o primitiva pentru $\frac{1}{b\left(x\right)}$ notata $B\left(x\right)$ si pentru $a\left(t\right)$ notata $A\left(t\right)$
4. Rezulta $B\left(x\right) = A\left(t\right) + C$

##Ecuatie diferentiala omogena

$f\left(t, x\right) = g\left(\frac{x}{t}\right)$

1. Se verifica daca este omogena $f\left(\alpha t, \alpha x\right) = f\left(t, x\right)$
2. Se da $t$ factor comun fortat
3. Se noteaza $y = \frac{x}{t}$ $\implies$ $x = yt$
4. Se diferentiaza $yt = x$ adica $y + t \frac{\operatorname{d}\!y}{\operatorname{d}\!t} = \frac{\operatorname{d}\!t}{\operatorname{d}\!t}$
5. Se inlocuieste in ecuatia principala $\frac{x}{t} = y$ si se rezolva cu metoda separarii variabilelor

##Ecuatia diferentiala neomogena

$\frac{\operatorname{d}\!x}{\operatorname{d}\!t} = a\left(t\right) \cdot x + b\left(t\right)$

1. Se rezolva ecuatia omogena atasata $\frac{\operatorname{d} \overline{x}}{\operatorname{d}\!t} = a\left(t\right) \cdot \overline{x}$ $\implies$ $\overline{x}\left(t\right) = C \cdot e^{A\left(t\right)}$ unde $A\left(t\right)$ este primitiva lui $a\left(t\right)$
2. Se aplica metoda variatiei constantelor $x\left(t\right) = C\left(t\right) \cdot e^{A\left(t\right)}$
3. Se inlocuieste $x\left(t\right)$ cu $C\left(t\right) \cdot e^{A\left(t\right)}$ in ecuatia principala si se diferentiaza $C\left(t\right) \cdot e^{A\left(t\right)}$ adica $C'\left(t\right) \cdot e^{A\left(t\right)} + C\left(t\right) e^{A\left(t\right)} = a\left(t\right) \cdot C\left(t\right) \cdot e^{A\left(t\right)} + b\left(t\right)$
4. Se rezolva si se scoate $C'\left(t\right)$
5. Se afla $C\left(t\right) = \int C'\left(t\right)$
6. Se inlocuieste $C\left(t\right)$ aflat mai sus in $x\left(t\right) = C\left(t\right) e^{A\left(t\right)}$

##Ecuatii diferentiale de forma $\frac{\operatorname{d}\!x}{\operatorname{d}\!t} = g\left(\frac{at + bx + c}{a_1 t + b_1 x + c_1}\right)$

1. Daca $a = a_1 = 0$ $\implies$ $\frac{\operatorname{d}\!x}{\operatorname{d}\!t} = \frac{bx + c}{b_1 x + c_1}$ se rezolva cu variabile separabile
2. Daca $b = b_1 = 0$ $\implies$ $\frac{\operatorname{d}\!x}{\operatorname{d}\!t} = \frac{at + c}{a_1 t + c_1}$ ecuatie de tip primitiva
3. Daca $c = c_1 = 0$ $\implies$ $\frac{\operatorname{d}\!x}{\operatorname{d}\!t} = \frac{at + bx}{a_1 t + b_1 x}$ ecuatie omogena
4. Daca $c \neq 0$ sau $c_1 \neq 0$ avem $d = ab_1 - ba_1$
	4.1. Daca $d = 0$ atunci schimbare de variabila $y = at + bx$ daca $b \neq 0$ sau $y = a_1 t + b_1 x$ daca $b_1 \neq 0$ si se rezolva cu variabile separabile
	4.2 Daca $d \neq 0$ atunci avem schimbarea de variabila $\begin{cases} s = t - t_0 \\ y = x - x_0 \end{cases}$ unde $\left(t_0, x_0\right)$ este solutia sistemului $\begin{cases}at + bx + c = 0 \\ a_1 t + b_1 x + c_1 = 0 \end{cases}$. Se rezolva ecuatia omogena rezultata

##Ecuatia Bernoulli

$\frac{\operatorname{d}\!x}{\operatorname{d}\!t} = a\left(t\right) \cdot x + b\left(t\right) \cdot x^\alpha$, cu $\alpha \in \mathbb{R} - \{0, 1\}$

1. Daca $\alpha = 0$ $\implies$ $\frac{\operatorname{d}\!x}{\operatorname{d}\!t} = a\left(t\right)x + b\left(t\right)$ care este ecuatie neomogena
2. Daca $\alpha = 1$ $\implies$ $\frac{\operatorname{d}\!x}{\operatorname{d}\!t} = [a\left(t\right) + b\left(t\right)] x$ care este ecuatie omogena
3. Daca $a, b$ constante $\implies$ ecuatie cu variabile separabile
4. $\alpha \in \mathbb{R} - \{0, 1\}$ atunci rezolvarea se face cu variatia constantelor de la ecuatia neomogena

##Ecuatia Riccati

$\frac{\operatorname{d}\!x}{\operatorname{d}\!t} =a\left(t\right) \cdot x^2 + b\left(t\right) \cdot x + c\left(t\right)$

1. Daca se da o solutie $\varphi_0 : I \to \mathbb{R}$ atunci se inlocuieste $\varphi_0$ in $x$ si se diferentiaza $\frac{\operatorname{d} \varphi_0}{\operatorname{d}\!t}$
2. Dupa ce sa aflat solutia particulara din inlocuirea lui $x$ cu $\varphi_0$ se face schimbarea de variabila $x = y + \varphi_0$
3. Se rezolva ecuatia cu ajutorul tipurilor precedente

##Ecuatia Langrange

$x = t \cdot \varphi\left(x'\right) + \Psi\left(x'\right)$

1. Se face notarea $p = x'$ si $\frac{\operatorname{d}\!p}{\operatorname{d}\!t} = x''$
2. Se deriveaza ecuatia in functie de $t$
3. Se inlocuieste $x' = p$ si se obtine o ecuatie in $t, p$ care se rezolva cu ajutorul tipurilor precedente
4. Se ajunge la exprimarea solutiei in forma parametrica $\begin{cases}t = t\left(p\right) \\ x = t \cdot \varphi\left(p\right) + \Psi\left(p\right) \end{cases}$

##Ecuatia Clairout

$x = t \cdot x' + \Psi\left(x'\right)$

1. Se face notarea $p = x'$ si $\frac{\operatorname{d}\!p}{\operatorname{d}\!t} = x''$
2. Se deriveaza in functie de $t$
3. Se inlocuieste $x' = p$ si $x''= \frac{\operatorname{d}\!p}{\operatorname{d}\!t}$ si se rezolva ecuatia

##Caz general pentru $x = g\left(t, x'\right)$

1. Se deriveaza in raport cu $t$
2. Se noteaza $x' = p$ si $x'' = \frac{\operatorname{d}\!p}{\operatorname{d}\!t}$ $\implies$ o ecautie in $p$ si $t$
3. Se integreaza si $\implies$ $t = t\left(p\right)$ sau $p = p\left(t\right)$
4. Rezulta solutia parametrica $\begin{cases}t = t\left(p\right) \\ x = g\left(t, p\right) \end{cases}$ sau $\begin{cases}p = p\left(t\right) \\ x = g\left(t, p\right) \end{cases}$

##Caz general pentru $t = h\left(x, x'\right)$

1. Se deriveaza in raport cu $x$
2. Se noteaza $x' = p$ si $x'' = \frac{\operatorname{d}\!p}{\operatorname{d}\!t}$ $\implies$ o ecautie in $p$ si $x$
3. Se integreaza si $\implies$ $p = p\left(x\right)$ sau $x = x\left(p\right)$
4. Rezulta solutia parametrica $\begin{cases}p = p\left(x\right) \\ t = h\left(x, p\right) \end{cases}$

#Problema Cauchy pentru ecuatii scalare de ordin I

Def: $\begin{cases}x' = f\left(t, x\right) \\ x\left(t_0\right) = x_0\end{cases}$

##Pasii de rezolvare

1. Scriem o parametrizare pentru $s$, in cazul general $\begin{cases}x_1 = \alpha_1 (s) \\ x_2 = \alpha_2 (s) \end{cases}$, si calculam $\varphi(s) = u_0 \left( \alpha_1 (s), \alpha_2 (s) \right)$
2. Calculam $\gamma_1, \gamma_2$ conditii initiale pentru $\partial_1 u = p_1$ si $\partial_2 u = p_2$, $\begin{cases} F\left( \alpha_1 (0), \alpha_2 (0), \varphi_0 (s), \gamma_1, \gamma_2 \right) = 0 \\ \gamma_1 - \alpha_1' (s) + \gamma_2 \alpha_2' (s) = \varphi_0' (s)\end{cases}$
3. Scriem si integram sistemul caracteristic $\begin{cases} \frac{\operatorname{d}\!x_j}{\operatorname{d}\!t} = \frac{\partial F}{\partial p_j}, x_j (0) = \alpha_j(0), j = \overline{1, 2} \\ \frac{\operatorname{d}\!p_j}{\operatorname{d}\!t} = -\frac{\partial F}{\partial x_j} - p_j \frac{\partial F}{\partial u}, p_j (0) = \gamma_j (s), j = \overline{1, 2} \\ \frac{\operatorname{d}\!u}{\operatorname{d}\!t} = \sum_{j = 1}^2 p_j \frac{\partial F}{\partial p_j}\end{cases}$

##Teorema de unicitate si existenta a solutiei problemei Cauchy

1. $\exists a, b$ astfel incat $D = [t_0 -a, t_0 + a] \times [x_0 - b, x_0 + b]$ $\subset$ $\Omega$
2. $f$ continua in ambele variabile $\exists M \geq 0$ astfel incat $M = \sup |f\left(t, x\right)|$
3. $f$ este Lipschitz in a 2-a variabila adica $\exists L \geq 0$ astfel incat $|f\left(t, x_1\right) - f\left(t, x_2\right)| \leq L |x_1 - x_2|$ **SAU** $f$ e derivabila in raport cu $x$ si $\frac{\partial f}{\partial x}$ e continua pe $D$

##Sirul aproximatiilor succesive

$\varphi_0\left(t\right) = x_0$
$\varphi_{i+1}\left(t\right) = x_0 + \int_{t_0}^t \left(f\left(s, \varphi_i\left(s\right)\right)\right) \operatorname{d}\!s$

Exemplu:

$\varphi_0\left(t\right) = \frac{\pi}{4}$ deoarece $x\left(0\right) = \frac{\pi}{4}$

$$
\varphi_1\left(t\right) =  \frac{\pi}{4} + \int_0^t f\left(s,  \frac{\pi}{4}\right) \operatorname{d}\!s \\
=  \frac{\pi}{4} + \int_0^t 2s \cdot \sin \frac{\pi}{4} \operatorname{d}\!s \\
=  \frac{\pi}{4} + \frac{\sqrt{2}}{2} t^2 \\
\implies \varphi_1\left(t\right) =  \frac{\pi}{4} + \frac{\sqrt{2}}{2} t^2
$$

#Teorema de aproximare Euler

Se da intervalul $[t_0, t_0 + \alpha]$ si se scoate $\alpha$
Se calculeaza $h = \frac{\alpha}{N}$ unde $N$ este dat in enunt
Se foloseste formula pentru aflarea $t_1, t_2 \dots t_n$: $t_n = t_0 + h \cdot n$ cu $n = \overline{0, N}$ sau $t_n = t_{n - 1} + h$
Se foloseste schema Euler $\begin{cases}x_0 \\ x_{n+1} = x_n + h \cdot f\left(t_n, x_n\right) \end{cases}$
Daca ni se cere sa calculam $|\varphi\left(t_2\right) - x_2|$ de exemplu, trebuie sa aflam mai intai solutia problemei Cauchy $\varphi\left(t\right)$ si apoi sa calculam $|\varphi\left(t_2\right) - x_2|$.

Daca avem problema Cauchy care indeplineste cerintele din teorema de existenta si unicitate a solutiei si $\varphi$ solutia unica a problemei Cauchy data, in ipoteza ca $f$ este functie Lipschitz si in prima variabila, avem ca $\exists A \gt 0$ astfel incat $\left| \varphi \left( t_n \right) - x_n\right| \le A \cdot h$, $\forall n \in \left\{ \overline{0, N} \right\}$ unde $x_0, x_1, dots, x_n$ sunt din schema numerica.

#Sisteme liniare $x' = A \cdot x + b\left(t\right)$

##Cazul omogen $x' = A \cdot x$

1. Se determina valorile proprii ale matricei $A$
2. Se face $\det\left( A - \lambda I_n\right) = 0$
3. Se afla radacinile polinomului caracteristic impreuna cu multiplicitatile lor $\lambda_1$ cu $n_1$, $\lambda_2$ cu $n_2$, $\dots$

Se deosebesc urmatoarele cazuri:

1. $\lambda_p \in \mathbb{R}$ si $nz_p = 1$ $\implies$ Se determina vectorul propriu $u \in \mathbb{R}^n$, $u \neq 0_n$ astfel incat $\left(A - \lambda_p I_n\right) u = 0_n$ si se scrie o solutie in sistemul fundamental $\varphi\left(t\right) = u \cdot e^{\lambda_p t}$

2. $\lambda_p \in \mathbb{C} - \mathbb{R}$ si $n_p = 1$ $\implies$Se determina vectorul propriu $u \in \mathbb{C}^n$, $u \neq 0_n$ astfel incat $\left(A - \lambda_p I_n\right) u = 0_n$. Se scriu 2 solutii pentru sistemul fundamental $\begin{cases}\varphi\left(t\right) = \text{Re}\left(u \cdot e^{\lambda_p t}\right) \\ \overline{\varphi}\left(t\right)  = \text{Im}\left(u \cdot e^{\lambda_p t}\right) \end{cases}$

3. $\lambda_p \in \mathbb{R}$ si $n_p \gt 1$ $\implies$ Se determina $n_i$ vectori nu toti nuli in $\mathbb{R}^n$ astfel incat $\varphi\left(t\right) = \left(v_0 + v_1 t + \dotsc + v_{n-1} t^{n-1}\right) \cdot e^{\lambda t}$. Apoi se face $\varphi\left(t\right)' = A \cdot \varphi\left(t\right)$

Exemplu: Daca $\lambda = -1$ si $n_p = 2$ atunci $\varphi\left(t\right) = \left(v_0 + v_1 t\right) \cdot e^{-t}$

$$
\left(\left(v_0 + v_1 t\right) e^{-t}\right)' = A \cdot \left(v_0 + v_1 t\right) \cdot e^{-t} \\
\iff v_1 e^{-t} - \left(v_0 + v_1 t\right) e^{-t} = A \cdot \left(v_0 + v_1 t\right) \cdot e^{-t} \\
\iff v_1 - \left(v_0 + v_1 t\right) = A v_0 + A v_1 t \\
\begin{cases}A v_1 + v_1 = 0 \\ A v_0 + v_0 = v_1\end{cases}
$$

Se rezolva sistemul, se afla vectorul $v_0$ si apoi $v_1$ si se inlocuieste in $\varphi\left(t\right)$.

##Cazul neomogen $x' = A \cdot x + b\left(t\right)$

1. Se determina solutia generala $\overline{x}' = A \cdot \overline{x}$ care este un sistem omogen si se rezolva ca mai sus
2. Obtinem o matrice fundamentala de solutii $\overline{x}\left(t\right) = \oslash\left(t\right) \cdot C$
3. Inlocuim $x$ cu $\oslash\left(t\right) \cdot C\left(t\right)$ si avem $\left(\oslash\left(t\right) \cdot C\left(t\right)\right)' = A \cdot \oslash\left(t\right) \cdot C\left(t\right) = b\left(t\right)$
4. Obtinem $\oslash\left(t\right) \cdot C'\left(t\right) = b\left(t\right)$ $\implies$ $C'\left(t\right) = \oslash\left(t\right)^{-1} \cdot b\left(t\right)$
5. Se afla $\oslash\left(t\right)^{-1}$ si apoi se calculeaza $C'\left(t\right)$
6. La final se integreaza $C'\left(t\right)$ si se afla $x\left(t\right)$

##Reducerea dimensiunii unui sistem omogen

Fiind dat un sistem omogen $x' = A \cdot x$ si o solutie pentru el $\varphi_1$:
- Se scrie $z\left(t\right)$ ca fiind o matrice formata din $\varphi_1$ si completata cu un vector din baza canonica
	 Exemplu: $z\left(t\right) = \left(\begin{array}{nume} e^{-t^5} & 0 \\ e^{-t^5} & 1\end{array}\right)$ unde $\varphi_1\left(t\right) =  \left(\begin{array}{nume} e^{-t^5}\\ e^{-t^5}\end{array}\right)$
- Se face determinantul lui $z\left(t\right)$ si se arata ca e diferit de 0
- Se face substitutia $x = z\left(t\right) \cdot y$ si apoi se inlocuieste in ecuatia principala
- $\left(z\left(t\right) \cdot y\right)' = A\left(t\right) \cdot z\left(t\right) \cdot y$ $\implies$ vom obtine la final $y' = z\left(t\right)^{-1}$
	$[\underbrace{A\left(t\right) \cdot z\left(t\right) - z'\left(t\right)}_{B\left(t\right)}]\cdot y$
- Se calculeaza $z\left(t\right)^{-1}$ si $B\left(y\right)$
- Se ajunge la un sistem in $y'$ si se calculeaza $y_1'$ si $y_2'$ apoi se inlocuieste $y$ in substitutia $x = z\left(t\right) \cdot y$

##Model de rezolvare pentru schimbarea de variabila

Fie un sistem omogen $x' = A \cdot x$ se cere schimbarea de variabila pentru a obtine un alt sistem din cel initial.

Ex: Fie schimbarea de variabila $t = e^s$

$t = e^s$ $\implies$ $s = \ln t = s\left(t\right)$

$x\left(t\right) = y\left(s\left(t\right)\right) = y \left(\ln\left(t\right)\right)$

$$\begin{equation}
 \left.\begin{aligned}
        &\frac{\operatorname{d}\!x}{\operatorname{d}\!t} = x' =\frac{\operatorname{d}\!y}{\operatorname{d}\!s} \cdot \frac{\operatorname{d}\!s}{\operatorname{d}\!t} = \frac{\operatorname{d}\!y}{\operatorname{d}\!s} \cdot \frac{d\left(\ln\left(t\right)\right)}{\operatorname{d}\!t} = \frac{\operatorname{d}\!y}{\operatorname{d}\!s} \frac{1}{t} \implies \frac{\operatorname{d}\!y}{\operatorname{d}\!s} = t \cdot \frac{\operatorname{d}\!t}{\operatorname{d}\!t}\\
       &\text{Dar } x' = A\left(t\right) \cdot x \iff x' = B \cdot \frac{1}{t} \cdot x \iff t x' = Bx
       \end{aligned}
 \right\}
 \qquad \implies \frac{\operatorname{d}\!y}{\operatorname{d}\!s} = B \cdot y \implies y' = B \cdot y
\end{equation}$$

- Rezolvand inainte de toate $x' = A \cdot x$ se obtine matricea de solutii fundamentala $\oslash\left(t\right)$
- Se face substitutia $\oslash\left(t\right) = \oslash\left(s\right) = \oslash\left(\ln t\right)$
- Apoi $x\left(t\right) = \oslash\left(\ln t\right) \cdot \left(\begin{array}{nume} c_1 \\ c_2\end{array}\right)$ si se rezolva


#Forme particulare de ecuatii de ordinul n - reducerea ordinului ecuatiilor

##Forma generala a ecuatiei de ordinul $n \in \mathbb{N}^*$

$F\left(t, x, x^{\left(1\right)}, \dots, x^{\left(n\right)}\right) = 0$

Forma normala a ecuatiei este $x^{\left(n\right)} = f\left(t, x, x^{\left(1\right)}, \dots, x^{\left(n - 1\right)}\right)$

##In F lipsesc derivatele lui x pana la ordinul K

$F\left(t, x^{\left(k\right)}, \dots, x^{\left(n\right)}\right) = 0$

Pentru reducerea ordinului se face schimbarea de variabila $x^{\left(k\right)} = y$, adica $x^{\left(k\right)}\left(t\right) = y\left(t\right)$.
Obtinem $x^{\left(k+1\right)} = y^{\left(1\right)}, x^{k + 2} = y^{\left(2\right)}, \dots, x^{\left(n\right)} = y^{\left(n-k\right)}$ $\implies$ se reduce la o ecuatie de ordin $\left(n - k\right)$ in $y$: $F\left(t, y , y^{\left(1\right)}, \dots, y^{\left(n-k\right)}\right) = 0$

##F nu depinde explicit de x, dar intervine in fiecare derivata

$F\left(t, \frac{x^{\left(1\right)}}{x}, \frac{x^{\left(2\right)}}{x}, \dots, \frac{x^{\left(n\right)}}{x}\right) = 0$, $x \neq 0$

Se face schimbarea de variabila $\frac{x'}{x} = y$ $\implies$ $\frac{x'\left(t\right)}{x\left(t\right)}= y\left(t\right)$

##Functia F nu depinde explicit de t

$F\left(x, x^{\left(1\right)}, x^{\left(2\right)}, \dots, x^{\left(n\right)}\right) = 0$

Se face schimbarea de variabila $y = x'$ $\implies$ $y\left(x\right) = x'\left(t\right) \\ y\left(x\left(t\right)\right) = x'\left(t\right)$
$x^{\left(2\right)} = \frac{\operatorname{d}}{\operatorname{d}\!t} \left(x^{\left(1\right)}\right)' = \frac{\operatorname{d}}{\operatorname{d}\!t} \left(y\left(x\right)\right) = \frac{\operatorname{d}\!y}{\operatorname{d}\!x} \cdot \frac{\operatorname{d}\!x}{\operatorname{d}\!t} = \underbrace{\frac{\operatorname{d}\!y}{\operatorname{d}\!x}}_{y^{\left(1\right)}} \cdot y$

Se obtine ecuatia de ordin $n - 1$, dar $x$ e variabila independenta aici: $G\left(x, y, y^{\left(1\right)}, \dots, y^{\left(n-1\right)}\right) = 0$

##Ecuatia Euler

$F\left(x, t x^{\left(1\right)}, t^2 x^{\left(2\right)}, \dots, t^n x^{\left(n\right)}\right) = 0$

Se face schimbarea de variabila $|t| = e^s \iff s = \ln |t|$

Se obitne o ecuatie de tip "Functia F nu depinde explicit de t": $G\left(y, y^{\left(1\right)}, y^{\left(2\right)}, \dots, y^{\left(n\right)}\right) = 0$


##Ecuatia omogena

$F\left(\frac{x}{t}, x^{\left(1\right)}, t x^{\left(2\right)}, \dots, t^{n-1} x^{\left(n\right)}\right) = 0$

Se face schimbarea de variabila $\frac{x}{t} = y$ $\implies$ $x = ty$

$X^{\left(1\right)} = \left(ty\right)' = y + ty^{\left(1\right)}$

Se obtine ecuatie Euler in $y$: $G\left(y, t y^{\left(1\right)}, t^2 y^{\left(2\right)}, \dots, t^n y^{\left(n\right)}\right) = 0$


#Ecuatii liniare de ordin n

$x^{\left(n\right)} = a_0\left(t\right) \cdot x + a_1\left(t\right) \cdot x^{\left(1\right)} + \dots + a_{n-1}\left(t\right) \cdot x^{\left(n-1\right)} + g\left(t\right)$

##Cazul omogen $g\left(t\right) = 0$

$x^{\left(n\right)} = a_0\left(t\right) \cdot x + a_1\left(t\right) \cdot x^{\left(1\right)} + \dots + a_{n-1}\left(t\right) \cdot x^{\left(n-1\right)}$

- Se scrie ecuatia caracteristica $\lambda^n = a_0 \cdot \lambda^0 + a_1 \cdot \lambda^1 + \dots + a_{n - 1} \cdot \lambda^{n - 1}$ adica $\lambda^n = a_0 + a_1 \cdot \lambda^1 + \dots + a_{n - 1} \cdot \lambda^{n - 1}$
- Se determina radacinile si multiplicitatea lor
- Scriem sistemul fundamental de solutii astfel:
$\lambda_j \in \mathbb{R} \text{ cu } m_{\lambda_j} = 1 \implies \begin{cases}\varphi_1\left(t\right) = e^{\lambda_j t} \\ \varphi_2\left(t\right) = t \cdot e^{\lambda_j t} \\ \vdots \\ \varphi_{n_j}\left(t\right) = t^{n_j - 1} e^{\lambda_j t}\end{cases}$

$\lambda_j \in \mathbb{C} - \mathbb{R} \text{ cu } n_j \geq 1$ atunci avem:

$\begin{cases} \varphi_1\left(t\right) = \text{Re}\left(e^{\lambda_j t}\right) = e^{\alpha_j t} \cos B_j t \\ \overline{\varphi}_1\left(t\right) = \text{Im}\left(e^{\lambda_j t}\right) = e^{\alpha_j t} \sin B_j t \\ \vdots \\ \varphi_{n_j}\left(t\right) = \text{Re}\left(t^{n_j - 1} e^{\lambda_j t}\right) = t^{n_j - 1} e^{\alpha_j t} \cos B_j t \\ \overline{\varphi}_{n_j}\left(t\right) = \text{Im}\left(t^{n_j - 1} e^{\lambda_j t}\right) = t^{n_j - 1} e^{\alpha_j t} \sin B_j t \end{cases}$

##Cazul neomogen $g\left(t\right) \neq 0$

Fie $x^{\left(n\right)} = a_0\left(t\right) \cdot x + a_1\left(t\right) \cdot x^{\left(1\right)} + \dots + a_{n-1}\left(t\right) \cdot x^{\left(n-1\right)} + g\left(t\right)$

- Se scrie ecuatia liniara omogena atasata $\overline{x}^{\left(n\right)} = a_0 \overline{x} + \dots + a_{n - 1} \overline{x}^{\left(n - 1\right)}$
- Se scrie ecuatia caracteristica pentru ecuatia liniara atasta
- Se afla radacinile cu multiplicitatea lor
- Se scrie sistemul fundamental de solutii
- Se scrie solutia generala $\overline{x}\left(t\right) = C_1 \varphi_1\left(t\right) + \dots + C_n \varphi_n\left(t\right)$
- Se aplic ametoda variatiei constantelor $x\left(t\right) = C_1\left(t\right) \varphi_1\left(t\right) + \dots + C_n\left(t\right) \varphi_n\left(t\right)$
- Se determina prin derivatele $C_1', \dots, C_n'$ sistemul algebric
$\begin{cases}C_1' \varphi_1\left(t\right) + \dots + C_n' \varphi_n\left(t\right) &= 0 \\ \vdots &=0 \\ C_1' \varphi_1^{\left(n-1\right)}\left(t\right) + \dots + C_n \varphi_n^{\left(n-1\right)}\left(t\right) &= g\left(t\right)\end{cases}$
- Se scot $C_1', \dots, C_n'$ apoi se integreaza fiecare pentru a afla $C_1, \dots, C_n$

> Written with [StackEdit](https://stackedit.io/).