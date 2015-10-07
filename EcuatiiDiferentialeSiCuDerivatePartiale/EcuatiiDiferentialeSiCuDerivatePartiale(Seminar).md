
Ecuatii Diferentiale si cu Derivate Partiale
==================================



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
10. $f(x) = x \ln(x)$, cu $x > 0$
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

1. $$ F(x) = \int(3 x^2 + \frac{1}{x} - 2\sqrt{x} + \sqrt[3]{x^2}) \operatorname{d}\!x \\ F(x) = \int 3 x^2 \operatorname{d}\!x + \int \frac{1}{x} \operatorname{d}\!x - \int 2 \frac{1}{x^2} \operatorname{d}\!x + \int x^{\frac{2}{3}} \operatorname{d}\!x \\ = 3 \frac{x^3}{3} + \ln|x| - 2 \frac{2x^{\frac{3}{2}}}{3} + \frac{3 x^{\frac{5}{3}}}{5} + C \\ =x^3 + \ln x - \frac{4}{3} \sqrt{x^3} + \frac{3}{5}\sqrt[3]{x^5} + C $$

2. $$F(x) = \int(2^x - 2 \frac{1}{3^x}) \operatorname{d}\!x \\ = \int 2^x \operatorname{d}\!x - 2 \int (\frac{1}{3})^x \operatorname{d}\!x \\ = \frac{2^x}{\ln2} - 2 \frac{(\frac{1}{3})^x}{\ln\frac{1}{3}} + C $$

3. $$ F(x) = \int(4 \sin{x} - cos{x}) \operatorname{d}\!x = \\ = 4 \int \sin{x} \operatorname{d}\!x - \int \cos{x} \operatorname{d}\!x \\ = 4 \cos{x} - \sin{x} + C$$

4. $$F(x) = \int(\frac{1}{\sin^2 x} + \frac{1}{\cos^2 x}) \operatorname{d}\!x = \\ - \cot x + \tan x + C$$

5. $$F(x) = \int \frac{1}{\sin^2 x \cos^2 x} \operatorname{d}\!x = \\ = \int \frac{\sin^2 x + \cos^2 x}{\sin^2 x \cos^2 x} \operatorname{d}\!x \\ = \tan x - \cot x + C$$

6. $$F(x) = \int(\tan x \cot x) \operatorname{d}\!x = \\ = - \ln|\cos x| + \ln| \sin x| + C$$

7. $$F(x) = \int (\frac{1}{x^2 + 9} + \frac{1}{x^2 - 9}) \operatorname{d}\!x \\ = \frac{1}{3} \arctan \frac{x}{3} + \frac{1}{6} |\frac{x - 3}{x + 3}| \\ =\frac{1}{3} \arctan \frac{x}{3} + \frac{1}{6} \ln(\frac{3 - x}{x - 3}) + C$$

8. $$F(x) = \int (\frac{1}{\sqrt{x^2 + 9}} \frac{2}{\sqrt{x^2 - 9}} - \frac{1}{\sqrt{36 - x}}) \operatorname{d}\!x \\ = \ln (x + \sqrt{x^2 + 9} + \ln |x + \sqrt{x^2 - 9}|) - \arcsin \frac{x}{6} + C$$

9. $$F(x) = \int \frac{(x^2 + 2) + (x^2 - 2)}{(x^2 + 2)(x^2 - 2)} \operatorname{d}\!x \\ = \int \frac{1}{x^2 - 2} \operatorname{d}\!x + \int \frac{1}{x^2 - 2} \operatorname{d}\!x \\ = \frac{1}{2\sqrt{2}} \ln |\frac{x - \sqrt{2}}{x + \sqrt{2}}| + \frac{1}{\sqrt{2}} \arctan \frac{x}{\sqrt{2}} + C$$

10. **tema**

11. **tema**

12. $$F(x) = \int \sqrt{1 - x^2} \operatorname{d}\!x \\ = \int x' \sqrt{1 - x^2} \operatorname{d}\!x \\ = x \sqrt{1 - x^2} - \int x(\sqrt{1 - x^2})' \operatorname{d}\!x \\ = x \sqrt{1 - x^2} - \int x \frac{ - 2x}{2 \sqrt{1 - x^2}} \operatorname{d}\!x = x \sqrt{1 - x^2} - \int \frac{1 - x^2 - 1}{\sqrt{1 - x^2}} \operatorname{d}\!x \\ = x \sqrt{1 - x^2} - \int \frac{1 - x^2}{\sqrt{1 - x^2}} \operatorname{d}\!x + \int \frac{1}{\sqrt{1 - x^2}} \operatorname{d}\!x \\= x \sqrt{1 - x^2} - \int \sqrt{1 - x^2} \operatorname{d}\!x + \arcsin x \\ \\ \implies 2\int\sqrt{1 - x^2} \operatorname{d}\!x = x \sqrt{1 - x^2} + \arcsin x + C$$

13. **tema**

14. **tema**

15. $$ F(x) = \int \frac{e}{\sqrt{1 - x^2}} \operatorname{d}\!x \\ \\ \text{Notam } t = 2 \arcsin x \\ \frac{1}{2}dt = \frac{1}{\sqrt{1 - x^2}} \operatorname{d}\!x \\\frac{1}{2} \int e^t dt = \frac{1}{2} e^t + C \\ \implies F(x) = \frac{1}{2} e^{\arcsin x} + C$$

16. **tema**

17. **tema**

18. **tema**

19. **tema**

20. **tema**

> Written with [StackEdit](https://stackedit.io/).
