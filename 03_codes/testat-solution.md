# Live-Übung - 16.4.2018

Name: ...............................................  Matrikelnummer: ........................

#### Hamming-Distanz
Bestimmen Sie die Hamming-Distanz des folgende Codes: 1111, 0100, 1001

---
<!-- Spacing: 9 -->

```console
      1111     0100     0001
1111  -        -        -
0100  3        -        -
1001  2        3        -

h = 2
```

#### Parität
Geben Sie für die folgenden Bitfolgen jeweils das Paritätsbit an.

  - 1001010
  - 1100011
  - 1111111

---
<!-- Spacing: 7 -->

  - 1001010 -> 1
  - 1100011 -> 0
  - 1111111 -> 1


#### Daten mit CRC prüfen
Sie haben die Nachricht `10101010100010` erhalten. Das Prüfpolynom ist `10001`. Ist die Nachricht korrekt übertragen worden?

---
<!-- Spacing: 16 -->

```console
10101010100010
10001
--------------
  100010
  10001
  ------------
        100010
        10001
        ------
            00
```

Ja, die Nachricht wurde korrekt übertragen, da das Ergebnis der XOR-Division 0 ist.


#### Huffman-Code bestimmen
Bestimmen Sie für folgende Daten einen Huffman-Code

| Zeichen	      | A | B | C | D |
|---------------|---|---|---|---|
| Häufigkeit [%]|30 |27 |25 |18 |


---
<!-- Spacing: 30 -->

![](img/huffman3-solution.png)

| Zeichen	      | A | B | C | D |
|---------------|---|---|---|---|
| Codierung     |00 |01 |10 |11 |
