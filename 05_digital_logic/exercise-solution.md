# Übungen: Digitale Logik

Hinweis: Die Aufgaben verwenden der Einfachheit halber die Symbole aus Java für die Darstellung der

  * _Konjunktion_ (AND): `&`,
  * _Disjunktion_ (OR): `|` und
  * _Negation_ (NOT): `!`

#### Beweis De Morgansche Gesetz
Beweisen Sie mit Hilfe einer Wahrheitstabelle das De Morgansche Gesetz:
`!(P | Q) = !P & !Q`

---
```console
P   Q   !(P | Q)  !P & !Q
---------------------------
T   F       F         F
T   T       F         F
F   F       T         T
F   T       F         F
```


#### Ausdruck in Wahrheitstabelle darstellen
Stellen Sie eine Wahrheitstabelle für folgenden Ausdruck auf (P und Q sind Aussagen, die Wahr `T` oder Falsch `F` sein können): `(P & Q) | (!P & !Q)`

---
```console
P   Q   P & Q   !P & !Q   Ergebnis
------------------------------------
T   F     F         F          F
T   T     T         F          T
F   F     F         T          T
F   T     F         F          F
```


#### Ausdruck umformen
Vereinfachen Sie durch elementare Umformungen den folgenden Ausdruck: `(A | B) & (!A & B)` Überprüfen Sie mit einer Wahrheitstabelle, ob das Ergebnis korrekt ist.

---
```console
  (A | B) & (!A & B)
= ((A | B) & !A) & ((A | B) & B)
= (A & !A | B & !A) & (A & B | B & B)
= (B & !A) & (A & B | B)
= (B & !A) & B
= (B & !A)
= !A & B
```

Überprüfung mit Wahrheitstabelle:

```console
A   B   (A | B)  (!A & B)   Ergebnis
---------------------------------------
T   F      T          F           F
T   T      T          F           F
F   F      F          F           F
F   T      T          T           T
```


#### Darstellung von Verknüpfungen durch andere
Stellen Sie die zweistelligen logischen Verknüpfungen Implikation, NOR, NAND, Äquivalenz und XOR unter ausschließlicher Verwendung von Konjunktion (AND, `&`), Disjunktion (OR, `|`) und Negation (NOT, `!`) dar.

---
```console
NOR: a NOR b = !(a | b)
NAND: a NAND b = !(a & b)
Äquivalenz: a <=> b = (a & b) | (!a | !b)
XOR: a XOR b = !(a <=> b) = (!a | !b) & (a | b)
```


#### Disjunktive Normalform
Eine Schaltfunktion y mit drei Eingängen x1, x2, x3 sei durch folgende Funktionstabelle gegeben:

| x1  | x2  | x3  | y  |
|-----|-----|-----|----|
|  0  |   0 |   0 |  0 |
|  0  |   0 |   1 |  1 |
|  0  |   1 |   0 |  1 |
|  0  |   1 |   1 |  0 |
|  1  |   0 |   0 |  0 |
|  1  |   0 |   1 |  1 |
|  1  |   1 |   0 |  1 |
|  1  |   1 |   1 |  1 |

Geben Sie die Schaltfunktion in disjunktiver Normalform an, erstellen Sie das zugehörige KV-Diagramm und vereinfachen Sie die Funktion so weit wie möglich.

---
In die disjunktive Normalform gehen nur die Terme ein, die als Ergebnis eine 1 haben, im konkreten Fall also:

```console
y= (!x1 & !x2 & x3) 
 | (!x1 & x2 & !x3) 
 | (x1 & !x2 & x3) 
 | (x1 & x2 & !x3) 
 | (x1 & x2 & x3)
```

Damit erhalten wir als KV-Diagramm

![](img/kv-solution.png)

Der reduzierte Ausdruck ist damit:

```console
y = (!x2 & x3) | (x2 & !x3) | (x1 & x2 & x3)
```

Probe über Wahrheitstabelle:

| x1  | x2  | x3  | !x2 & x3    | x2 & !x3    | x1 & x2 & x3 | y |
|-----|-----|-----|-------------|-------------|--------------|---|
|  0  |   0 |   0 |           0 |           0 |            0 | 0 |
|  0  |   0 |   1 |           1 |           0 |            0 | 1 |
|  0  |   1 |   0 |           0 |           1 |            0 | 1 |
|  0  |   1 |   1 |           0 |           0 |            0 | 0 |
|  1  |   0 |   0 |           0 |           0 |            0 | 0 |
|  1  |   0 |   1 |           1 |           0 |            0 | 1 |
|  1  |   1 |   0 |           0 |           1 |            0 | 1 |
|  1  |   1 |   1 |           0 |           0 |            1 | 1 |

