Metode de Dezvotare Software
=========================

[TOC]

#Procese de dezvoltare software

##Procesul de dezvoltare cascada

Modelul cascadă trebuie folosit atunci cand cerințele sunt bine înțelese și când este necesar un proces de dezvoltare clar și riguros.

###Etape
- **analiza și definirea cerințelor**: Sunt stabilite serviciile, constrângerile și scopurile sistemului prin consultare cu utilizatorul. (ce trebuie să facă sistemul).
- **design**: Se stabilește o arhitectură de ansamblu și funcțiile sistemului software pornind de la cerințe. (cum trebuie să se comporte sistemul).
- **implementare și testare unitară**: Designul sistemului este transformat într-o mulțime de programe (unități de program); testarea unităților de program verifică faptul că fiecare unitate de program este conformă cu specificația.
- **integrare și testare sistem**. Unitățile de program sunt integrate și testate ca un sistem complet; apoi acesta este livrat clientului.
- **operare și mentenanță**. Sistemul este folosit în practică; mentenanța include: corectarea erorilor, îmbunătățirea unor servicii, adăugarea de noi funcționalități.


###Avantaje
- fiecare etapă nu trebuie sa înceapă înainte ca precedenta să fie încheiată.
- fiecare fază are ca rezultat unul sau mai multe documente care trebuie “aprobate”
- bazat pe modele de proces folosite pentru productia de hardware

Avantaj: proces bine structurat, riguros, clar; produce sisteme robuste


###Dezavantaje
- dezvoltarea unui sistem software nu este de obicei un proces liniar; etapele se întrepătrund metoda oferă un punct de vedere static asupra cerințelor
- schimbarile cerințelor nu pot fi luate în considerare după aprobarea specificației
- nu permite implicarea utilizatorului după aprobarea specificației

##Procesul de dezvoltare incremental

###Etape
- sunt identificate cerințele sistemului la nivel înalt, dar, în loc de a dezvolta și livra un sistem dintr-o dată, dezvoltarea și livrarea este realizată în părți (incremente), fiecare increment încorporând o parte de funcționalitate.
- cerințele sunt ordonate după priorități, astfel încât cele cu prioritatea cea mai mare fac parte din primul increment, etc.
- după ce dezvoltarea unui increment a început, cerințele pentru acel increment sunt înghețate, dar cerințele pentru noile incremente pot fi modificate.

###Avantaje
- clienții nu trebuie să aștepte până ce întreg sistemul a fost livrat pentru a beneficia de el. Primul increment include cele mai importante cerințe, deci sistemul poate fi folosit imediat.
- primele incremente pot fi prototipuri din care se pot stabili cerințele pentru următoarele incremente.
- se micșorează riscul ca proiectul să fie un eșec deorece părțile cele mai importante sunt livrate la început.
- deoarece cerințele cele mai importante fac parte din primele incremente, acestea vor fi testate cel mai mult.

###Dezavantaje
- dificultăți în transformarea cerințelor utilizatorului in incremente de mărime potrivită.
- procesul nu este foarte vizibil pentru utilizator (nu e suficientă documentație între iterații)
- codul se poate degrada în decursul ciclurilor

###Exemple
- Unified Process cu varianta Rational Unified Process
- Peocese de dezvoltare in spurala introduse de Boehm
- Agile

##Metodologii agile

- se concentrează mai mult pe cod decât pe proiectare
- se bazează pe o abordare iterativă de dezvoltare de software
- produc rapid versiuni care funcționează, acestea evoluând repede pentru a satisface cerințe în schimbare.

###Cele 12 principii

1. Prioritatea noastră este satisfacţia clientului prin livrarea rapidă şi continuă de software valoros.
2. Schimbarea cerinţelor este binevenită chiar şi într-o fază avansată a dezvoltării. Procesele agile valorifică
schimbarea în avantajul competitiv al clientului.
3. Livrarea de software funcţional se face frecvent, de preferinţă la intervale de timp cât mai mici, de la câteva
săptămâni la câteva luni.
4. Clienții şi dezvoltatorii trebuie să colaboreze zilnic pe parcursul proiectului.
5. Construieşte proiecte în jurul oamenilor motivaţi. Oferă-le mediul propice şi suportul necesar şi ai încredere că obiectivele vor fi atinse.
6. Cea mai eficientă metodă de a transmite informaţii înspre şi în interiorul echipei de dezvoltare este comunicarea faţă în faţă.
7. Software funcţional este principala măsură a progresului.
8. Procesele agile promovează dezvoltarea durabilă. Sponsorii, dezvoltatorii şi utilizatorii trebuie să poată
menţine un ritm constant pe termen nedefinit.
9. Atenţia continuă pentru excelenţă tehnică şi design bun îmbunătăţeşte agilitatea.
10. Simplitatea — arta de a maximiza cantitatea de muncă nerealizată — este esenţială.
11. Cele mai bune arhitecturi, cerinţe şi design se obțin de către echipe care se auto-organizează.
12. La intervale regulate, echipa reflectează la cum să devină mai eficientă, apoi îşi adaptează şi ajustează omportamentul în consecinţă.

###Aplicabilitate
- companii mici sau mijlocii
- software pentru uz intern

###Dezavantaje
- dificultatea de a păstra interesul clienților implicați în acest procesul de dezvoltare pentru perioade lungi
- membrii echipei nu sunt întotdeauna potriviți pentru implicarea intensă care caracterizează metodele agile
- prioritizarea modificărilor poate fi dificilă atunci când există mai multe părți interesate
- menținerea simplității necesită o muncă suplimentară
- contractele pot fi o problemă ca și în alte metode de dezvoltare incrementală

