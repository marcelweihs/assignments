# Übungen: Formale Sprachen und Automaten


#### 1. Parkscheinautomat
Auf einem Parkplatz kostet das Parken 1,50 Euro. Ein Parkscheinautomat akzeptiert 50 Cent, 1 Euro und 2 Euro-Münzen. Nach Einwurf der korrekten Geldsumme liefert er das Ticket und ggf. das Restgeld. Er besitzt keine Abbruchtaste.

Entwickeln Sie einen Automaten, der den Parkscheinautomaten realisiert, alle korrekten Geldbeträge akzeptiert und das richtige Restgeld zurückgibt.


#### 2. Formale Sprache
Was ist eine formale Sprache?


#### 3. Objekt- vs. Meta-Sprache
Was ist der Unterschied zwischen einer Objektsprache und einer Meta- sprache?


#### 4. Regulären Ausdruck deuten
Beschreiben Sie die Bedeutung des folgenden regulären Ausdrucks in eigenen Worten: `(0*1*)*000(0|1)*`.


#### 5. Endliche Automaten
Was sind endliche Automaten und in welcher Beziehung stehen sie zu den formalen Sprachen?


#### 6. Grafische Darstellung eines endlichen Automaten
Wie lassen sich endliche Automaten anschaulich (mit grafischen Hilfsmitteln) leicht darstellen? Geben Sie ein Beispiel.


#### 7. Ncht deterministischer endlicher Automat
Was ist ein nicht deterministischer endlicher Automat?


#### 8. Formale Grammatik
Was ist eine formale Grammatik?


#### 9. Ableitung eines Wortes
Was verstehen wir unter der Ableitung eines Wortes w ∈ Σ∗?


#### 10. Chomsky-Hierarchie
Was versteht man unter der Chomsky-Hierarchie?


#### 11. Backus-Naur-Form
Was versteht man unter der Backus-Naur-Form?


#### 12. Turingmaschine
Was ist eine Turingmaschine?


#### 13. Algorithmus
Was ist ein Algorithmus?


#### 14. Universelle Turingmaschine
Worin besteht die Idee einer universellen Turingmaschine?


#### 15. Church'sche These
Was besagt die Church'sche These?


#### 16. Primitv rekursive Funktionen
Nennen Sie einfache Beispiele primitiv rekursiver Funktionen.


#### 17. Halteproblem
Wie lautet das Halteproblem für Turingmaschinen?


#### 18. 50 Affen
Zur Illustration der zeitlichen Komplexität führen Sie folgende Betrachtung durch: Wie wahrscheinlich ist es, dass 50 Affen an 50 Schreibmaschinen in 50 Jahren irgendwann auch die erste Seite von Shakespeares Drama ”Hamlet“ getippt haben würden? Machen Sie hierzu plausible Annahmen bzgl. der Zeichenzahl pro Seite und die Anzahl der Anschläge pro Sekunde.


#### 19. Bedeutung der Kompexitätsbetrachtungen
Warum sind Komplexitätsbetrachtungen in der Informatik von besonderem theoretischem Interesse?


#### 20. NP-harte Sprache
Was versteht man unter einer NP-harten Sprache und was unter einer NP-vollständigen Sprache?


#### 21. Komplexität einer Funktion
Was meinen wir mit der Feststellung, dass eine Funktion f(n) = O(g(n)) ist?


#### 22. O-Notation -- Eigenschaften
Welche Eigenschaften haben die mittels der O-Notation beschriebenen Klassen?


#### 23. Wichtige Komplexitätsklassen
Mit welchen Komplexitätsklassen, mit welchen g(n) also, haben wir es in der praktischen Informatik meistens zu tun? Nennen Sie jeweils einfache Beispiele zugehöriger Algorithmen.


#### 24. Komplexität eines Problems
Angenommen ein Problem kann von einem Algorithmus in 2^n gelöst werden. Was können wir über die Komplexität des Problems sagen?


#### 25. Besserer Algorithmus
Angenommen ein Problem kann von einem Algorithmus in n^2 und von einem andern in 2n gelöst werden. Welchen Algorithmus sollte man verwenden?


#### 26. Polynomiales Problem

  * Geben Sie ein Beispiel für ein polynomiales Problem.
  * Geben Sie ein Beispiel für ein NP-Problem, dass bisher nicht als polynomiales Problem betrachtet werden  kann.


#### 27. Komplexität und Verständlichkeit
Wenn die Komplexität eines Algorithmus X größer als die eines Algorithmus Y ist, bedeutet dies, dass X schwerer zu verstehen ist als Y? Erläutern Sie Ihre Antwort.


#### 28. Validität von Aussagen
Untersuchen Sie die Validität des folgenden Paars von Aussagen:

  1. Die nächste Aussage ist wahr.
  2. Die vorhergehende Aussage ist falsch.


#### 29. Halteproblem
Welche Bedeutung hat das Halteproblem in der theoretischen Informatik?


#### 30. Suche in Liste
Ist die Suche in einer Liste nach einem betsimmten Wert ein polynomiales Problem?


#### 31. Praktische Lösbarkeit
Bedeutet die Feststellung, dass sich ein Problem in polynomialer Zeit lösen lässt immer, dass es praktisch lösbar ist? Begründen Sie Ihre Antwort.


#### 32. Klasse P
Welche der folgenden Probleme sind in der Klasse P?

  1. Ein Problem mit der Komplexität n^2
  2. Ein Problem mit der Komplexität 2n
  3. Ein Problem mit der Komplexität n^2 + 2n
  4. Ein Problem mit der Komplexität n!


#### 33. Klasse P / NP
Geben Sie ein Beispiel für ein Problem, dass sowohl in der Klasse P als auch in der Klasse NP ist.


#### 34. Vergleich von Komplexitäten
Angenommen, sie haben zwei Algorithmen zu Auswahl, die dasselbe Problem lösen. Der eine hat die Komplexität n^4, der andere 4n. Für welche Eingaben ist welcher effizienter?


#### 35. Komplexität bestimmen
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


#### 36. Komplexität berechnen
Betrachten Sie folgende Messdaten, die für die Laufzeit eines Programms bei unterschiedlichen Datenmengen (n) ermittelt wurden:

  1. 3n^2 + 3n + 7
  2. 5n(3 + log n)
  3. (5n + 4) / 6
  4. 1 + 2 + 3 + 4 + ... + n
  5. n + log n^2
  6. (n+1) log n

Geben Sie den Aufwand mittels der O-Notation an.

