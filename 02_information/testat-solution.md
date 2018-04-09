# Live-Übung - 9.4.2018

Name: ...............................................  Matrikelnummer: ........................

#### Umwandlung ins Hexadezimalsystem
Wandeln Sie die folgenden Zahlen in das Hexadezimalsystem um:

  - Dezimal: 255
  - Dezimal: 128
  - Binär: 1111000011110000

---
<!-- Spacing: 7 -->

  - Dezimal: 255 -> ff
  - Dezimal: 128 -> 80
  - Binär: 1111000011110000 -> f0f0


#### Umwandeln ins binäre Zahlensystem
Wandeln Sie die Zahl `29` in eine binäre Darstellung um.

---
<!-- Spacing: 5 -->
`29` -> `11101`


#### Zweierkomplement
Bilden Sie das Zweierkomplement der folgenden binären Zahlen:

  - 101001001000
  - 111001011001

---
<!-- Spacing: 5 -->

  - 101001001000 -> 010110111000
  - 111001011001 -> 000110100111


#### Binäre Addition
Addieren Sie die binären Zahlen 101100110 und 110001100.

---
<!-- Spacing: 8 -->
```console
    101100110
  + 110001100
  -----------
   1011110010
```


#### Binäre Subtraktion
Subtrahieren Sie von der binären Zahl 1001100 die Zahl 101100 unter Verwendung des Zweierkomplements.

---
<!-- Spacing: 12 -->
```console
   0101100
   1010100 (zw. Komplement)
 + 1001100
 ---------
(1)0100000
```


#### Wertebereich
Warum ergibt die Addition `255 + 2` bei einer Zahlendarstellung mit 8 Bit (ohne Vorzeichen) den Wert 1?

---
<!-- Spacing: 10 -->
255 ist die größte Zahl, die man mit 8 Bit darstellen kann (`11111111`). Addiert man dazu eine 2 (`10`), kommt es zu einem Überlauf und das Ergebnis ist binär `00000001` bzw. dezimal `1`.


#### ASCII-Code
Was versteht man unter dem ASCII-Code?

---
<!-- Spacing: 10 -->
Der American Standard Code for Information Interchange (ASCII) ist eine 7-Bit-Zeichenkodierung. Die druckbaren Zeichen umfassen das lateinische Alphabet in Groß- und Kleinschreibung, die zehn arabischen Ziffern sowie einige Interpunktionszeichen (Satzzeichen, Wortzeichen) und andere Sonderzeichen.


#### Abtastrate
Wie muss man die Abtastrate wählen, um ein Signal mit einer Frequenz von 20 kHz korrekt zu digitalisieren?

---
<!-- Spacing: 10 -->
Nach dem Nyquist-Shannon-Abtasttheorem muss die Abtastrate doppelt so hoch sein, wie die Frequenz des Signals, das digitalisiert werden soll. Somit muss man für ein Signal mit 20 kHz eine Abtastfrequenz von mindestens 40 kHz wählen.