###Exemple
- Extreme Programming (XP) - 1996
- Adaptive Software Development (ASD)
- Test-Driven Development (TDD)
- Feature Driven Development (FDD)
- Behavior Driven Developement (BDD)
- Crystal Clear
- Scrum - 1995

##Extreme programming

- noile versiuni pot fi construite de mai multe ori pe zi;
- acestea sunt livrate clienților la fiecare 2 săptămâni;
- toate testele trebuie să fie executate pentru fiecare versiune și o versiune e livrabilă doar în cazul în care testele au rulat cu succes.

###Valorile XP
- Simplitate (Simplicity)
- Comunicare (Communication)
- Reacţie (Feedback)
- Curaj (Courage)
- Respect (Respect)

###Practici
- procesul de planificare (The Planning Game)
- client disponibil pe tot parcursul proiectului (On-Site Customer)
- implementare treptată (Small Releases)
- limbaj comun (Metaphor)
- integrare continuă (Continuous Integration)
- proiectare simplă (Simple Design)
- testare (Testing)
- rescriere de cod pentru îmbunătățire (Refactoring)
- programare în pereche (Pair Programming)
- drepturi colective (Collective Ownership)
- 40 ore/săptămână (40-Hour Week)
- standarde de scriere a codului (Coding Standard)

###Programrea in 2
- tot codul este scrisă de două persoane folosind un singur calculator
- sunt două roluri în această echipă: Unul scrie cod și celalălalt îl ajută gândindu-se la diverse posibilități de îmbunătățire.

####Avantajele programrii in 2
- susține ideea de proprietate și responsabilitate în echipă pentru sistemul colectiv.
- proces de revizuire îmbunătățit, deoarece fiecare linie de cod este privită de către cel puțin două persoane (“four eyes principle”).
- ajută la îmbunătățirea codului.
- transfer de cunoștințe și training implicit (important când membrii echipei se schimbă)
- “more fun”?


###Avantaje
- soluţie bună pentru proiecte mici
- programare organizată
- reducerea numărului de greşeli
- clientul are control (de fapt, toată lumea are control, pentru că toţi sunt implicaţi în mod direct)
- dispoziție la schimbare chiar în cursul dezvoltării

###Dezavantaje
- nu este scalabilă
- necesită mai multe resurse umane ”pe linie de cod”(d.ex. programare în doi)
- implicarea clientului în dezvoltare (costuri suplimentare și schimbări prea multe)
- lipsa documentelor “oficiale”
- necesită experienţă în domeniu (“senior level” developers)
- poate deveni uneori o metoda ineficientă (rescriere masivă de cod)


##SCRUM
- un proprietar de produs creează o listă de sarcini numită “backlog”
- apoi se planifică ce sarcini vor fi implementate în următoarea iterație, numită “sprint”.
- această listă de sarcini se numește “sprint backlog”.
- sarcinile sunt rezolvate în decursul unui sprint care are rezervată o perioadă relativ scurtă de 2-4 săptămâni
- echipa se întrunește zilnic pentru a discuta progresul (“daily scrum”). Ceremoniile sunt conduse de un “scrum master”.
- la sfârșitului sprintului, rezultatul ar trebui să fie livrabil (adică folosit de client sau vandabil).
- după o analiză a sprintului, se reiterează.


##Comparatie de final
Metode agile | Metode cascadă | Metode formale
-------------|----------------|---------------
criticalitate scăzută | criticalitate ridicată | criticalitate extremă
dezvoltatori seniori | dezvoltatori juniori | dezvoltatori seniori
cerințe in schimbare | cerințe relativ fixe | cerințe limitate
echipe mici | echipe mari | echipe mici
cultură orientată spre schimbare | cultură orientată spre ordine | cultură orientată spre calitate și precizie

#Z

> **AICI NU SE AFLA DECAT CHESTIILE CE ERAU MARCATE CU "DE RETINUT" IN CURS.**

Este bazat pe:
- logica de ordin 1, cu predicate
- teoria multimiilor
- notatii auxiliare

##Specificatii formale
O specificație formală:
-folosește notații matematice pentru a descrie într-un model precis ce proprietăți trebuie să aibă un sistem
-descrie ce trebuie să facă sistemul și nu cum
-independent de cod
-poate fi folosită pentru înțelegerea cerințelor și analiza lor (uneori se poate si genera cod dintr-o specificație suficient de precisă)

În Z descompunerea unei specificații se face în mai multe piese numite *scheme*.

##Operatori logici
- $\neg$ - negatie
- $\wedge$- conjunctie
- $\vee$- disjunctie
- $\implies$ - implicatie
- $\iff$ - echivalenta

##Egalitate
- $=$ - egalitate

##Cuantificare
$Q x_1: S_1 ; \dots x_n : S_n | p \bullet q$ unde $Q$ este $\forall, \exists, \exists_1$
Sensul este $\forall x_1: S_1 ; \dots x_n : S_n ( p \implies q)$

##Multimi

###Multimi prin enumerare
$\{ e_1, \dotsc, e_n\}$ unde elementele au tipuri compatibile

###Multimi definite prin proprietati
$\{ x: T | pred(x) \bullet expr(x) \}$ reprezinta toate elementele care rezulta evaluand $expr(x)$ pentru toti $x$ de tip $T$ care starisfac $pred(x)$.

