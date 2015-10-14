
Ecuatii Diferentiale si cu Derivate Partiale
 = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =

[TOC]



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

1. $$ F(x) = \int \left(3 x^2 + \frac{1}{x} - 2\sqrt{x} + \sqrt[3]{x^2}\right) \operatorname{d}\!x \\ F(x) = \int 3 x^2 \operatorname{d}\!x + \int \frac{1}{x} \operatorname{d}\!x - \int 2 \frac{1}{x^2} \operatorname{d}\!x + \int x^{\frac{2}{3}} \operatorname{d}\!x \\ = 3 \frac{x^3}{3} + \ln|x| - 2 \frac{2x^{\frac{3}{2}}}{3} + \frac{3 x^{\frac{5}{3}}}{5} + C \\ = x^3 + \ln x - \frac{4}{3} \sqrt{x^3} + \frac{3}{5}\sqrt[3]{x^5} + C $$

2. $$F(x) = \int(2^x - 2 \frac{1}{3^x}) \operatorname{d}\!x \\ = \int 2^x \operatorname{d}\!x - 2 \int (\frac{1}{3})^x \operatorname{d}\!x \\ = \frac{2^x}{\ln2} - 2 \frac{(\frac{1}{3})^x}{\ln\frac{1}{3}} + C $$

3. $$ F(x) = \int(4 \sin{x} - cos{x}) \operatorname{d}\!x = \\ = 4 \int \sin{x} \operatorname{d}\!x - \int \cos{x} \operatorname{d}\!x \\ = 4 \cos{x} - \sin{x} + C$$

4. $$F(x) = \int\left(\frac{1}{\sin^2 x} + \frac{1}{\cos^2 x}\right) \operatorname{d}\!x = \\ - \cot x + \tan x + C$$

5. $$F(x) = \int \frac{1}{\sin^2 x \cos^2 x} \operatorname{d}\!x = \\ = \int \frac{\sin^2 x + \cos^2 x}{\sin^2 x \cos^2 x} \operatorname{d}\!x \\ = \tan x - \cot x + C$$

6. $$F(x) = \int(\tan x \cot x) \operatorname{d}\!x = \\ = - \ln|\cos x| + \ln| \sin x| + C$$

7. $$F(x) = \int \left(\frac{1}{x^2 + 9} + \frac{1}{x^2 - 9}\right) \operatorname{d}\!x \\ = \frac{1}{3} \arctan \frac{x}{3} + \frac{1}{6} \left|\frac{x - 3}{x + 3}\right| \\ = \frac{1}{3} \arctan \frac{x}{3} + \frac{1}{6} \ln\left(\frac{3 - x}{x - 3}\right) + C$$

8. $$F(x) = \int \left(\frac{1}{\sqrt{x^2 + 9}} \frac{2}{\sqrt{x^2 - 9}} - \frac{1}{\sqrt{36 - x}}\right) \operatorname{d}\!x \\ = \ln (x + \sqrt{x^2 + 9} + \ln \left|x + \sqrt{x^2 - 9}\right|) - \arcsin \frac{x}{6} + C$$

9. $$F(x) = \int \frac{(x^2 + 2) + (x^2 - 2)}{(x^2 + 2)(x^2 - 2)} \operatorname{d}\!x \\ = \int \frac{1}{x^2 - 2} \operatorname{d}\!x + \int \frac{1}{x^2 - 2} \operatorname{d}\!x \\ = \frac{1}{2\sqrt{2}} \ln \left|\frac{x - \sqrt{2}}{x + \sqrt{2}}\right| + \frac{1}{\sqrt{2}} \arctan \frac{x}{\sqrt{2}} + C$$

10. **tema**

11. **tema**