Die Funktion ist korrekt.


#### Gatter erstellen
Erstellen Sie eine Wertetabelle und einen Schaltplan mit möglichst wenig Gattern für die folgende Schaltfunktion:
`f(x1, x2, x3) = (x1 & x2 & !x3) | (x1 & !x2 & !x3)`.

---
```console
            x1 0 0 0 0 1 1 1 1
            x2 0 0 1 1 0 0 1 1
            x3 0 1 0 1 0 1 0 1
   ---------------------------
   f(x1,x2,x3) 0 0 0 0 1 0 1 0
```

Die Funktion kann vereinfacht werden zu: `f(x1, x2, x3) = x1 & !x3`

![](img/gatter-solution.png)


#### Logische Funktionen auf Bitfolgen anwenden
Berechnen Sie `(a & !b) | c` für `a = 10111011`, `b = 01101010`, `c = 10101011`. Zeigen Sie an diesem Beispiel, dass `(a & !b) | c = (a | c) & (!b | c)` gilt.

---
```console
           a 10111011
          !b 10010101
      a & !b 10010001
           c 10101011
             --------
(a & !b) | c 10111011

             a 10111011       !b 10010101
             c 10101011        c 10101011
         a | c 10111011   !b | c 10111111
        !b | c 10111111
               --------
(a|c) & (!b|c) 10111011
```


#### Bits in einem Byte umdrehen
Angenommen, Sie wollen die mittleren 4 Bits eines Bytes umdrehen, wie gehen Sie am einfachsten vor (Bitmaske und Operation)?

---
Anwendung von XOR mit der Maske `00111100`.

```console
     10101001
   ^ 00111100
   ----------
     10010101
```


#### Leistung einer Schaltung
Berechnen Sie für den unten angegebenen Stromkreis, welche Leistung (in Watt) verbraucht wird.

![](img/stromkreis_einfach.png)

---
`P = U*I, I = U/R = 12 V / 1000 Ohm = 12 mA => P = 12 V * 12 mA = 0,144 Watt`


#### Schaltkreis berechnen
Berechnen Sie für den unten angegebenen Stromkreis alle fehlenden Größen.

![](img/stromkreis_komplex.png)

---
`R_23 = 470 Ohm, R_56 = 350 Ohm, R_2356 = 200,61 Ohm, R_ges = 500,61 Ohm`
`I_1 = I_2 = 200mA, U_1 = 20 V, U_4 = 40 V, U_5 + U_6 = U_2 + U3 = 40 V`
`I_3 = I_5 = I_7 = U_56 / R_56 = 115 mA`
`I_4 = I_6 = I_8 = U_23 / R_23 = 85 mA`
`U_2 = R_2 * I_4 = 34 V`
`U_3 = R_3 * I_6 = 6 V`
`U_5 = I_3 * R_5 = 5,75 V`
`U_6 = I_5 * R_6 = 34,25 V`


#### Oder-Gatter mit vier Eingängen
Entwerfen Sie unter Verwendung von Gattern mit zwei Eingängen ein Oder-Gatter mit vier Eingängen.

---
![](img/vierfach-oder-solution.png)


#### Schaltung entwerfen
Entwerfen Sie eine Schaltung mit Gattern, die prüft ob einer der Passagiere seinen Gurt geschlossen hat (High-Signal vom Gurtsensor). Ist der Platz leer (Low-Signal vom Sitzplatzsensor) so darf auch der Gurt offen sein. Ist der Platz besetzt und der Gurt offen soll die Schaltung ein High-Signal ausgeben. Verknüpfen Sie dann zwei Sitzplätze zu einem Ergebnis-Signal.

Entwerfen Sie zuerst eine Wahrheitstabelle und geben Sie dann eine Schaltung mit Gattern an.

---
```console
Wahrheitstabelle:

G  S  E
-------
1  1  0
1  0  0
0  1  1
0  0  0
```

Es bietet sich an, für den Schaltungsentwurf auf die disjunktive Normalform zurück zu greifen.

```console
E = !G & S
```

Mit Gattern sieht die Schaltung wie folgt aus:

![](img/gurt-solution-1.png)

Für zwei Sitzplätze dann wie folgt:

![](img/gurt-solution-2.png)
