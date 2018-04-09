# Übungen: Codes

#### Morse-Alphabet
Warum werden beim Morse-Alphabet manche Buchstaben mit kurzen und manche mit langen Folgen der Zeichen `.` und `−` dargestellt? Handelt es sich beim Morse-Alphabet um eine binäre Codierung?

---
Um Zeit bei der Übertragung zu sparen, hat man damals schon, lange bevor es Computer gab, häufig auftretende Zeichen mit kurzen und selten auftretende Zeichen mit langen Folgen von `.` und `-` dargestellt. Beim Morse-Alphabet handelt es sich nicht um eine binäre Codierung, da neben `.` und `-` als drittes Zeichen die Pause verwendet wird.


#### Fano-Bedingung
Genügt die Deutsche Sprache der Fano-Bedingung? Begründen Sie Ihre Antwort.

---
Nein: Es gibt Wörter, die Präfix eines anderen Wortes sind (und zwar sehr viele). Beispiel: Dach und Dackel.


#### Hamming-Distanz bestimmen
Bestimmen Sie die Hamming-Distanzen für die folgenden Codes:

  * { 110101, 101011, 010011, 101100 }
  * { 2B, 4A, 78, A9 }

---
```console
        110101   101011   010011   101100
110101  -        -        -        -
101011  4        -        -        -
010011  3        3        -        -
101100  3        3        6        -

h = 3
```

```console
          2B         4A         78         A9
          00101011   01001010   01111000   10101001
00101011  -          -          -          -
01001010  3          -          -          -
01111000  4          4          -          -
10101001  2          5          4          -

h = 2
```

#### Hamming-Distanz anpassen
Bestimmen Sie die Hamming-Distanz für den Code {1101011, 1010110, 0000011, 0001100} und modifizieren Sie diesen Code dann durch Änderung eines einzigen Bit so, dass sich eine um eins erhöhte Hamming-Distanz ergibt.

---
```console
         1101011   1010110   0000011   0001100
1101011  -          -        -         -
1010110  5          -        -         -
0000011  3          4        -         -
0001100  5          4        4         -

h = 3
```

```console
         1101111   1010110   0000011   0001100
1101111  -          -        -         -
1010110  4          -        -         -
0000011  4          4        -         -
0001100  4          4        4         -

h = 4
```


#### Parität
Geben Sie für die folgenden Bitfolgen jeweils das Paritätsbit an.

  - 0000000
  - 0000010
  - 1000000
  - 1001001
  - 1111111
  - 1010101

---
- 0000000 -> 0
- 0000010 -> 1
- 1001000 -> 0
- 1001001 -> 1
- 1111111 -> 1
- 1010101 -> 0


#### Serielle Daten dekodieren
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

---
Die empfangene Nachricht lautet: `F2eibier`.

```console
1000110 1 <-
0110010 0
1100101 0
1101001 0
1100010 1
1101001 0
1100101 0
1110010 0

0100100 0
 ^
```

Die korrekte Nachricht ist `Freibier`.


#### CRC-Prüfsumme berechnen
Berechnen Sie für die Nachricht `1101011010` die CRC-Prüfsumme mit dem Prüfpolynom `10011`.

---
```console
11010110100000
10011
--------------
01001110100000
 10011
 -------------
 0000010100000
      10011
      --------
      00111000
        100110
        ------
        011110
         10011
         -----
         01101
```

Die Nachricht mit Prüfsumme ist damit `11010110101101`

Probe

```console
11010110101101
10011
--------------
 1001110101101
 10011
 -------------
      10101101
      10011
      --------
        110101
        10011
        ------
         10011
         10011
         -----
             0
```


#### Daten mit CRC prüfen
Sie haben die Nachricht `100110110101` erhalten. Das Prüfpolynom ist `10011`. Ist die Nachricht korrekt übertragen worden?

---
```console
100110110101
10011
------------
     0110101
      10011
      ------
      010011
       10011
       -----
           0
```