12. $$F(x) = \int \sqrt{1 - x^2} \operatorname{d}\!x \\ = \int x' \sqrt{1 - x^2} \operatorname{d}\!x \\ = x \sqrt{1 - x^2} - \int x\left(\sqrt{1 - x^2}\right)' \operatorname{d}\!x \\ = x \sqrt{1 - x^2} - \int x \frac{ - 2x}{2 \sqrt{1 - x^2}} \operatorname{d}\!x = x \sqrt{1 - x^2} - \int \frac{1 - x^2 - 1}{\sqrt{1 - x^2}} \operatorname{d}\!x \\ = x \sqrt{1 - x^2} - \int \frac{1 - x^2}{\sqrt{1 - x^2}} \operatorname{d}\!x + \int \frac{1}{\sqrt{1 - x^2}} \operatorname{d}\!x \\ = x \sqrt{1 - x^2} - \int \sqrt{1 - x^2} \operatorname{d}\!x + \arcsin x \\ \\ \implies 2\int\sqrt{1 - x^2} \operatorname{d}\!x = x \sqrt{1 - x^2} + \arcsin x + C$$

13. **tema**

14. **tema**

15. $$ F(x) = \int \frac{e}{\sqrt{1 - x^2}} \operatorname{d}\!x \\ \\ \text{Notam } t = 2 \arcsin x \\ \frac{1}{2}\operatorname{d}\!t = \frac{1}{\sqrt{1 - x^2}} \operatorname{d}\!x \\\frac{1}{2} \int e^t \operatorname{d}\!t = \frac{1}{2} e^t + C \\ \implies F(x) = \frac{1}{2} e^{\arcsin x} + C$$

16. $$F(x) = \int \frac{1}{x \sqrt{x^2 - 1}} \\ = \int \frac{1}{x^2 \sqrt{1 - \frac{1}{c^2}}}\operatorname{d}\!x \\ \text{Notam } \frac{1}{x} = t \text{ si } - \frac{1}{x^2}\operatorname{d}\!x = \operatorname{d}\!t \\ = - \int \frac{1}{\sqrt{1 - t^2}}\operatorname{d}\!t = \\ - \arcsin t + C = \\ - \arcsin \frac{1}{x} + C $$

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
1. $$ \text{ Identificam } a(t) = \frac{1}{t^2 - 4} \text { si } b(x) = x^2 - 2x - 8 \\ \text{ Rezolvam } b(x) = 0 \implies x^2 - 2x - 8 = 0 \implies x_1 = 4 \text{ si } x_2 = - 2 \text{ care sunt in domeniu } \implies \text{ avem solutiile } \varphi_1, \varphi_2 : (2, + \infty) \to \mathbb{R} \text{ cu } \varphi_1(t) = 4 \text{ si }\varphi_2(t) = - 2 \\ \text{ Pentru } x \in \mathbb{R} - \{ - 2, 4\} \text{ separam variabilele } \frac{\operatorname{d}\!x}{x^2 - 2x - 8} = \frac{\operatorname{d}\!t}{t^2 - 4} \\ \int \frac{1}{x^2 - 2x - 8}\operatorname{d}\!x = \int \frac{1}{(x - 4)(x + 2)}\operatorname{d}\!x \\ \text{Luam } \frac{1}{(x - 4)(x + 2)} = \frac{A}{x - 4} + \frac{B}{x + 2} \implies A = \frac{1}{6} \text{ si } B = - \frac{1}{6} \\ \implies = \frac{1}{6} \int \frac{1}{x - 4}\operatorname{d}\!x - \frac{1}{6} \int \frac{1}{x + 2}\operatorname{d}\!x \\ = \frac{1}{6} \ln|x - 4| - \frac{1}{6} \ln(x + 2) = \\ \frac{1}{6} \ln \left|\frac{x - 4}{x + 2}\right| + c \implies B(x) = \frac{1}{6} \ln\frac{x - 4}{x + 2} \\ \\ \int\frac{1}{t^2 - 4}\operatorname{d}\!t = \frac{1}{4} \ln \left|\frac{t - 2}{t + 2}\right| + c \\ A(t) = \frac{1}{4} \ln \left|\frac{t - 2}{t + 2}\right| \\ B(x) = A(t) + C \\ \frac{1}{6} \ln \left|\frac{x - 4}{x + 2}\right| = \frac{1}{4} \ln \left|\frac{t - 2}{t + 2}\right| \\ \ln\left|\frac{x - 4}{x + 2}\right| + C = \ln\left|\frac{t - 2}{t + x}\right|^{\frac{3}{2}} + 6C \\ = \frac{x - 4}{x + 2} = \pm \left(\frac{t - 2}{t + 2}\right)^{\frac{3}{2}} e^{6C} = \pm e^{6C}\sqrt{\frac{t - 2}{t + 2}^3} \implies x - 4 = (x - 2) e^{6C} \sqrt{\frac{t - 2}{t + 2}^3} \implies x\left(1 - e^{6C} \sqrt{\frac{t - 2}{t + 2}^3}\right) = 2 e^{6C} \sqrt{\frac{t - 2}{t + 2}^3} + 4 \\ \implies x = \frac{2 e^{6C} \sqrt{\frac{t - 2}{t + 2}^3} + 4}{1 - e^{6C} \sqrt{\frac{t - 2}{t + 2}^3}} \\\text{ Deci avem multimea solutiilor formata din } x = \frac{2 e^{6C} \sqrt{\frac{t - 2}{t + 2}^3} + 4}{1 - e^{6C} \sqrt{\frac{t - 2}{t + 2}^3}} \text{ si } \varphi_1, \varphi_2 : (2, + \infty) \to \mathbb{R} \text{ cu } \varphi_1(t) = 4 \text{ si }\varphi_2(t) = - 2$$
2. **tema**
3. **tema**
4. **tema**
5. **tema**