###Operatii pe multimi
- apartenenta
- submultime
- Operatorul de generare a submultimilor
- Produs cartezian
- reuniune
- Intersectie
- Diferenta multimilor

##Tipuri
Definitii de noi tipuri: `weekDay ::= mon | tue | wed | thu | fri | sat | sun`

##Variabile
Se decalara cu $x:\mathbb{Z}$.

###Relatii
####Relatii pe tipuri de multimi
$S \leftrightarrow T$ este multimea relatiilor intre multimiile $S$ si $T$

$a \rightarrowtail b$ denota perechea $(a, b)$, daca $(a, b) \in S \leftrightarrow T $

####Operatii pe relatii
- Domeniu $\text{domR} = \{ a : S; b : T | a \rightarrowtail b \in R \bullet a \}$
- Codomeniu $\text{ranR} = \{ a : S; b : T | a \rightarrowtail b \in R \bullet b \}$
- Relatia inversa
- Compunerea
- Inchideri

##Functii

###Notatii
In loc de $\leftrightarrow$ folosim notatiile:
- $\rightarrow$ pentru functii totale
- $\nrightarrow$ pentru functii partiale

#JML

E un limbaj de specificație formală pentru Java. Comentarii in codul sursa descriu formal cum trebuie sa se comporte un modul, prevenind ambiguitatea. Se foloseste de e invarianți, pre- și postcondiții.

```
public class ATM
{
	// fields:
	private BankCard insertedCard = null;
	private int wrongPINCounter = 0;
	private boolean customerAuthenticated = false;

	// methods:
	public void insertCard (BankCard card) { ... }
	public void enterPIN (int pin) { ... }
	public int accountBalance () { ... }
	public int withdraw (int amount) { ... }
	public void ejectCard () { ... }
}
```

```
/*@ public normal_behavior
  @ requires !customerAuthenticated;
  @ requires pin == insertedCard.correctPIN;
  @ ensures customerAuthenticated;
  @*/
public void enterPIN (int pin) {...}
```

```
/*@ public normal_behavior
  @ requires !customerAuthenticated;
  @ requires pin == insertedCard.correctPIN;
  @ ensures customerAuthenticated;
  @
  @ also
  @
  @ public normal_behavior
  @ requires !customerAuthenticated;
  @ requires pin != insertedCard.correctPIN;
  @ requires wrongPINCounter < 2
  @ ensures wrongPINCounter == \old(wrongPINCounter) + 1;
  @*/
public void enterPIN (int pin) {...}
```

##Notatii
- `!a` not a
- `a && b` a si b
- `a | b` a sau b
- `a ==> b` a implica b
- `a <==> b` a e echivalent cu b
- `(\forall T x; a)` pentru toți x de tip T, a este adevărat
- `(\exists T x; a)` există x de tip T, astfel încât a este adevărat
- `(\forall T x; b; a)` pentru toți x de tip T care satisfac b, a este adevărat
- `(\exists T x; b; a)` există x de tip T care satisfac b, astfel încât a este adevărat

###Exemple
Variabila $m$ are valoarea elementului maxim din vectorul $vec$:
```
(\forall int i; 0 <= i && i < vec.length; m >= vec[i])
&& (vec.length > 0 ==>
    (\exists int i; 0 <= i && i < vec.length; m == vec[i]))
```

#Cerinte software

Cerinţele sunt descrieri ale serviciilor oferite de sistem şi a constrângerilor sub care acesta va fi dezvoltat și va opera. Cerinţele pornesc de la afirmaţii abstracte de nivel înalt până la specificaţii matematice funcţionale detaliate (d.ex. Z)

##Cerinte functionale
Sunt afirmaţii despre servicii pe care sistemul trebuie să le conţină, cum trebuie el să răspundă la anumite intrări şi cum să reacţioneze în anumite situaţii.

- Descriu funcţionalitatea sistemului şi serviciile oferite
- Depind de tipul softului, de utilizatorii avuţi în vedere şi de tipul sistemului pe care softul este utilizat
- Cerinţele funcţionale ale utilizatorilor pot fi descrieri de ansamblu dar cerinţele funcţionale ale sistemului trebuie să descrie în detaliu serviciile oferite

##Cerinte non-functionale
Sunt constrângeri ale serviciilor și funcţiilor oferite de sistem cum ar fi: constrângeri de timp, constrângeri ale procesului de dezvoltare, standarde, etc.

- Definesc proprietăţi şi constrângeri ale sistemului, ca de exemplu: fiabilitatea, timpul de răspuns, cerinţele pentru spaţiul de stocare, cerinţe ale sistemului de intrări-ieşiri etc.
- La întocmirea lor se va ţine cont de un anumit mediu de dezvoltare, limbaj de programare sau metodă de dezvoltare
- Cerinţele non-funcţionale pot fi mai critice decât cele funcţionale. Dacă nu sunt îndeplinite, sistemul nu va fi util scopului în care a fost dezvoltat.

####Tipuri
- **Cerinţe ale produsului**: Cerinţe care specifică un anumit comportament al produsului, ca de exemplu: gradul de utilitate, eficiență (viteză de execuţie), fiabilitate, portabilitate etc.
- **Cerinţe legate de organizare**: Cerinţe care sunt consecinţe ale politicilor de organizare a producţiei software, ca de exemplu: standarde utilizate, cerinţe de implementare, cerințe de livrare etc.
- **Cerinţe externe**: Cerinţe asociate unor factori externi, ca de exemplu: cerinţe de interoperabilitate, cerinţe legislative etc.



