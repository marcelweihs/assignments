# Übungen

#### Aufgabe: Turingmaschine
Was ist eine Turingmaschine?


#### Aufgabe: Algorithmus
Was ist ein Algorithmus?


#### Aufgabe: Universelle Turingmaschine
Worin besteht die Idee einer universellen Turingmaschine?


#### Aufgabe: Church'sche These
Was besagt die Church'sche These?


#### Aufgabe: Primitv rekursive Funktionen
Nennen Sie einfache Beispiele primitiv rekursiver Funktionen.


#### Aufgabe: Halteproblem
Wie lautet das Halteproblem für Turingmaschinen?


#### Aufgabe: 50 Affen
Zur Illustration der zeitlichen Komplexität führen Sie folgende Betrachtung durch: Wie wahrscheinlich ist es, dass 50 Affen an 50 Schreibmaschinen in 50 Jahren irgendwann auch die erste Seite von Shakespeares Drama ”Hamlet“ getippt haben würden? Machen Sie hierzu plausible Annahmen bzgl. der Zeichenzahl pro Seite und die Anzahl der Anschläge pro Sekunde.


#### Aufgabe: Bedeutung der Kompexitätsbetrachtungen
Warum sind Komplexitätsbetrachtungen in der Informatik von besonderem theoretischem Interesse?


#### Aufgabe: NP-harte Sprache
Was versteht man unter einer NP-harten Sprache und was unter einer NP-vollständigen Sprache?


#### Aufgabe: Komplexität einer Funktion
Was meinen wir mit der Feststellung, dass eine Funktion f(n) = O(g(n)) ist?


#### Aufgabe: O-Notation -- Eigenschaften
Welche Eigenschaften haben die mittels der O-Notation beschriebenen Klassen?


#### Aufgabe: Wichtige Komplexitätsklassen
Mit welchen Komplexitätsklassen, mit welchen g(n) also, haben wir es in der praktischen Informatik meistens zu tun? Nennen Sie jeweils einfache Beispiele zugehöriger Algorithmen.


#### Aufgabe: Komplexität eines Problems
Angenommen ein Problem kann von einem Algorithmus in 2^n gelöst werden. Was können wir über die Komplexität des Problems sagen?


#### Aufgabe: Besserer Algorithmus
Angenommen ein Problem kann von einem Algorithmus in n^2 und von einem andern in 2n gelöst werden. Welchen Algorithmus sollte man verwenden?


#### Aufgabe: Polynomiales Problem

  * Geben Sie ein Beispiel für ein polynomiales Problem.
  * Geben Sie ein Beispiel für ein NP-Problem, dass bisher nicht als polynomiales Problem betrachtet werden  kann.


#### Aufgabe: Komplexität und Verständlichkeit
Wenn die Komplexität eines Algorithmus X größer als die eines Algorithmus Y ist, bedeutet dies, dass X schwerer zu verstehen ist als Y? Erläutern Sie Ihre Antwort.


#### Aufgabe: Validität von Aussagen
Untersuchen Sie die Validität des folgenden Paars von Aussagen:

  1. Die nächste Aussage ist wahr.
  2. Die vorhergehende Aussage ist falsch.


#### Aufgabe: Halteproblem
Welche Bedeutung hat das Halteproblem in der theoretischen Informatik?


#### Aufgabe: Suche in Liste
Ist die Suche in einer Liste nach einem betsimmten Wert ein polynomiales Problem?


#### Aufgabe: Praktische Lösbarkeit
Bedeutet die Feststellung, dass sich ein Problem in polynomialer Zeit lösen lässt immer, dass es praktisch lösbar ist? Begründen Sie Ihre Antwort.


#### Aufgabe: Klasse P
Welche der folgenden Probleme sind in der Klasse P?

  1. Ein Problem mit der Komplexität n^2
  2. Ein Problem mit der Komplexität 2n
  3. Ein Problem mit der Komplexität n^2 + 2n
  4. Ein Problem mit der Komplexität n!


#### Aufgabe: Klasse P / NP
Geben Sie ein Beispiel für ein Problem, dass sowohl in der Klasse P als auch in der Klasse NP ist.


#### Aufgabe: Vergleich von Komplexitäten
Angenommen, sie haben zwei Algorithmen zu Auswahl, die dasselbe Problem lösen. Der eine hat die Komplexität n^4, der andere 4n. Für welche Eingaben ist welcher effizienter?


#### Aufgabe: Komplexität bestimmen
Gegeben seien die folgenden Programmfragmente. Geben Sie die jeweilige Ausführungszeit an. Geben Sie den Aufwand mittels der O-Notation an. Sie dürfen davon ausgehen, dass der fehlende Schleifenrumpf eine konstante Ausführungszeit hat.

```java
for (int i = 0; i < n; i++) {
    // Rumpf
}

for (int j = n; j >= 0; j--) {
    // Rumpf
}
```

```java
for (int i = 0; i < n; i++) {
    for (int j = 0; j < n; j++) {
      // Rumpf
    }
}
```

```java
for (int i = 0; i < n; i++) {
    for (int j = 0; j < i; j++) {
        // Rumpf
    }
}
```

```java
for (int i = n; i > 0; i = i/2) {
    // Rumpf
}
```

```java
for (int i = 0; i < n; i++) {
    for (int j = 0; j*j < n; j++) {
        // Rumpf
    }
}
```

```java
for (int i = n; i > 0; i = i >> 1) {
    for (int j = 0; j < n; j++) {
       // Rumpf
    }
}
```


#### Aufgabe: Komplexität berechnen
Betrachten Sie folgende Messdaten, die für die Laufzeit eines Programms bei unterschiedlichen Datenmengen (n) ermittelt wurden:

  1. 3n^2 + 3n + 7
  2. 5n(3 + log n)
  3. (5n + 4) / 6
  4. 1 + 2 + 3 + 4 + ... + n
  5. n + log n^2
  6. (n+1) log n

Geben Sie den Aufwand mittels der O-Notation an.