#Ecuatii diferentiale omogene

**Exercitiu**: Sa se determine multimea solutiilor ecuatiilor urmatoare:
1. $\frac{\operatorname{d}\!x}{\operatorname{d}\!t} = \frac{2xt}{x^2 - t^2}$ cu $ x \in ( -1,1) \text{ si } t \in(2, 10)$
2. $\frac{\operatorname{d}\!x}{\operatorname{d}\!t} = \frac{x}{t} - e^{\frac{x}{t}}$ cu $, t > 0, x \in \mathbb{R}$
3. $\frac{\operatorname{d}\!x}{\operatorname{d}\!t} = \frac{t^2x + x^3}{t^3}$ cu $, t > 0, x \in \mathbb{R}$
4. $\frac{\operatorname{d}\!x}{\operatorname{d}\!t} = \frac{x^2}{t^2} = \frac{t}{x}$, cu $t,x > 0$

*Rezolvari*:
1. $$ f(t,x) = \frac{2xt}{x^2 - t^2} \\ f(\alpha t, \alpha x) = \frac{2\alpha^2xt}{\alpha^2x^2 - \alpha^2t^2} = \frac{2xt}{x^2 - t^2} = f(x, t) \implies \text{ ecuatia este omogena} \\
\text{Facem schimbarea de variabila } y(t) = \frac{x(t)}{t} \implies x = ty \\ \text{Ecuatia devine, deci } \frac{d}{\operatorname{d}\!t}(ty) = \frac{2t^2y}{t^2y^2 - t^2} \implies y + t \frac{\operatorname{d}\!y}{\operatorname{d}\!t} = \frac{2y}{y - 1} \implies \frac{\operatorname{d}\!y}{\operatorname{d}\!t} = \left(\frac{2y}{y^2 - 1} - y\right)\frac{1}{t} \text{ care este ecuatie cu variabile separabile} \\ = \frac{\operatorname{d}\!y}{\operatorname{d}\!t} = \left(\frac{3y - y^3}{y^2 - 1}\right)\frac{1}{t} \\ \text{Avem } a(t) = \frac{1}{t} \text{ si } b(y) = \frac{3y - y^3}{y^2 - 1} \text{ unde } y \in \left( - \frac{1}{2}, \frac{1}{2}\right) \text{ si } t \in (2, 10) \\
\frac{3y - y^3}{y^2 - 1} = 0 \implies y(3 - y^2) = 0 \implies \text{ Solutia stationara } y = 0 \implies \varphi_1 :(2, 10) \to \mathbb{R}, \varphi_1(t) = 0 \text{ solutie stationara pentru ecuatia in } y \implies x_1(t) = 0 \implies t = 0 \\
\text{Pentru } y \neq 0 \frac{y^2 - 1}{y(3 - y^2)}\operatorname{d}\!y = \frac{1}{t}\operatorname{d}\!t \\ \int\frac{y^2 - 1}{ - y^3 + 3y}\operatorname{d}\!y \text{ integrala care o rezolvam prin schimbare de variabila } \\ z = - y^3 + 3y \implies dz = - 3(z^2 - 1)\operatorname{d}\!y \\ - \frac{1}{3} \int \frac{1}{z} dz = - \frac{1}{3} \ln |z| + C \\ \int\frac{y^2 - 1}{ - y^3 + 3y}\operatorname{d}\!y = - \frac{1}{3} \ln | - y^3 + 3y| + C \\ \implies B(y) = - \frac{1}{3} \ln | - y^3 + 3y| \text{ si } A(t) = \ln|t| \\ B(y) = A(t) + C \\ - \frac{1}{3} \ln | - y^3 + 3y| = \ln t + C \\ - \frac{1}{3} \ln \left| - \frac{x^3}{t^3} + 3\frac{x}{t}\right| = \ln t + C$$
2. **tema**
3. **tema**
4. **tema**

