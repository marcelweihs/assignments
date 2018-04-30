# Übung

## Vorbereitungen
Für diese Übung müssen Sie eine virtuelle Linux-Maschine im bwLehrPool starten. Verwenden Sie bitte die VM mit dem Namen "PR3". Bitte denken Sie daran, dass nur die Daten erhalten bleiben, die Sie im Ordner `PERSISTENT` ablegen.


## ssh-Login mit Schlüssel auf jonathan
In dieser Aufgabe werden Sie sich einen Zugang zu `jonthan` einrichten, bei dem Sie kein Passwort mehr eingeben müssen. Hierzu werden Sie auf `jonathan` einen öffentlichen SSH-Schlüssel hinterlegen.

  1. Schauen Sie sich die Hilfe von `ssh-keygen` an und finden Sie heraus, wie man ein Schlüsselpaar generiert
  2. Installieren Sie den öffentlichen Schlüssel auf jonathan in `~/.ssh/authorized_keys`.
  3. Installieren Sie den privaten Schlüssel testweise im Verzeichnis `~/.ssh/` des bwLehrPool-Rechners. Setzen Sie die Berechtigungen auf dem Verzeichnis `~/.ssh` und der Schlüsseldatei so, dass nur Sie sie lesen dürfen. Diese Einstellung wird den Neustart des Rechners nicht überstehen, reicht aber für den Test.
  4. Testen Sie, ob Sie sich ohne Passwort an `jonathan` anmelden können.


## Shell-Skript
Schreiben Sie ein Shell-Skript für die Bash, das folgendes macht:

  1. Alle Zeilen der Datei `kafka.txt` werden ausgeben, in denen das Wort "Samsa" vorkommt. Zeilen, in denen "Frau Samsa" vorkommt werden aber nicht ausgegeben.
  2. Zu Beginn jeder gefundenen Zeile soll die Zeilennummer ausgegeben werden.
  3. Das Ergebnis soll in eine Textdatei namens `samsa.txt` geschrieben werden.
  4. Geben Sie im nächsten Schritt alle Zeilen aus `kafka.txt` aus, die "Frau Samsa" enthalten, ebenfalls mit Zeilennummern davor.
  5. Hängen Sie das Ergebnis an die Datei `samsa.txt` aus Schritt 3 an.
  6. Kopieren Sie nun die ersten und letzten 3 Zeilen von `samsa.txt` in eine neue Datei `samsa_kurz.txt`.
  7. Als letztes zählen Sie bitte die Zeichen und Wörter in `samsa.txt` und geben Sie diese auf der Console aus.

Abgabe: Sie müssen Ihr fertiges Shell-Skript demonstrieren.


## Links
In dieser Übung lernen Sie Hard- und Softlinks kennen.

### Kopieren

  1. Legen Sie eine Datei mit beliebigem Inhalt an (`vi` oder `nano`) unter dem Namen `original` an.
  2. Kopieren Sie de Datei mit `cp` in eine neue Datei `original_kopie`
  3. Verändern Sie den Inhalt der Datei `original_kopie`
  4. Vergleichen Sie den Inhalt der Dateien mit `diff`

### Hardlinks
Ausgehend von der Datei `original` aus dem ersten Teil:

  1. Geben Sie den Inhalt der Datei `original` aus
  2. Legen Sie mit `ln` einen Hardlink mit Namen `original_hard` für die Datei `original` an.
  3. Öffnen die Datei `original_hard` und zeigen Sie den Inhalt an
  4. Verändern Sie den Inhalt von `original_hard` mit einem Texteditor
  5. Zeigen Sie den Inhalt von `original` an. 

Was ist passiert?

### Softlinks
Ausgehend von der Datei `original` aus dem ersten Teil:

  1. Geben Sie den Inhalt der Datei `original` aus
  2. Legen Sie mit `ln -s` einen Softlink mit dem Namen `original_soft` für die Datei `original` an.
  3. Zeigen Sie sich mit `ls -axl` das aktuelle Verzeichnis an. Was sehen Sie?
  4. Öffnen die Datei `original_soft` und zeigen Sie den Inhalt an.
  5. Verändern Sie den Inhalt von `original_soft` mit einem Texteditor
  6. Zeigen Sie den Inhalt von `original` an. 

Was ist passiert?
 
  1. Löschen Sie die Datei `original` au dem zweiten Teil.
  2. Zeigen Sie sich den Inhalt von `orginal_hard` an. Was sehen Sie?
  2. Zeigen Sie sich den Inhalt von `original_soft` an. Was passiert?


## Prozesskontrolle

### Prozesse anzeigen

  1. Zeigen Sie die Liste aller laufenden Prozesse an
  2. Vergleichen Sie Ihre Ausgabe mit den Daten des Nachbarn

Was fällt Ihnen auf?


### Prozess beenden

  1. Starten Sie einem Terminal den Editor `vi`
  2. Öffnen Sie ein zweites Terminal
  3. Lassen Sie sich die Prozessliste 
  4. Finden Sie den von Ihnen gestarteten Prozess `vi`
  5. Beenden Sie den Prozess `vi` mit `kill`

Was passiert?