##Tipuri de cerinte

###Cerinte utilizator

- afirmaţii în limbaj natural şi diagrame a serviciilor oferite de sistem laolaltă cu constrângerile operaţionale.
- scrise pentru clienţi
- trebuie să descrie cerinţe funcţionale şi non-funcţionale într-o manieră în care sunt pe înţelesul utilizatorilor sistemului care nu deţin cunoştinţe tehnice detaliate.

Se adreseaza:
- utilizatorilor finali
- inginerilor clientului
- proiectanţilor de sistem
- managerilor clientului
- managerilor de contracte


###Cerintele sistemului
- un document structurat stabilind descrierea detaliată a funcţiilor sistemului, serviciile oferite şi constrângerile operaţionale.
- poate fi parte a contractului cu clientul.

Se adreseaza:
- utilizatorilor finali
- inginerilor clientului
- proiectanţilor de sistem
- programatorilor

##Structura documentului de specificare a cerintelor
- Prefaţă
- Introducere
- Glosar de termeni
- Definirea cerinţelor utilizatorilor
- Arhitectura sistemului
- Specificarea cerinţelor de sistem
- Modelarea sistemului
- Evoluţia sistemului
- Anexe
- Index

##Posibilitati de reprezentare a cerintelor
- **limbaj natural**: Cerințele sunt organizate în paragrafe numerotate.
- **limbaj natural structurat**: utilizarea unui format standard sau a machetelor în conjuncţie cu limbajul natural
- **limbaj de proiectare**: asemănător unui limbaj de programare dar mai abstract (nu prea se mai folosește)
- **limbaj grafic suplimentat cu adnotări textuale** (mai ales pentru cerinţe sistem), cum ar fi UML.
- **specificaţii matematice**: concepte matematice lucrând cu maşini cu stări finite sau relații peste mulțimi - Z, B. Elimină ambiguităţile, dar pot fi dificil de înţeles.


#UML
UML este un limbaj grafic pentru vizualizarea, specificarea, construcția și documentația necesare pentru dezvoltarea de sisteme software (orientate pe obiecte) complexe.

