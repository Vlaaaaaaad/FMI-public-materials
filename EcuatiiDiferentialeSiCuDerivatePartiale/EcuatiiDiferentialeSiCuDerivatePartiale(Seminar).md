
Ecuatii Diferentiale si cu Derivate Partiale
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =

[TOC]


> **NU SE GARANETAZA CORECTITUDINEA SAU COMPLETITUDINEA INFORMATIILOR DE AICI**

> Ai descoperit o greseala? Ai facut o tema si vrei sa o dai si colegilor? Stii cum sa faci ceva sa arate mai bine? Contribuie [direct pe GitHub](https://github.com/Vlaaaaaaad/FMI-public-materials/tree/master/EcuatiiDiferentialeSiCuDerivatePartiale) sau trimite un mail la <mailto:stiu-chestii@vladionescu.me>

#Ecuatii diferentiale de tip primitiva( in $\mathbb{R}$)

Se da o functie $f : I \subset \mathbb{R} \to \mathbb{R}$ continua si se cere sa se determine multimea functiilor $F : I \to \mathbb{R}$ care verifica conditiile:
 - $F$ sa fie derivabila pe $I$
 - verifica ecuatia diferentiala $F'(x) = f(x)$, $\forall x \in I$ sau $\frac{\operatorname{d}\!F}{ \operatorname{d}\!x} (x) = f(x)$, $\forall x \in I$
Problema e echivalenta cu a determina primitivele lui $f(x)$.

$F(x) = \int f(x) \operatorname{d}\!x$
$C$ este multimea functiilor constante
$C + C = C$
$\alpha C = C$

**Exerctiu**: Sa se determine multimea solutiilor ecuatiei $\frac {\operatorname{d}\!F} { \operatorname{d}\!x} = f(x)$ pentru urmatoarele functii $f$.

1. $f(x) = 3 x^2 + \frac {1}{x} - 2 \sqrt{x} + \sqrt[3]{x^2}$, cu $x \in (0, \infty)$
2. $f(x) = 2^x - 2 \frac{1}{3^x} $, cu $x \in \mathbb{R}$
3. $f(x) = 4 \sin(x) - \cos(x)$, cu $x \in \mathbb{R}$
4. $f(x) = \frac{1}{\sin^2{x}} + \frac{1}{\cos^2{x}}$, cu $x \in (0, \frac{\pi}{2})$
5. $f(x) = \frac{1}{sin^2{x} \cos^2{x}}$, cu $x \in (0, \frac{\pi}{2})$
6. $f(x) = \tan{x} + \cot{x}$, cu $x \in (0, \frac{\pi}{2})$
7. $f(x) = \frac{1}{x^2 + 9} + \frac{1}{x^2 - 9}$, cu $x \in ( - 3, 3)$
8. $f(x) = \frac{1}{\sqrt{x^2 + 9}} + \frac{2}{\sqrt{x^2 - 9}} - \frac{1}{\sqrt{36 - x^2}}$, cu $x \in (3,6)$
9. $f(x) = \frac{2x^2}{(x^2 + 2)(x^2 - 2)}$, cu $x \in( - 2,2)$
10. $f(x) = x \ln x$, cu $x > 0$
11. $f(x) = x e^x$, cu $x \in \mathbb{R}$
12. $f(x) = \sqrt{1 - x^2}$, cu $x \in ( - 1,1)$
13. $f(x) = \frac{x}{\sqrt{x^2 + 1}}$, cu $x \in \mathbb{R}$
14. $f(x) = e^{3x} \sin(x)$, cu $x \in \mathbb{R}$
15. $f(x) = \frac {e^{2 \sin{x}}}{\sqrt{1 - x^2}}$, cu $x \in ( - 1, 1)$
16. $f(x) = \frac{1}{x \sqrt{x^2 - 1}}$, cu $x \in (1, \infty)$
17. $f(x) = \sqrt{x^2 - 3x + 2}$, cu $x \in (2, + \infty)$
18. $f(x) = \frac{2 \cos{x}}{\sin{x} + \cos{x}}$, cu $x \in (0, \frac{\pi}{2})$
19. $f(x) = {1}{x \sqrt{x^2 + x + 1}} $, cu $x > 0$
20. $f(x) = \frac{1}{x \sqrt{x^4 - x^2 + 1}}$, cu $x < 0$

*Rezolvari*:

1. $$ F(x) = \int \left(3 x^2 + \frac{1}{x} - 2\sqrt{x} + \sqrt[3]{x^2}\right) \operatorname{d}\!x \\
 F(x) = \int 3 x^2 \operatorname{d}\!x + \int \frac{1}{x} \operatorname{d}\!x - \int 2 \frac{1}{x^2} \operatorname{d}\!x + \int x^{\frac{2}{3}} \operatorname{d}\!x \\
 = 3 \frac{x^3}{3} + \ln|x| - 2 \frac{2x^{\frac{3}{2}}}{3} + \frac{3 x^{\frac{5}{3}}}{5} + C \\
 = x^3 + \ln x - \frac{4}{3} \sqrt{x^3} + \frac{3}{5}\sqrt[3]{x^5} + C $$

2. $$F(x) = \int(2^x - 2 \frac{1}{3^x}) \operatorname{d}\!x \\
 = \int 2^x \operatorname{d}\!x - 2 \int (\frac{1}{3})^x \operatorname{d}\!x \\
 = \frac{2^x}{\ln2} - 2 \frac{(\frac{1}{3})^x}{\ln\frac{1}{3}} + C $$

3. $$ F(x) = \int(4 \sin{x} - cos{x}) \operatorname{d}\!x = \\
 = 4 \int \sin{x} \operatorname{d}\!x - \int \cos{x} \operatorname{d}\!x \\
 = 4 \cos{x} - \sin{x} + C$$

4. $$F(x) = \int\left(\frac{1}{\sin^2 x} + \frac{1}{\cos^2 x}\right) \operatorname{d}\!x = \\
 - \cot x + \tan x + C$$

5. $$F(x) = \int \frac{1}{\sin^2 x \cos^2 x} \operatorname{d}\!x = \\
 = \int \frac{\sin^2 x + \cos^2 x}{\sin^2 x \cos^2 x} \operatorname{d}\!x \\
 = \tan x - \cot x + C$$

6. $$F(x) = \int(\tan x \cot x) \operatorname{d}\!x = \\
 = - \ln|\cos x| + \ln| \sin x| + C$$

7. $$F(x) = \int \left(\frac{1}{x^2 + 9} + \frac{1}{x^2 - 9}\right) \operatorname{d}\!x \\
 = \frac{1}{3} \arctan \frac{x}{3} + \frac{1}{6} \left|\frac{x - 3}{x + 3}\right| \\
 = \frac{1}{3} \arctan \frac{x}{3} + \frac{1}{6} \ln\left(\frac{3 - x}{x - 3}\right) + C$$

8. $$F(x) = \int \left(\frac{1}{\sqrt{x^2 + 9}} \frac{2}{\sqrt{x^2 - 9}} - \frac{1}{\sqrt{36 - x}}\right) \operatorname{d}\!x \\
 = \ln (x + \sqrt{x^2 + 9} + \ln \left|x + \sqrt{x^2 - 9}\right|) - \arcsin \frac{x}{6} + C$$

9. $$F(x) = \int \frac{(x^2 + 2) + (x^2 - 2)}{(x^2 + 2)(x^2 - 2)} \operatorname{d}\!x \\
 = \int \frac{1}{x^2 - 2} \operatorname{d}\!x + \int \frac{1}{x^2 - 2} \operatorname{d}\!x \\
 = \frac{1}{2\sqrt{2}} \ln \left|\frac{x - \sqrt{2}}{x + \sqrt{2}}\right| + \frac{1}{\sqrt{2}} \arctan \frac{x}{\sqrt{2}} + C$$

10. **tema**

11. **tema**

12. $$F(x) = \int \sqrt{1 - x^2} \operatorname{d}\!x \\
 = \int x' \sqrt{1 - x^2} \operatorname{d}\!x \\
 = x \sqrt{1 - x^2} - \int x\left(\sqrt{1 - x^2}\right)' \operatorname{d}\!x \\
 = x \sqrt{1 - x^2} - \int x \frac{ - 2x}{2 \sqrt{1 - x^2}} \operatorname{d}\!x = x \sqrt{1 - x^2} - \int \frac{1 - x^2 - 1}{\sqrt{1 - x^2}} \operatorname{d}\!x \\
 = x \sqrt{1 - x^2} - \int \frac{1 - x^2}{\sqrt{1 - x^2}} \operatorname{d}\!x + \int \frac{1}{\sqrt{1 - x^2}} \operatorname{d}\!x \\
 = x \sqrt{1 - x^2} - \int \sqrt{1 - x^2} \operatorname{d}\!x + \arcsin x \\
 \\
 \implies 2\int\sqrt{1 - x^2} \operatorname{d}\!x = x \sqrt{1 - x^2} + \arcsin x + C$$

13. **tema**

14. **tema**

15. $$ F(x) = \int \frac{e}{\sqrt{1 - x^2}} \operatorname{d}\!x \\
 \\
 \text{Notam } t = 2 \arcsin x \\
 \frac{1}{2}\operatorname{d}\!t = \frac{1}{\sqrt{1 - x^2}} \operatorname{d}\!x \\
\frac{1}{2} \int e^t \operatorname{d}\!t = \frac{1}{2} e^t + C \\
 \implies F(x) = \frac{1}{2} e^{\arcsin x} + C$$

16. $$F(x) = \int \frac{1}{x \sqrt{x^2 - 1}} \\
 = \int \frac{1}{x^2 \sqrt{1 - \frac{1}{c^2}}}\operatorname{d}\!x \\
 \text{Notam } \frac{1}{x} = t \text{ si } - \frac{1}{x^2}\operatorname{d}\!x = \operatorname{d}\!t \\
 = - \int \frac{1}{\sqrt{1 - t^2}}\operatorname{d}\!t = \\
 - \arcsin t + C = \\
 - \arcsin \frac{1}{x} + C $$

17. **tema**

18. **tema**

19. **tema**

20. **tema**


#Ecuatii diferentiale cu variabile separabile

**Exercitiu**: Sa se determine multimea solutiilor ecuatiilor urmatoare:
1. $\frac{\operatorname{d}\!x}{\operatorname{d}\!t} = \frac{x^2 - 2x - 8}{t^2 - 4}$, cu $x \in \mathbb{R} \text{ si } t \in (2, \infty)$
2. $\frac{\operatorname{d}\!x}{\operatorname{d}\!t} = (1 + \tan^2 t)(1 + \cot^2 x)$, cu $x, t \in (0, \frac{\pi}{2})$
3. $\frac{\operatorname{d}\!x}{\operatorname{d}\!t} = \frac{\sqrt{x^2 + 1}}{t^2 + 1}$, cu $x, t \in \mathbb{R}$
4. $\frac{\operatorname{d}\!x}{\operatorname{d}\!t} = \frac{2t(x^2 - 9)}{t^2 + 1}$, cu $x \in (0, \infty) \text{ si } t \in \mathbb{R}$
5. $\frac{\operatorname{d}\!x}{\operatorname{d}\!t} = \frac{1}{t^2 + 9} (x^2 + 4x + 5)$, cu $x, t \in \mathbb{R}$

*Rezolvari*:
1. $$ \text{ Identificam } a(t) = \frac{1}{t^2 - 4} \text { si } b(x) = x^2 - 2x - 8 \\
 \text{ Rezolvam } b(x) = 0 \implies x^2 - 2x - 8 = 0 \implies x_1 = 4 \text{ si } x_2 = - 2 \text{ care sunt in domeniu } \implies \text{ avem solutiile } \varphi_1, \varphi_2 : (2, + \infty) \to \mathbb{R} \text{ cu } \varphi_1(t) = 4 \text{ si }\varphi_2(t) = - 2 \\
 \text{ Pentru } x \in \mathbb{R} - \{ - 2, 4\} \text{ separam variabilele } \frac{\operatorname{d}\!x}{x^2 - 2x - 8} = \frac{\operatorname{d}\!t}{t^2 - 4} \\
 \int \frac{1}{x^2 - 2x - 8}\operatorname{d}\!x = \int \frac{1}{(x - 4)(x + 2)}\operatorname{d}\!x \\
 \text{Luam } \frac{1}{(x - 4)(x + 2)} = \frac{A}{x - 4} + \frac{B}{x + 2} \implies A = \frac{1}{6} \text{ si } B = - \frac{1}{6} \\
 \implies = \frac{1}{6} \int \frac{1}{x - 4}\operatorname{d}\!x - \frac{1}{6} \int \frac{1}{x + 2}\operatorname{d}\!x \\
 = \frac{1}{6} \ln|x - 4| - \frac{1}{6} \ln(x + 2) = \\
 \frac{1}{6} \ln \left|\frac{x - 4}{x + 2}\right| + c \implies B(x) = \frac{1}{6} \ln\frac{x - 4}{x + 2} \\
 \\
 \int\frac{1}{t^2 - 4}\operatorname{d}\!t = \frac{1}{4} \ln \left|\frac{t - 2}{t + 2}\right| + c \\
 A(t) = \frac{1}{4} \ln \left|\frac{t - 2}{t + 2}\right| \\
 B(x) = A(t) + C \\
 \frac{1}{6} \ln \left|\frac{x - 4}{x + 2}\right| = \frac{1}{4} \ln \left|\frac{t - 2}{t + 2}\right| \\
 \ln\left|\frac{x - 4}{x + 2}\right| + C = \ln\left|\frac{t - 2}{t + x}\right|^{\frac{3}{2}} + 6C \\
 = \frac{x - 4}{x + 2} = \pm \left(\frac{t - 2}{t + 2}\right)^{\frac{3}{2}} e^{6C} = \pm e^{6C}\sqrt{\frac{t - 2}{t + 2}^3} \implies x - 4 = (x - 2) e^{6C} \sqrt{\frac{t - 2}{t + 2}^3} \implies x\left(1 - e^{6C} \sqrt{\frac{t - 2}{t + 2}^3}\right) = 2 e^{6C} \sqrt{\frac{t - 2}{t + 2}^3} + 4 \\
 \implies x = \frac{2 e^{6C} \sqrt{\frac{t - 2}{t + 2}^3} + 4}{1 - e^{6C} \sqrt{\frac{t - 2}{t + 2}^3}} \\
\text{ Deci avem multimea solutiilor formata din } x = \frac{2 e^{6C} \sqrt{\frac{t - 2}{t + 2}^3} + 4}{1 - e^{6C} \sqrt{\frac{t - 2}{t + 2}^3}} \text{ si } \varphi_1, \varphi_2 : (2, + \infty) \to \mathbb{R} \text{ cu } \varphi_1(t) = 4 \text{ si }\varphi_2(t) = - 2$$
2. **tema**
3. **tema**
4. **tema**
5. **tema**

#Ecuatii diferentiale omogene

**Exercitiu**: Sa se determine multimea solutiilor ecuatiilor urmatoare:
1. $\frac{\operatorname{d}\!x}{\operatorname{d}\!t} = \frac{2xt}{x^2 - t^2}$ cu $ x \in ( - 1,1) \text{ si } t \in(2, 10)$
2. $\frac{\operatorname{d}\!x}{\operatorname{d}\!t} = \frac{x}{t} - e^{\frac{x}{t}}$ cu $, t > 0, x \in \mathbb{R}$
3. $\frac{\operatorname{d}\!x}{\operatorname{d}\!t} = \frac{t^2x + x^3}{t^3}$ cu $, t > 0, x \in \mathbb{R}$
4. $\frac{\operatorname{d}\!x}{\operatorname{d}\!t} = \frac{x^2}{t^2} = \frac{t}{x}$, cu $t,x > 0$

*Rezolvari*:
1. $$ f(t,x) = \frac{2xt}{x^2 - t^2} \\
 f(\alpha t, \alpha x) = \frac{2\alpha^2xt}{\alpha^2x^2 - \alpha^2t^2} = \frac{2xt}{x^2 - t^2} = f(x, t) \implies \text{ ecuatia este omogena} \\
\text{Facem schimbarea de variabila } y(t) = \frac{x(t)}{t} \implies x = ty \\
 \text{Ecuatia devine, deci } \frac{\operatorname{d}}{\operatorname{d}\!t}(ty) = \frac{2t^2y}{t^2y^2 - t^2} \implies y + t \frac{\operatorname{d}\!y}{\operatorname{d}\!t} = \frac{2y}{y - 1} \implies \frac{\operatorname{d}\!y}{\operatorname{d}\!t} = \left(\frac{2y}{y^2 - 1} - y\right)\frac{1}{t} \text{ care este ecuatie cu variabile separabile} \\
 = \frac{\operatorname{d}\!y}{\operatorname{d}\!t} = \left(\frac{3y - y^3}{y^2 - 1}\right)\frac{1}{t} \\
 \text{Avem } a(t) = \frac{1}{t} \text{ si } b(y) = \frac{3y - y^3}{y^2 - 1} \text{ unde } y \in \left( - \frac{1}{2}, \frac{1}{2}\right) \text{ si } t \in (2, 10) \\
\frac{3y - y^3}{y^2 - 1} = 0 \implies y(3 - y^2) = 0 \implies \text{ Solutia stationara } y = 0 \implies \varphi_1 :(2, 10) \to \mathbb{R}, \varphi_1(t) = 0 \text{ solutie stationara pentru ecuatia in } y \implies x_1(t) = 0 \implies t = 0 \\
\text{Pentru } y \neq 0 \frac{y^2 - 1}{y(3 - y^2)}\operatorname{d}\!y = \frac{1}{t}\operatorname{d}\!t \\
 \int\frac{y^2 - 1}{ - y^3 + 3y}\operatorname{d}\!y \text{ integrala care o rezolvam prin schimbare de variabila } \\
 z = - y^3 + 3y \implies \operatorname{d}\!z = - 3(z^2 - 1)\operatorname{d}\!y \\
 - \frac{1}{3} \int \frac{1}{z} \operatorname{d}\!z = - \frac{1}{3} \ln |z| + C \\
 \int\frac{y^2 - 1}{ - y^3 + 3y}\operatorname{d}\!y = - \frac{1}{3} \ln | - y^3 + 3y| + C \\
 \implies B(y) = - \frac{1}{3} \ln | - y^3 + 3y| \text{ si } A(t) = \ln|t| \\
 B(y) = A(t) + C \\
 - \frac{1}{3} \ln | - y^3 + 3y| = \ln t + C \\
 - \frac{1}{3} \ln \left| - \frac{x^3}{t^3} + 3\frac{x}{t}\right| = \ln t + C$$
2. **tema**
3. **tema**
4. **tema**

#Ecuatii diferentiale liniare

**Exercitiu**: Sa se determine multimea solutiilor ecuatiilor:
1. $\frac{\operatorname{d}\!x}{\operatorname{d}\!t} = \frac{2t}{t^2 + 1}x + 2t - 1$, cu $t,x \in \mathbb{R}$
2. $\frac{\operatorname{d}\!x}{\operatorname{d}\!t} = (1 + \tan^2 t)x + \frac{1}{\cos^2 t}$, cu $t \in (0, \frac{\pi}{2})$
3. $\frac{\operatorname{d}\!x}{\operatorname{d}\!t} = 2xt - te^{t^2}$, cu $t \in \mathbb{R}$
4. $\frac{\operatorname{d}\!x}{\operatorname{d}\!t} = \frac{1}{\sqrt{t^2 + 1}}x + t(t + \sqrt{t^2 + 1})$, cu $t \in \mathbb{R}$

*Rezolvari*:
1. $$a(t) = \frac{2t}{t^2 + 1} \text{ si } b(t) = 2t - 1 \\
 \frac{d \bar{x}}{\operatorname{d}\!t} = \frac{2t}{t^2 + 1}\bar{x} \implies \bar{x}(t) = C e^{A(t)}\\
 \int \frac{2t}{t^2 + 1}\operatorname{d}\!t = \int \frac{(t^2 + 1)'}{t^2 + 1}\operatorname{d}\!t = \ln( t^2 + 1) + C \implies A(t) = \ln (t^2 + 1) \\
 \implies \bar{x} = C e^{\ln( t^2 + 1)} = C (t^2 + 1) \\
 \text{Aplicam metoda variatiei constantelor. Determinam } C: \mathbb{R} \to \mathbb{R} \text{ astfel incat } x(t) = C(t) (t^2 + 1) \text{ sa verifice ecuatia data initial} \\
 \frac{\operatorname{d}\ !C(t)(t^2 + 1)}{\operatorname{d}\!t} = \frac{2t}{t^2 + 1} (C(t)(t^2 + 1)) + 2t - 1\implies C(t)' (t^2 + 1) + C(t)(t^2 + 1)' = 2tC(t) = 2t - 1 \implies C(t)' = \frac{2t - 1}{t^2 - 1} \implies C(t) = \int \frac{2t - 1}{t^2 - 1}\operatorname{d}\!t = \ln(t^2 + 1) - \arctan(t) + C_1 \\
 \implies x(t) = \left(\ln(t^2 + 1) - \arctan(t) + C_1\right) (t^2 + 1)$$
2. **tema**
3. **tema**
4. **tema**

#Ecuatii de tipul $\frac{\operatorname{d}\!x}{\operatorname{d}\!t} = f\left(\frac{at + bx + c}{a_1t + b_1t + c_1}\right)$

**Exercitii**: Sa se determine multimea solutiilor ecuatiilor:
1. $\frac{\operatorname{d}\!x}{\operatorname{d}\!t} = \frac{2t + x}{t + x}$
2. $\frac{\operatorname{d}\!x}{\operatorname{d}\!t} = \frac{2t + x - 1}{4t + 2x - 4}$
3. $\frac{\operatorname{d}\!x}{\operatorname{d}\!t} = \frac{t - 2x + 4}{ - t + 2x + 3} $
4. $\frac{\operatorname{d}\!x}{\operatorname{d}\!t} = \frac{t - 2x - 3}{t + x}$
5. $\frac{\operatorname{d}\!x}{\operatorname{d}\!t} = \frac{2t + x - 5}{t - x + 2}$

*Rezolvari*:
1. **tema**
2. $$\text{Suntem in cazul } d = 0 \implies \text{ alegem una din cele doua optiuni de schimbare de variabila. Am ales } 2t + x = y \text{ si } x = y - 2t \\
 \frac{\operatorname{d}}{\operatorname{d}\!t}(y - 2t) = \frac{2t + y - 2t - 1}{4t + 2y - 4t - 4} \\
 \frac{\operatorname{d}\!y}{\operatorname{d}\!t} - 2 = \frac{y - 1}{2y - 4} \\
 \frac{\operatorname{d}\!y}{\operatorname{d}\!t} = \frac{y - 1 + 4y - 8}{2y - 4}\\
\frac{\operatorname{d}\!y}{\operatorname{d}\!t} = \frac{5y - 9}{2y - 4} \text{ care este ecuatie cu variabile separabile } \\
 a_2(t) = 1 \text{ si } b_2(y) = \frac{5y - 9}{2y - 4} \\
 \text{Cautam solutii stationare } b2(y) = 0 \implies t = \frac{9}{5} \text{ Deci rezulta solutia stationara } y_1(t) = \frac{9}{5} x_1(t) = \frac{9}{5} - 2t \\
 \text{Daca } y \neq \frac{9}{5} \text{ separam variabilele } \implies \frac{2y - 4}{5y - 9}\operatorname{d}\!y = 1 \operatorname{d}\!t \\
 \int \frac{2y - 4}{5y - 9}\operatorname{d}\!y = \frac{2}{5} \int \frac{y - 2}{y - \frac{9}{5}}\operatorname{d}\!y = \frac{2}{5} \int \frac{y - \frac{9}{5} + \frac{9}{5} - 2}{y - \frac{9}{5}} \operatorname{d}\!y = \frac{2}{5}\left( \int 1 \operatorname{d}\!y - \frac{1}{5}\int \frac{1}{y - \frac{9}{5}}\operatorname{d}\!y\right) = \frac{2}{5}y - \frac{2}{25} \ln \left|y - \frac{9}{5}\right| + C \\
 B_2 = \frac{2}{5} y - \frac{2}{25} \ln \left|y - \frac{9}{5}\right|, A_2(t) = t \\
 \implies \text{Solutia implicita a ecuatiei in } y \text{ este } B_2(y) = A_2(t) + C = \frac{2}{5} y - \frac{2}{25} \ln \left|y - \frac{9}{5}\right| = t + C \\
 \frac{2}{5} (x + 2t) - \frac{2}{25} \ln \left|x + 2t - \frac{9}{5}\right| = t + C$$
3. $$\text{Suntem in cazul } d \neq 0 \implies \text{ trebuie sa rezolvam sistemul }\\
 t - 2x - 3 = 0, t + x = 0 \implies t = 1 \text{ si } x = - 1 \text{ care sunt } t_0 si x_0. \\
 \implies s = t - t_0 = t - 1 \text{ si }y = x - x_0 = x + 1 \\
 (t,x) \xrightarrow{s = t - 1 \text{ si } y = x + 1} (s,y)\\
 \frac{\operatorname{d}\!x}{\operatorname{d}\!t} = \frac{\operatorname{d}\!y}{\operatorname{d}\!s} \frac{\operatorname{d}\!s}{\operatorname{d}\!t} = \frac{\operatorname{d}\!y}{\operatorname{d}\!s} \\
 \implies \text{Ecuatia devine } \frac{\operatorname{d}\!y}{\operatorname{d}\!s} = \frac{s + 1 - 2(y - 1) - 3}{s + 1 + y - 1} \\
 \frac{\operatorname{d}\!y}{\operatorname{d}\!s} = \frac{s - 2y}{s + y} \text{ care este ecuatie omogena.} \\
 \frac{\operatorname{d}\!y}{\operatorname{d}\!s} = \frac{1 - 2 \frac{y}{s}}{1 + \frac{y}{s}} \\
 \text{Facem schimbarea de variabila } z = \frac{y}{s} \\
 (t,x)\xrightarrow{s = t - 1 \text{ si }y = x + 1} (s,y) \xrightarrow{\frac{y}{s} = z} (s,z) \\
 \frac{d (s z)}{\operatorname{d}\!s} = \frac{1 - 2z}{1 + z} \\
 \ z + s\frac{\operatorname{d}\!z}{\operatorname{d}\!s} = \frac{1 - 2z}{1 + z} \\
 \implies \frac{\operatorname{d}\!z}{\operatorname{d}\!s} = \left(\frac{1 - 2z}{1 + z} - z\right) \frac{1}{s} \\
 \frac{\operatorname{d}\!z}{\operatorname{d}\!s} = \frac{1 - 3z - z^2}{1 + z} \frac{1}{s} \\
 a_2(s) = \frac{1}{s} \text{ si } b_2(s) = \frac{1 - 3z - z^2}{1 + z} \\
b_2(z) = 0 \implies z_{1,2} = \frac{3 \pm \sqrt{13}}{ - 2} \\
 z(t) = z_1 \text{ solutie stationara pentru ecuatia in } z \implies y_1(t) = s z_1 \\
 x_1(t) = (t - 1) z_1 - 1 \text{. Analog } x_2(t) = (t - 1) z_2 - 1 \\
 \frac{1 + z}{1 - 3z - z^2} \operatorname{d}\!z = \frac{1}{s} \operatorname{d}\!s \\
 \int \frac{1}{s} \operatorname{d}\!s = \ln |s| + C \\
 A_2(s) = \ln|s| \\
 \int \frac{1 + z}{1 - 3z - z^2} \operatorname{d}\!z = - \int \frac{1 + z}{z^2 - 3z - 1}\operatorname{d}\!z = \\
 \text{Vrem sa scriem forma canonica a ecuatiei de gradul doi de la numitor } z^2 - 3z - 1 = \left(z + \frac{3}{2}\right)^2 - \frac{13}{4} \\
 \implies - \int \frac{1 + z}{\left(z + \frac{3}{2}\right)^2 - \frac{13}{4}}\operatorname{d}\!z \\
 k = z + \frac{3}{2} \text{ si } dk = \operatorname{d}\!z \\
 \implies - \int \frac{k - \frac{1}{2}}{k^2 - \frac{13}{4}} = - \frac{1}{2} \ln\left|k^2 - \frac{13}{4}\right| + \frac{1}{2} \frac{1}{\sqrt{13}} - \ln \left| \frac{k - \frac{\sqrt{13}}{2}}{k + \frac{\sqrt{13}}{2}}\right| \\
 B_2(z) = - \frac{1}{2} \ln \left|\left(z + \frac{3}{2}\right)^2 - \frac{13}{4}\right| + \frac{1}{2} \frac{1}{\sqrt{13}} \ln \left|\frac{z + \frac{3}{2} - \frac{\sqrt{13}}{2}}{z + \frac{3}{2} + \frac{\sqrt{13}}{2}}\right| \\
 B_2(z) = A_2(s) + C \text{ solutie implicita a ecuatiei in } z \\
 B_2\left(\frac{y}{s}\right) = A_2(s) + C \text{ solutie implicita a ecuatiei in } y \\
B_2\left(\frac{x + 1}{t - 1}\right) = A_2(t - 1) + C \text{ solutie implicita a ecuatiei in } x $$
4. **tema**
5. **tema**

#Ecuatia Bernoulli

**Exercitii**:
1. $x' - \frac{x}{t} = \frac{1}{t^2x^2}$ cu $t,x > 0$
2. $x' = 2xt + tx^2$ cu $t,x \in \mathbb{R}$
3. $x' = xt + t\sqrt{x}$ cu $t \in \mathbb{R}, x \geq 0$
4. $x' - \frac{xt}{t^2 + 1} = (t + 1)x^2$ cu $t,x \in \mathbb{R}$

> $x' = \frac{\operatorname{d}\!x}{\operatorname{d}\!t}$

*Rezolvari*:
1. $$\frac{\operatorname{d}\!x}{\operatorname{d}\!t} = \frac{1}{t^2x^2} + \frac{x}{t} \\
 a(t) = \frac{1}{t}, b(t) = \frac{1}{t^2}, \alpha = - 2 \\
 \frac{\operatorname{d}\!x}{\operatorname{d}\!t} = \frac{1}{t}x + \frac{1}{t^2}x^2 \\
 \frac{\operatorname{d}\ \bar{x}}{\operatorname{d}\!t} = \frac{1}{t} \bar{x} \implies \bar{x}(t) = C e^{A(t)} \\
 \int \frac{1}{t} = \ln t + C \\
 A(t) = \ln t \\
 \bar{x} = C e^{\ln t} = C t \\
 \text{Determinam functia } C : (0, + \infty) \to \mathbb{R} \text{ astfel incat } x(t) = C(t) t \text{ sa verifice ecuatia. } \frac{\operatorname{d}\!x}{\operatorname{d}\!t} = \frac{1}{t^2x^2} + \frac{x}{t} \\
 \frac{\operatorname{d}}{\operatorname{d}\!t}(C(t)t) = \frac{1}{t^2C^2(t)t^2} + \frac{1}{t}C(t)t \\
 C'(t) t + C(t) = \frac{1}{t^4 C^2(t)} + C(t) \\
 \frac{\operatorname{d}\ !C}{\operatorname{d}\!t} = \frac{t}{t^5}\frac{1}{C^2} \\
 a_1(t) = \frac{1}{t^5} , b_1(C) = \frac{1}{C^2} \\
 \frac{1}{C^2} = 0 \text{ nu are solutii} \\
 C^2\operatorname{d}\ !C = \frac{1}{t^5}\operatorname{d}\!t \\
 C^2\operatorname{d}\ !C = \frac{C^3}{3} + C_1 \\
 B_1(c) = \frac{C^3}{3} \\
 \int\frac{1}{t^5}\operatorname{d}\!t = \frac{t^ - 4}{ - 4} + C_1 \\
 A_1(t) = \frac{1}{4t^4} \\
 \frac{C^3}{3} = - \frac{1}{4t^4} + C_1 \\
 C^3 = - \frac{3}{4t^4} + 3 C_1 \\
 C(t) = \sqrt[3]{\frac{ - 3}{4t^4} + 3 C_1}, C_1 \in \mathbb{R} \\
 x(t) = t \sqrt[3]{\frac{ - 3}{4t^4} + 3 C_1}$$



> **NU SE GARANETAZA CORECTITUDINEA SAU COMPLETITUDINEA INFORMATIILOR DE AICI**

> Ai descoperit o greseala? Ai facut o tema si vrei sa o dai si colegilor? Stii cum sa faci ceva sa arate mai bine? Contribuie [direct pe GitHub](https://github.com/Vlaaaaaaad/FMI-public-materials/tree/master/EcuatiiDiferentialeSiCuDerivatePartiale) sau trimite un mail la <mailto:stiu-chestii@vladionescu.me>

> Written with [StackEdit](https://stackedit.io/).