Die Nachricht wurde korrekt übertragen, da der Rest der Division 0 ist.


#### Komprimierung mit RLE
Komprimieren Sie das folgende Bild mit Hilfe eines Run-Length-Encodings (RLE). Geben Sie das Ergebnis an. Verwenden Sie der Einfachheit halber für alle Pixel eine Längenangabe und verzichten Sie auf das Markierungsbyte. Sie können anstatt der Byte-Folge einen Buchstaben für jede Farbe verwenden, z.B. `w` für weiß, `b` für blau etc.

![](img/ghost.png)

Wieviel Platz spart Ihre Codierung im Vergleich zu einer Speicherung ohne Kompression?

---
```console
2w 4b 3w 6b 1w  2b 1s 1w 1b 1s
1w 3b 2w 1b 2w 16b 2b 1w 2b 1w
3b 8w
```

Man benötigt 22 Bytes für das Bild mit einem Run-Length-Encoding.

Ohne sind 8x8 /2 = 32 Bytes nötig.


#### Huffman-Code bestimmen
Erstellen Sie für das folgende Bild einen Huffman Code und codieren Sie es damit

![](img/bird.png)

---
Es sind 64 Pixel, davon sind

  - 28 Weiß - `0`
  - 23 Grün - `10`
  - 9 Türkis - `110`
  - 3 Orange - `1110`
  - 1 Blau - `1111`

![](img/huffman2-solution.png)

```console
   0    0   10   10    0    0    0    0
   0   10   10   10   10    0    0    0
1110   10 1111   10   10    0    0  110
   0   10   10   10  110  110  110  110
   0   10   10   10  110  110  110  110
   0    0   10   10   10   10   10    0
   0    0   10   10   10    0    0    0
   0    0 1110    0 1110    0    0    0
```


#### Huffman-Code bestimmen
Gegeben ist folgende Häufigkeitsverteilung für eine Menge von Zeichen:

| Zeichen	      | R | I | C | H | T | G |
|---------------|---|---|---|---|---|---|
| Häufigkeit [%]|25 |21 |19 |18 |13 |4  |

Generieren Sie einen Huffman-Code für die angegebene Menge

Dekodieren Sie folgende Nachricht (von links nach rechts!) `0010110100110100111` mittels des generierten Code.

---
![](img/huffman-solution.png)

Die Nachricht ist `00 10 11 010 0110 10 0111` = `RICHTIG`


#### Verlustfreie- und Verlustbehaftete Kompression
Geben Sie für die folgenden Verfahre an, ob sie verlustbehaftete oder verlustfreie Kompressionsverfahren sind:

  - RLE
  - LZ77
  - LZW
  - MP3
  - H.264 (MPEG-4)
  - FLAC
  - GZIP
  - JPEG

---
Verlustfreie Verfahren: RLE, LZ77, LZW, FLAC, GZIP
Verlustbehaftete Verfahren: MP3, H.264, JPEG


#### GIF oder JPEG für Comics
Warum ist das GIF-Dateiformat besser geeignet, um farbige Comics zu speichern, als JPEG? Gibt es noch ein anderes Bildformat, dass sich für Comics eignet und das möglicherweise noch besser als GIF ist?

---
Comics haben größere farbige Flächen und nur eine geringe Anzahl von Farben. JPEG ist für Fotos mit vielen unterschiedlichen Farben und feinen Strukturen entwickelt worden. GIF (oder PNG) speichern Paletten und das Bild komprimiert ab: Anstatt 3x8 Bit benötigen sie nur 8 Bit pro Pixel für den Paletteneintrag.


#### Funktionsweise von MP3
Welche Eigenschaft des menschlichen Hörsinns wird vom MP3-Format genutzt?

---
MP3 bedient sich der Psychoakustik und speichert nur für den Menschen wahrnehmbare Anteile des Signals. Dadurch wird bei nicht oder nur kaum verringert wahrgenommener Audioqualität eine starke Reduktion der Datenmenge möglich.