![Cele 14 tipuri de diagrame UML 2.0](https://upload.wikimedia.org/wikipedia/commons/e/ed/UML_diagrams_overview.svg)


##Motive pentru care UML nu e folosit
- Nu este cunoscută notația UML
- UML e prea complex (14 tipuri de diagrame)
- Notațiile informale sunt suficiente
- Documentarea arhitecturii nu e considerată importantă

##Motive pentru care e folosit UML
- UML este standardizat
- existența multor tool-uri
- flexibilitate: modelarea se poate adapta la diverse domenii folosind “profiluri” și “stereotipuri”
- portabilitate: modelele pot fi exportate în format XMI (XML Metadata Interchange) și folosite de diverse tool-uri
- se poate folosi doar o submulțime de diagrame
- arhitectura software e importantă

##Tipuri de folosire
- diagrame UML pentru a schița doar diverse aspecte ale sistemului
- diagrame UML care apar în documente (uneori după ce a fost făcută implementarea)
- diagrame UML foarte detaliate sunt descrise în tool-uri înainte de implementare și apoi cod este generat pe baza acestor modele

##Diagrama cazurilor de utilizare

###Elemente
- Caz de utilizare (componentă a sistemului): unitate coerentă de funcționalitate sau task; reprezentată printr-un
oval.
- Actor (utilizator al sistemului): element extern care interacționează cu sistemul; reprezentat printr-o figurină
- Asociații de comunicare: legături între actori și cazuri de utilizare; reprezentate prin linii solide
- Descrierea cazurilor de utilizare: un document (narativ) care descrie secvența evenimentelor pe care le execută un actor pentru a efectua un caz de utilizare

####Actorii
- Actorii **primari** sunt cei pentru care folosirea sistemului are o anumită valoare (beneficiari); de exemplu ClientCarte. De obicei, actorii principali inițiază cazul de utilizare.
- Actorii **secundari** sunt cei cu ajutorul cărora se realizează cazul de utilizare; de exemplu un sistem pentru gestiunea unei biblioteci. Actorii secundari nu inițiază cazul de utilizare, dar participă la realizarea acestuia.


####Cazuri de utilizare
- Un caz de utilizare este o unitate coerentă de funcționalitate.
- Un caz de utilizare înglobează un set de cerințe ale sistemului care reies din specificațiile inițiale și sunt rafinate pe parcurs.
- Cazurile de utilizare pot avea complexități diferite; de exemplu “Împrumută carte” și “Caută carte”.

####Frontiera sistemului
- este important de a defini frontiera sistemului astfel încât să se poată face distincție între mediul extern și mediul intern (responsabilitățile sistemului)
- ea poate avea un nume
- cazurile de utilizare sunt înăuntru, iar actorii în afară.
- daca se dezvoltă un sistem software, frontiera se stabilește de obicei la frontiera dintre hardware și software.
- trasarea frontierei este opțională; trebuie însă indicată atunci când există mai multe subsisteme, pentru a le delimita clar.

####Relatia << include >>
- Dacă două sau mai multe cazuri de utilizare au o componentă comună, aceasta poate fi reutilizată la definirea fiecăruia dintre ele.
- În acest caz, componenta refolosită este reprezentată tot printr-un caz de utilizare legat prin relaţia « include » de fiecare dintre cazurile de utilizare de bază.
- Practic, relaţia « include » arată că secvenţa de evenimente descrisă în cazul de utilizare inclus se găseşte şi în secvenţa de evenimente a cazului de utilizare de bază.

####Relatia << extend >>
Relaţia « extend » se foloseşte pentru separarea diferitelor comportamente ale cazurilor de utilizare.
Dacă un caz de utilizare conţine două sau mai multe scenarii semnificativ diferite (în sensul că se pot întâmpla diferite lucruri în funcţie de anumite circumstanţe), acestea se pot reprezenta ca un caz de utilizare principal şi unul sau mai multe cazuri de utilizare excepţionale.

####Relatia de generalizare
Acest tip de relaţie poate exista atât între două cazuri de utilizare cât şi între doi actori.

- generalizarea între cazuri de utilizare indică faptul că un caz de utilizare poate moşteni comportamentul definit în alt caz de utilizare.
- generalizarea între actori arată că un actor moşteneşte structura şi comportamentul altui actor.

“Generalizarea” este asemănătoare cu relația « extend ».

De obicei, folosim « extend » dacă descriem un comportament excepţional care depinde de o condiţie testată în timpul execuţiei şi “generalizarea” pentru a evidenţia o anumită versiune a unui task.



##Diagrame de secvente
Este tipul de diagramă UML care pune în evidență transmiterea de mesaje (sau apeluri de metode) de-a lungul timpului. Seamana cu MSC.

###Elemente
- Obiectele şi actorii sunt reprezentaţi la capătul de sus al unor linii punctate, care reprezintă linia de viaţă a obiectelor.
- Scurgerea timpului este reprezentată în cadrul diagramei de sus în jos.
- Un mesaj se reprezintă printr-o săgeată de la linia de viaţă a obiectului care trimite mesajul la linia de viaţă a celui care-l primeşte.
- Timpul cât un obiect este activat este reprezentat printr-un dreptunghi subţire care acoperă linia sa de viaţă.
- Opţional, pot fi reprezentate răspunsurile la mesaje printr-o linie punctată, dar acest lucru nu este necesar.

####Mesaje
- sincron (sau apel de metodă). Obiectul pierde controlul până primește răspuns
- de răspuns: răspunsuri la mesajele sincrone; reprezentarea lor este opţională.
- asincron: nu așteaptă răspuns, cel care trimite mesajul rămânând activ (poate trimite alte mesaje).

##Diagrame de clase
Diagramele de clase sunt folosite pentru a specifica structura statică a sistemului, adică:  ce clase există în sistem şi  care este legătura dintre ele.

În UML, o clasă este prezentată printr-un dreptunghi în interiorul căruia se scrie numele acesteia. Fiecare clasă este caracterizată printr-o mulţime de atribute şi operaţii.

###Atribute de vizibilitate
- publice ``+``: pot fi accesate de orice altă clasă
- private ``-``: nu pot fi accesate de alte clase
- protejate ``#``: pot fi accesate doar de subclasele care descind din clasa respectivă
- package ``~``:  pot fi accesate doar de clasele din același “package”

###Operatii
Semnătura unei operaţii este formată din: numele operației,  numele şi tipurile parametrilor (dacă e cazul) şi tipul care trebuie returnat (dacă este cazul).

###Relatii intre clase
- asociere. Asocierile sunt legături structurale între clase.  Între două clase există o asociere atunci când un obiect dintr-o clasă interacționează cu un obiect din cealaltă clasă. După cum clasele erau reprezentate prin substantive, asocierile sunt reprezentate prin verbe.
- generalizare. Generalizare: relație între un lucru general (numit superclasă sau părinte, ex. Abonat) și un lucru specializat (numit subclasă sau copil, ex. AbonatPremium)
- dependență
- realizare

##Diagrame de stari
Diagramele de stare (numite şi maşini de stare sau statecharts) descriu dependenţa dintre starea unui obiect şi mesajele pe care le primeşte sau alte evenimente recepţionate.

###Elemente
- stări, reprezentate prin dreptunghiuri cu colţuri rotunjite. O stare este o mulţime de configuraţii ale obiectului care se comportă la fel la apariţia unui eveniment.
- tranziţii între stări, reprezentate prin săgeţi
- evenimente care declanşează tranziţiile dintre stări
- cel mai des întâlnite evenimente sunt mesajele primite de către obiect.
- semnul de început, reprezentat printr-un un disc negru dincare porneşte o săgeată (fără etichetă) spre starea iniţială a sistemului.
- semne de sfârşit, reprezentate printr-un disc negru cu un cerc exterior, în care sosesc săgeţi din stările finale ale sistemului. Acestea corespund situaţiilor în care obiectul ajunge la sfârşitul vieţii sale şi este distrus.

----

#Testare
- testarea de validare intenţionează să arate că produsul nu îndeplineşte cerinţele  testele încearcă să arate că o cerinţă nu a fost implementată adecvat
- testarea defectelor teste proiectate să descopere prezenţa defectelor în sistem  testele încearcă să descopere defecte
- depanarea (“debugging”) are ca scop localizarea şi repararea erorilor corespunzătoare implică formularea unor ipoteze asupra comportamentului programului, corectarea defectelor şi apoi re-testarea programului

##Principii de testare
- o parte necesară a unui caz de test este definirea ieşirii saurezultatului aşteptat
- programatorii nu ar trebui să-şi testeze propriile programe(excepție face testarea de nivel foarte jos - testarea unitară)
- organizaţiile ar trebui să folosească și companii (saudepartamente) externe pentru testarea propriilor programe
- rezultatele testelor trebuie analizate amănunțit
- trebuie scrise cazuri de test atât pentru condiţii de intrareinvalide şi neaşteptate, cât şi pentru condiţii de intrare valide şiaşteptate
- programul trebuie examinat pentru a vedea dacă nu face cetrebuie; de asemenea, trebuie examinat pentru a vedea dacă nucumva face ceva ce nu trebuie
- pe cât posibil, cazurile de test trebuie salvate și re-executatedupă efectuarea unor modificari
- probabilitatea ca mai multe erori să existe într-o secţiune aprogramului este proporţională cu numărul de erori dejadescoperite în acea secţiune
- efortul de testare nu trebuie subapreciat
- creativitatea necesară procesului de testare nu trebuiesubapreciată

##Tipuri de testari

###Testarea unitara( unit testing)
- o unitate (sau un modul) se referă de obicei la un element atomic (clasă sau funcţie), dar poate însemna şi un element de nivel mai înalt: bibliotecă, driver etc.
- testarea unei unităţi se face în izolare

###Testarea de integrare( integration testing)
- Testează interacţiunea mai multor unităţi
- Testarea este determinată de arhitectură

###Testarea sistemului( system testing)
- testarea sistemului testează aplicaţia ca întreg şi este determinată de scenariile de analiză
- aplicaţia trebuie să execute cu succes toate scenariile pentru a putea fi pusă la dispoziţia clientului
- spre deosebire de testarea internă şi a componentelor, care se face prin program, testarea aplicaţiei se face de obicei cu script-uri care rulează sistemul cu o serie de parametri şi colectează rezultatele
- testarea aplicaţiei trebuie să fie realizată de o echipă independentă de echipa de implementare
- testele se bazează pe specificaţiile sistemului

###Testarea de acceptanta( acceptance testing)
Ttestele de acceptanță determină dacă sunt îndeplinite cerințele unei specificații sau ale contractului cu clientul.

Sunt de diferite tipuri:
- teste rulate de dezvoltator înainte de a livra produsul software
- teste rulate de utilizator (user acceptance testing)
- teste de operaționalitate (operational testing)
- testare alfa și beta: alfa la dezvoltator, beta la client cu un grup ales de utilizatori

###Testarea de regresie( regression testing)
- un test valid generează un set de rezultate verificate, numit “standardul de aur”
- testele de regresie sunt utilizate la re-testare, după realizarea unor modificări, pentru a asigura faptul că modificările nu au introdus noi defecte în codul care funcţiona bine anterior
- pe măsură ce dezvoltarea continuă, sunt adăugate alte teste noi, iar testele vechi pot rămâne valide sau nu
- dacă un test vechi nu mai este valid, rezultatele sale sunt modificate în standardul de aur
- acest mecanism previne regresia sistemului într-o stare de eroare anterioară

###Testarea de performanta( performance testing)
O parte din testare se concentrează pe evaluarea proprietăţilor non-funcționale ale sistemului, cum ar fi:
- siguranța (“reliability”) - menţinerea unui nivel specificat de performanţă
- securitatea - persoanele neautorizate să nu aibă acces, iar celor autorizate să nu le fie refuzat accesul
- utilizabilitatea - capacitatea de a fi înţeles, învăţat şi utilizat  etc. (v. următoarele două slide-uri)

###Testarea la incarcare( load testing)
- asigură faptul că sistemul poate gestiona un volum aşteptat de date, similar cu acela din locaţia destinaţie (de exemplu la client)
- verifică eficienţa sistemului şi modul în care scalează acesta pentru un mediu real de execuţie

###Testarea la stres( stress testing)
- solicită sistemul dincolo de încărcarea maximă proiectată
- supraîncărcarea testează modul în care „cade” sistemul sistemele nu trebuie să eşueze catastrofal testarea la stres verifică pierderile inacceptabile de date sau funcţionalităţi
- deseori apar aici conflicte între teste. Fiecare test funcţionează corect atunci când este făcut separat. Când două teste sunt rulate în paralel, unul sau ambele teste pot eşua.
- o altă variantă, “soak testing”, presupune rularea sistemului pentru o perioadă lungă de timp (zile, săptămâni, luni);  în acest caz, de exemplu scurgerile nesemnificative de memorie se pot acumula şi pot provoca căderea sistemului

###Testarea interfetei cu utilizatorul( GUI testing)
Testarea interfeţei grafice poate pune anumite probleme cele mai multe interfeţe, dacă nu chiar toate, au bucle de evenimente, care conţin cozi de mesaje de la mouse, tastatură, ferestre, touchscreen etc. asociate cu fiecare eveniment sunt coordonatele ecran.

Testarea interfeţei cu utilizatorul presupune memorarea tuturor acestor informaţii şi elaborarea unei modalităţi prin care mesajele să fie trimise din nou aplicaţiei, la un moment ulterior. De obicei se folosesc scripturi pentru testare.

###Testarea utilizabilitatii( usability testing)
Testează cât de uşor de folosit este sistemul. Se poate face în laboratoare sau „pe teren” cu utilizatori din lumea reală

Exemple de metode folosite:
- testare “pe hol” (hallway testing): cu câțiva utilizatori aleatori
- testare de la distanță: analizarea logurilor utilizatorilor (dacă își dau acordul pentru aceasta)
- recenzii ale unor experți (externi)
- A/B testing: în special pentru web design, modificarea unui singur element din UI (d.ex. culoarea sau poziția unui buton) și verificarea comportamentului unui grup de utilizatori

##Metode de testare

##Testarea de tip cutie neagra( functionala)
Se iau în considerare numai intrările (într-un modul, componentă sau sistem) şi ieşirile dorite, conform
specificaţiilor structura internă este ignorată (de unde și numele de “black box testing”) .

###Avantaje
- reduce drastic numărul de date de test doar pe baza specificației
- potrivită pentru aplicații de tipul procesării datelor, în care intrarile și ieșirile sunt ușor de identificat și iau valori distincte

###Dezavantaje
- modul de definire a claselor nu este evident (nu există nici o modalitate riguroasă sau măcar niște indicații clare pentru identificarea acestora).
- în unele cazuri, deși specificația ar putea sugera că un grup de valori sunt procesate identic, acest lucru nu este adevarat. (Acest lucru întărește ideea ca metodele de tip “cutie neagră” trebuie combinate cu cele de tip “cutie albă”.)
- mai puțin aplicabile pentru situații când intrările și ieșirile sunt simple, dar procesarea este complexă.

###Analiza valorilor de frontiera
Este o alta metoda de tip cute neagra. Se concentrează pe examinarea valorilor de frontieră ale claselor, care de regulă sunt o sursă importantă de erori.

Avantaje si dezavantaje:
- pașii de început (identificarea parametrilor și a condițiilor de mediu precum și a categoriilor) nu sunt bine definiți, bazându-se pe experiența celui care face testarea. Pe de alta parte, odată ce acești pași au fost realizați, aplicarea metodei este clară.
- este mai clar definită decât metodele “cutie neagră” anterioare și poate produce date de testare mai cuprinzătoare, care testează funcționalități suplimentare; pe de altă parte, datorită exploziei combinatorice, pot rezulta date de test de foarte mari dimensiuni.

##Testarea de tip cutie alba( structurala)
Testarea de tip „cutie albă” ia în calcul codul sursă al metodelor testate. Vizează acoperirea diferitelor structuri ale programului.

Programul este modelat sub forma unui graf orientat.

###Acoperire la nivel de instrucțiune
Fiecare instrucțiune (sau nod al grafului) este parcursă măcar o dată.

####Avantaje
- realizează execuția măcar o singură dată a fiecărei instrucțiuni
- în general, ușor de realizat

####Dezavantaje
- nu testează fiecare condiție în parte în cazul condițiilor compuse (de exemplu, pentru a se atinge o acoperire la nivel de instrucțiune în programul anterior, nu este necesară introducerea unei valori mai mici ca 1 pentru n)
- nu testează fiecare ramură
- probleme suplimentare apar în cazul instrucțiunilor if a căror clauză else lipsește. În acest caz, testarea la nivel de instrucțiune va forța execuției ramurii corespunzătoare valorii “adevărat”, dar, deoarece nu există clauza else, nu va fi necesară și execuția celeilalte ramuri. Metoda poate fi extinsă pentru a rezolva această problemă.


###Acoperire la nivel de ramură
Fiecare ramură a grafului este parcursă măcar o dată.

Dezavantaj: nu testează condițiile individuale ale fiecărei decizii.

###Acoperire la nivel de cale
Generează date pentru executarea fiecărei căi măcar o singură dată.


###Acoperire la nivel de condiție
Generează date de test astfel încât fiecare condiție individuală dintr-o decizie să ia atât valoarea adevărat cât și valoarea fals (dacă acest lucru este posibil).

####Avantaje
- se concentrează asupra condițiilor individuale

####Dezavantaje
- poate să nu realizeze o acoperire la nivel de ramură. Pentru a rezolva aceasta slăbiciune se
poate folosi testarea la nivel de condiție/decizie.

###Acoperire la nivel de condiție/decizie
Generează date de test astfel încât fiecare condiție individuală dintr-o decizie să ia atât valoarea adevărat cât și valoarea fals (dacă acest lucru este posibil) și fiecare decizie să ia atât valoarea adevărat cât și valoarea fals.

###Acoperirea MC/DC
- fiecare condiție individuală dintr-o decizie ia atât valoarea true cât și valoarea false
- fiecare decizie ia atât valoarea true cât și valoarea false
- fiecare condiție individuală influențează în mod independent decizia din care face parte

####Avantaje:
- acoperire mai puternică decât acoperirea condiție/decizie simplă, testând și influența condițiilor individuale asupra deciziilor
- produce teste mai puține – depinde liniar de numărul de condiții

##Testarea unitara cu JUnit

```
public class Ex1
{
	// requires: a is non-null, non-empty
	// ensures:  result is equal to a minimal element in a
	public static int find_min(int[] a)
	{
		int x, i;
		x = a[0];

		for (i = 1; i < a.length; i++)
		{
			if (a[i] < x)
				x = a[i];
		}

		return x;
	}

	// requires: x is non-null and sorted in increasing order
	// ensures:  result is sorted and contains
	//           the elements in x and n, but no others
	public static int[] insert(int[] x, int n)
	{
		int[] y = new int[x.length + 1];
		int i;

		for (i = 0; i < x.length; i++)
		{
			if (n < x[i]) break;
			y[i] = x[i];
		}

		y[i] = n;

		for (; i < x.length; i++)
		{
			y[i+1] = x[i];
		}
		return y;
	}
}

import org.junit.*;
import static org.junit.Assert.*;
import java.util.*;

public class Ex1Test
{
	@Test public void test_find_min_1()
	{
		int[] a = {5, 1, 7};

		int res = Ex1.find_min(a);

		assertTrue(res == 1);
	}
	@Test public void test_insert_1()
	{
		int[] x = {2, 7};
		int n = 6;

		int[] res = Ex1.insert(x, n);
		int[] expected = {2, 6, 7};

		assertTrue(Arrays.equals(expected, res));
	}
}
```

#Depanarea codului

##Debugger

Funcționalitățile de bază ale unui debugger (instrumentul care ne ajută să identificăm problema sau defectul în cod) sunt:
- **controlul execuției**: poate opri execuția la anumite locații numite breakpoints
- **interpretorul**: poate executa instrucțiunile una câte una
- **inspecția stării programului**: poate observa valoarea variabilelor, obiectelor sau a stivei de execuție
- **schimbarea stării**: poate schimba starea programului în timpul execuției

##Defecte
În multe organizaţii se foloseşte o clasificare a defectelor pe 4 niveluri:
- **defecte critice**: afectează mulţi utilizatori, pot întârzia proiectul
- **defecte majore**: au un impact major, necesită un volum mare de lucru pentru a le repara, dar nu afectează substanţial graficul de lucru al proiectului
- **defecte minore**: izolate, care se manifestă rar şi au un impact minor asupra proiectului
- **defecte cosmetice**: mici greşeli care nu afectează funcţionarea corectă a produsului software urmărire


#Sabloane de proiectare - design patterns
șabloane de proiectare = soluţii generale reutilizabile la probleme care apar frecvent în proiectare (orientată pe obiecte)

##Avantaje
- ca mod de a învăța practici bune
- aplicarea consistentă a unor principii de generale de proiectare
- ca vocabular de calitate de nivel înalt (pentru comunicare)
- ca autoritate la care se poate face apel
- în cazul în care o echipă sau organizație adoptă propriile șabloane: un mod de a explicita cum se fac lucrurile acolo

##Dezavantaje
- sunt folositoare doar dacă există într-adevăr problema pe care ele o rezolvă
- pot crește complexitatea și scădea performanța

##Sabloane arhitecturale
La nivel de arhitectura.

##Idiomuri
La nivel de limbaj.

##Sabloane de proiectare

Principii:
- programare folosind multe interfețe: interfețe și clase abstracte pe lângă clasele concrete, framework-uri generice în loc de soluții directe
- se preferă compoziția în loc de moștenire: delegarea către obiecte “ajutătoare”
- se urmărește decuplarea: obiecte cât mai independente, folosirea “indirecției”, obiecte “ajutătoare”

Continutul unui sablon:
- numele
- problema: obiectivele
- contextul: pre-condiţiile
- forţele: constrângerile care indică un compromis, de unde şi apare nevoia de şablon
- soluţia: cum se ating obiectivele
- contextul rezultat
- justificarea: cum funcţionează intern şi de ce
- exemple
- moduri de utilizare cunoscute
- șabloanele înrudite

###Singleton
- implică numai o singură clasă
- ea este responsabilă pentru a se instanția
- ea asigură că se creează maxim o instanță
- în același timp, oferă un punct global de acces la acea instanță
- în acest caz, aceeași instanță poate fi utilizată de oriunde, fiind imposibil de a invoca direct constructorul de fiecare dată.

Aplicabilitate:
- când doar un obiect al unei clase e necesar
-când instanța este accesibilă global
- este folosit în alte șabloane (factories și builders)

Consecințe:
- accesul controlat la instanță
- spațiu de adresare structurat (comparativ cu o variabilă globală)

###Abstract Factory
Oferă o interfață pentru crearea de familii de obiecte înrudite sau dependente fără a specifica clasele lor concrete.

Exemplu: un set de instrumente GUI (Widgets) care oferă look-and-feel multiplu, să zicem pentru pachetele Motif și Presentation Manager (PM).

Consecințe:
- numele de clase de produse nu apar în cod
- familiile de produse ușor interschimbabile
- cere consistență între produse

###Builder
Separă construcția unui obiect complex de reprezentarea sa, astfel încât același proces de construcție poate crea reprezentări diferite.

Exemplu: citește RTF (Rich Text Format) și traduce în diferite formate interschimbabile.

Comparație cu Abstract Factory:  Builder creează un produs complex pas cu pas. Abstract Factory creează familii de produse, de fiecare dată produsul fiind complet.

###Facade
Oferă o interfață unificată pentru un set de interfețe într-un subsistem.

Exemplu: un subsistem de tip compilator care conține scanner, parser, generator de cod etc. Șablonul Facade combină interfețele și oferă o nouă operație de tip compile().

###Observer
Presupunem o dependență de 1:n între obiecte.  Cand se schimbă starea unui obiect, toate obiectele dependente sunt înștiințate.

Exemplu: poate menține consistența între perspectiva internă și cea externă

###Visitor
Reprezintă operații pe o structură de obiect prin obiecte. Adaugă noi operații, fără a modifica însă clasele.

Exemplu: procesarea arborelui sintactic într-un compilator (type checking, generare de cod, pretty print)

##Anti-sabloane
Exemple:
- abstraction inversion
- input kludge
- interface bloat
- magic pushbutton
- race hazard
- stovepipe system
- anemic domain model
- BaseBean
- God object
- circle-ellipse problem
- yo-yo problem
- object orgy
- poltergeists

#Licente
- licențe comerciale (pe calculator sau utilizator)
- shareware (acces limitat temporal sau funcțional)
- freeware (gratuit)
- open source(BSD, X11 (MIT), MozillaPublic Licence (MPL), Gnu (GPL, LGPL))


----------------------------

> Written with [StackEdit](https://stackedit.io/).
