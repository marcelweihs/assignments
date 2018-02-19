# Übungen

#### Aufgabe: Eigenschaften eines Algorithmus
Der Abzieh-Algorithmus arbeitet wie folgt:

  * Er startet mit einer natürlichen Zahl n > 0 als Eingabe.
  * n wird um eine natürliche Zahl z aus dem Intervall 1 bis n - 1 vermindert, solange die Länge des Intervalls > 0 ist.
  * Danach wird n ausgegeben.

Beispiel mit 6 als Eingabe und 1 als Ausgabe

| n | Intervall | Länge | z |
|---|-----------|-------|---|
| 6 | 1...5     |    5  | 3 |
| 3 | 1...2     |    2  | 2 |
| 1 | leer      |    0  |   |


  1. _Terminiertheit_: Terminiert dieser Algorithmus?
  2. _Determinismus_: Ist dieser Algorithmus deterministisch?
  3. _Determiniertheit_: Ist dieser Algorithmus determiniert?

Begründen Sie jeweils kurz Ihre Antwort. Antworten wie ja oder nein reichen nicht aus!


#### Aufgabe: Rekursive Definition einer Funktion
Welche Funktion wird durch die folgende Definition realisiert?
`f(x, y) = if y = 1 then x else f(x, y - 1) + x fi`

  1. Was wird hier berechnet?
  2. Beschreiben Sie die Auswertung an einem Beispiel (y > 3).
  3. Für welche Wertebereiche von x und y terminiert diese Funktion?


#### Aufgabe: Arten von Datentypen
Nach welchem grundlegenden Kriterium werden Datentypen unterschieden?


#### Aufgabe: Array vs. Liste
Worin bestehen die praktischen Unterschiede zwischen einem Array und einer verketteten Liste?


#### Aufgabe: Abstrakter Datentyp
Was versteht man – umgangssprachlich formuliert – unter einem abstrakten Datentypen?


#### Aufgabe: Typische abstrakte Datentypen
Welche klassischen Datenstrukturen nimmt man gerne als paradigmatische Beispiele abstrakter Datentypen, und wie lässt sich umgangssprachlich deren äußeres Verhalten beschreiben?


#### Aufgabe: Baum
Was ist ein Baum?


#### Aufgabe: Beispiele rekursiver Funktionen
Welche einfachen Beispiele rekursiver Funktionen kennen Sie?


#### Aufgabe: Compilierte vs. interpretierte Sprachen
Es gibt Programmiersprachen, die kompiliert werden, und es gibt Programmiersprachen, die interpretiert werden. Worin besteht der Unterschied?


#### Aufgabe: Fehler in einem Programm
Sie schreiben ein Programm in einer gängigen Programmiersprache. Welche Fehlerarten können auftreten? Vergleichen Sie die Fehler in einem Programm mit Fehlern in einem Deutschaufsatz.


#### Aufgabe: Vor- und Nachteile höherer Programmiersprachen
Worin besteht der Vorteil der höheren Programmiersprachen, und welche Nachteile haben sie im Vergleich zu Maschinen- oder maschinennahen Sprachen?


#### Aufgabe: Grund für mehrere Programmiersprachen
Warum gibt es so viele unterschiedliche Programmiersprachen und nicht eine einzige universelle ”lingua franca“?


#### Aufgabe: Liegt ein Algorithmus vor?
Warum ist die folgende Anleitung kein Algorithmus?

  1. Zeichne eine Linie von (2,5) nach (6,11)
  2. Zeichne eine Linie von (1,3) nach (3,6)
  3. Zeichne einen Kreis mit dem Mittelpunkt am Schnittpunkt der beiden Geraden und dem Radius 2


#### Aufgabe: Syntax vs. Semantik
Was ist der Unterschied zwischen Syntax und Semantik?


#### Aufgabe: Plattformabhängigkeit
Was bedeutet es, wenn man sagt eine Programmiersprache sei "plattformunabhängig"?


#### Aufgabe: Starke Typisierung
Was bedeutet es, wenn man sagt, eine Proggrammiersprache sei "stark typisiert"?


#### Aufgabe: Stringsuche
Entwerfen Sie einen Algorithmus, der ausgehend von zwei Zeichenketten (__Strings__) herausfindet, ob der erste irgendwo im zweiten auftritt.


#### Aufgabe: Algorithmus finden
Vier Steiger (A, B, C, D) haben nur eine Laterne uns müssen durch einen Stollen im Bergwerk. Der Stolen ist so schmal, dass nur maximal zwei Steiger gleichzeitig durch den Stollen gehen können. A braucht eine Minute, B zwei Minuten, C vier Minuten und D acht Minuten für die Strecke. Wenn zwei zusammen unterwegs sind, gehen sie mit der Geschwindigkeit des langsamere der beiden. Durch den Stollen können sie nur gehen, wenn sie die Laterne dabei haben. Wie kann man alle vier in nur 15 Minuten durch den Stollen bekommen? Wie sind Sie das Problem angegangen?


#### Aufgabe: C-Programm kompilieren
Versuchen Sie das C-Programm im Ordner [src/C](src/C) zu kompilieren und zu linken. Welche Ausgabe macht das Programm?


#### Aufgabe: Ruby-Programm ausführen
Im Ordner [src/Ruby](src/Ruby) finden Sie ein einfaches Ruby-Programm. Führen Sie dieses Programm aus. Welche Ausgabe macht das Programm?
