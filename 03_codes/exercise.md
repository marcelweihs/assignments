# Übungen

#### Aufgabe 1
Bestimmen Sie die Hamming-Distanzen für die folgenden Codes:

  * { 110101, 101011, 010011, 101100 }
  * { 2B, 4A, 78, A9 }

#### Aufgabe 2
Bestimmen Sie die Hamming-Distanz für den Code {1101011, 1010110, 0000011, 0001100} und modifizieren Sie diesen Code dann durch Änderung eines einzigen Bit so, dass sich eine um eins erhöhte Hamming-Distanz ergibt.


#### Aufgabe 3
Bei einer seriellen Datenübermittlung werden mit 7 Bit codierte ASCII-Zeichen mit einem zusätzlichen Paritätsbit und einem Längsprüfwort nach jeweils 8 Zeichen gesendet. Es gilt gerade Parität. Es
wird folgende Nachricht empfangen:

```console
1000110 1
0110010 0
1100101 0
1101001 0
1100010 1
1101001 0
1100101 0
1110010 0

0100100 0
```

Wie lautet die empfangene Nachricht? Sind Übertragungsfehler aufgetreten? Wenn ja, wie lautet die korrekte Nachricht?


#### Aufgabe 4
Berechnen Sie für die Nachricht ` 1101011010` die CRC-Prüfsumme mit dem Prüfpolynom `10011`.


#### Aufgabe 5
Sie haben die Nachricht `100110110101` erhalten. Das Prüfpolynom ist `10011`. Ist die Nachricht korrekt übertragen worden?

#### Aufgabe 6
Komprimieren Sie das folgende Bild mit Hilfe eines Run-Length-Encodings. Geben Sie das Ergebnis an.

![](img/ghost.png)

Wieviel Platz spart Ihre Codierung im Vergleich zu einer Speicherung ohne Kompression?

#### Aufgabe 7
Gegeben ist folgende Häufigkeitsverteilung für eine Menge von Zeichen:

| Zeichen	      | R | I | C | H | T | G |
|---------------|---|---|---|---|---|---|
| Häufigkeit [%]|25 |21 |19 |18 |13 |4  |

Generieren Sie einen Huffman-Code für die angegebene Menge

Dekodieren Sie folgende Nachricht (von links nach rechts!) `0010110100110100111` mittels des generierten Code.


#### Aufgabe 8
Komprimieren Sie das folgende Bild mit Hilfe des LZ77-Algorithmus. Verwenden Sie ein Datenfenster und einen Vorausschaupuffer der Größe 8. Geben Sie das Ergebnis in der Form (x, x, Z) an.

![](img/bird.png)
