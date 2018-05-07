# Live-Übung -- 7.5.2018

Name: .........................................................  Matrikelnummer: ..............................

#### Textdatei sortieren
Sie haben im aktuellen Verzeichnis eine Textdatei mit den Titeln Ihrer Lieblingsfilme (`filme.txt`). Geben Sie bitte die nötigen Eingaben in der Linux-Shell an, um die Datei zu sortieren und das Ergebnis in einer neuen Datei (`filme_sorted.txt`) zu speichern.

---
<!-- Spacing: 7 -->

```console
cat filme.txt | sort > filme_sorted.txt
```


#### Hilfe holen
Wie können Sie sich die Hilfeseiten zum Kommando `sort` anzeigen lassen?

---
<!-- Spacing: 6 -->
Mit `man sort`.


#### Verzeichnisse
Wie können Sie das aktuelle Verzeichnis unter Linux (Unix) wechseln? Wie lassen Sie sich das aktuelle Verzeichnis anzeigen?

---
<!-- Spacing: 8 -->
Mit `cd VERZEICHNIS` kann man das Verzeichnis wechseln, mit `pwd` das aktuelle Verzeichnis ausgeben lassen.


#### Spezielle Verzeichnisse
Welche Daten findet man im Verzeichnis `/dev` unter Linux, welche unter `/etc`?

---
<!-- Spacing: 10 -->
In `/dev` liegen die Gerätedateien, in `/etc` die meisten Konfigurationen.


#### sudo
Warum darf nicht jeder Benutzer (z.B. Sie auf `jonathan`) das Kommando `sudo` verwenden?

---
<!-- Spacing: 10 -->
Das Kommando `sudo` führt das darauf folgende Kommando mit Administratorrechten aus. Könnte jeder einfach `sudo` ausführen, hätte er damit Zugriff auf alle Dateien und Konfigurationen des Rechners.


#### Berechtigungen
Sie sehen in einem Verzeichnis den folgenden Eintrag:

```console
-rw-rw-r--   1 thomas  staff   6,1K 28 Sep  2017 datei.txt
```

Was können Sie über die Berechtigungen dieser Datei sagen?

---
<!-- Spacing: 8 -->
Die Datei gehört dem Benutzer `thomas` und der Gruppe `staff`. Benutzer und Gruppe dürfen die Datei lesen und schreiben, alle anderen dürfen sie lesen. Sie ist nicht ausführbar.


#### Prozesse
Wie können Sie unter Linux (Unix) eine Liste der laufenden Prozesse anzeigen und dann einen davon beenden?

---
<!-- Spacing: 8 -->
Mit `ps` oder `top` kann man die Prozessliste sehen und mit `kill` einen Prozess gezielt beenden.


#### Inhalte finden
Mit welchem Kommando können Sie Dateien nach einem bestimmten Inhalt durchsuchen und sich dann die Treffer anzeigen lassen?

---
<!-- Spacing: 8 -->
Mit `grep` kann man die Inhalte von Dateien durchsuchen. Die Datei und die gefundene Zeile wird ausgegeben.