#Ecuatii diferentiale liniare

**Exercitiu**: Sa se determine multimea solutiilro ecuatiilor:
1. $\frac{\operatorname{d}\!x}{\operatorname{d}\!t} = \frac{2t}{t^2 + 1}x + 2t - 1$, cu $t,x \in \mathbb{R}$
2. $\frac{\operatorname{d}\!x}{\operatorname{d}\!t} = (1 + \tan^2 t)x + \frac{1}{\cos^2 t}$, cu $t \in (0, \frac{\pi}{2})$
3. $\frac{\operatorname{d}\!x}{\operatorname{d}\!t} = 2xt - te^{t^2}$, cu $t \in \mathbb{R}$
4. $\frac{\operatorname{d}\!x}{\operatorname{d}\!t} = \frac{1}{\sqrt{t^2 + 1}}x + t(t + \sqrt{t^2 + 1})$, cu $t \in \mathbb{R}$

*Rezolvari*:
1. $$a(t) = \frac{2t}{t^2 + 1} \text{ si } b(t) = 2t - 1 \\ \frac{d \bar{x}}{\operatorname{d}\!t} = \frac{2t}{t^2 + 1}\bar{x} \implies \bar{x}(t) = C e^{A(t)}\\ \int \frac{2t}{t^2 + 1}\operatorname{d}\!t = \int \frac{(t^2 + 1)'}{t^2 + 1}\operatorname{d}\!t = \ln( t^2 + 1) + C \implies A(t) = \ln (t^2 + 1) \\ \implies \bar{x} = C e^{\ln( t^2 + 1)} = C (t^2 + 1) \\ \text{Aplicam metoda variatiei constantelor. Determinam } C: \mathbb{R} \to \mathbb{R} \text{ astfel incat } x(t) = C(t) (t^2 + 1) \text{ sa verifice ecuatia data initial} \\ \frac{dC(t)(t^2 + 1)}{\operatorname{d}\!t} = \frac{2t}{t^2 + 1} (C(t)(t^2 + 1)) + 2t - 1\implies C(t)' (t^2 + 1) + C(t)(t^2 + 1)' = 2tC(t) = 2t - 1 \implies C(t)' = \frac{2t - 1}{t^2 - 1} \implies C(t) = \int \frac{2t - 1}{t^2 - 1}\operatorname{d}\!t = \ln(t^2 + 1) - \arctan(t) + C_1 \\ \implies x(t) = \left(\ln(t^2 + 1) - \arctan(t) + C_1\right) (t^2 + 1)$$
2. **tema**
3. **tema**
4. **tema**

> Written with [StackEdit](https://stackedit.io/).
