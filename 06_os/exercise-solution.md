# Übungen: Betriebssysteme

Für die Ausführung einiger dieser Übungen benötigen Sie ein funktionierendes Linux-System. Hierzu können Sie entweder

  * Ein eigenes Linux in einer virtuellen Maschine installieren (z.B. [VirtualBox](https://www.virtualbox.org) mit [Ubuntu](www.ubuntu.com))
  * Ein Live-Linux auf Ihrem Rechner starten, z.B. [Slax](http://www.slax.org)
  * An der Hochschule in einem der Poolräume eine Linux-VM starten
  * Sich mit Ihrem Fakultätsaccount auf `jonathan.sv.hs-mannheim.de` anmelden
  * Unter Android die Terminal-Emulation [Termux](https://play.google.com/store/apps/details?id=com.termux) installieren


#### Betriebssystem
Was versteht man unter einem Betriebssystem, und was sind dessen zentrale Aufgaben? Welche Betriebssysteme kennen Sie?

---
Ein Betriebssystem, auch OS genannt, ist eine Zusammenstellung von Computerprogrammen, die die Systemressourcen eines Computers wie Arbeitsspeicher, Festplatten, Ein- und Ausgabegeräte verwaltet und diese Anwendungsprogrammen zur Verfügung stellt. Das Betriebssystem bildet dadurch die Schnittstelle zwischen den Hardware-Komponenten und der Anwendungssoftware des Benutzers. Betriebssysteme bestehen in der Regel aus einem Kernel (deutsch: Kern), der die Hardware des Computers verwaltet, sowie speziellen Programmen, die beim Start unterschiedliche Aufgaben übernehmen.

Liste von Betriebssystemen...


#### Betriebssystem auf Ihrem Smartphone
Welches Betriebssystem befindet sich auf Ihrem Smartphone? Von welchem Betriebssystem stammt es ab?

---
  * iOS -> macOS -> Mach + BSD Unix -> Unix
  * Android -> Linux -> Unix
  * Windows Phone -> Windows -> VMS


#### Auf jonathan anmelden
Um auf den Rechner `jonathan.sv.hs-mannheim.de` zugreifen zu können, benötigen Sie einen ssh-Client

  * Windows: [PuTTY](https://putty.org)
  * Mac: ssh-Client ist eingebaut
  * Linux: ssh-Client ist eingebaut
  * Android: [JuiceSSH](https://play.google.com/store/apps/details?id=com.sonelli.juicessh)

Nachdem Sie den Client installiert haben, loggen Sie sich auf `jonathan.sv.hs-mannheim.de` mit Ihrem Fakultätsaccount ein.

Finden Sie heraus, welchen Inhalt die Datei `/etc/exports` hat und geben Sie die ersten 10 Zeilen an.

---
Inhalt der Datei
```console
### /rest/doris anja.ki.hs-mannheim.de(rw,async,no_root_squash)
### /rest/doris doris.ki.hs-mannheim.de(rw,async,no_root_squash)
### /rest/doris 141.19.146.166(rw,async,no_root_squash)

/usbdisk anja.ki.hs-mannheim.de(rw,async,no_root_squash)
/usbdisk doris.ki.hs-mannheim.de(rw,async,no_root_squash)
/usbdisk slm.sv.hs-mannheim.de(rw,async,no_root_squash)
#/usbdisk/nora nora.sr.hs-mannheim.de(rw,async,no_root_squash)
/localhome/schreibwerkstatt anja.ki.hs-mannheim.de(rw,async,no_root_squash)
```


#### Hilfe holen
Öffnen Sie auf einem Rechner mit dem Betriebssystem Linux eine Shell (Terminal). Verwenden Sie das Kommando `man`, um sich die Hilfe zum Kommando `ls` anzusehen. Welche Aufgabe hat die Option `-h` beim Kommando `ls`?

---
Die Option `-h` zeigt die Daten mit Anhängen für die Einheiten (Byte, Kilobyte, Megabyte, Gigabyte, Terabyte and Petabyte) an.


#### Verzeichnisse
Öffnen Sie auf einem Rechner mit dem Betriebssystem Linux eine Shell (Terminal).

  1. Was ist Ihr aktuelles Arbeitsverzeichnis?
  2. Wie können Sie das aktuelle Verzeichnis herausfinden?
  3. Wechseln Sie mit der Shell zum Wurzelverzeichnis (`cd`) und zeigen dort alle Dateien und Verzeichnisse an (`ls`).
  4. Wem gehören die Dateien und Verzeichnisse im Wurzelverzeichnis? Wem in Ihrem Arbeitsverzeichnis?

Schauen Sie sich ein wenig auf dem System um. Was fällt Ihnen auf? Welche Verzeichnisse und Dateien sehen Sie? Was fällt Ihnen auf?

---
Keine allgemeine Musterlösung möglich.


#### Verzeichnisse und Dateien anlegen/löschen
Öffnen Sie auf einem Rechner mit dem Betriebssystem Linux eine Shell (Terminal).

  1. Legen Sie ein Verzeichnis an (`mkdir`)
  2. Wechseln Sie in das Verzeichnis (`cd`)
  3. Erzeugen Sie im Verzeichnis eine Datei mit einem beliebigen Namen (`touch`)
  4. Verlassen Sie das Verzeichnis (`cd`)
  5. Versuchen Sie das Verzeichnis zu löschen (`rmdir`)

Was passiert? Was müssen Sie tun, um das Verzeichnis zu löschen?

---
Das Verzeichnis kann nicht gelöscht werden, weil es nicht leer ist. Man muss entweder erst die Datei löschen (`rm`) und dann das Verzeichnis oder man muss beim `rm` dir Option `-rf` angeben.


#### Dateien kopieren/verschieben
Öffnen Sie auf einem Rechner mit dem Betriebssystem Linux eine Shell (Terminal).

  1. Legen Sie ein Verzeichnis an (`mkdir`)
  2. Wechseln Sie in das Verzeichnis (`cd`)
  3. Erzeugen Sie im Verzeichnis eine Datei mit einem beliebigen Namen und schreiben Sie einen Text in die Datei (`nano` oder `vi`)
  4. Kopieren Sie die Datei (`cp`)
  5. Editieren Sie die kopierte Datei (`nano` oder `vi`)
  6. Vergleichen Sie beide Dateien miteinander (`diff`)

Was sehen Sie?

  7. Legen Sie ein weiteres Verzeichnis an (`mkdir`)
  8. Verschieben Sie eine der beiden Dateien in das neue Verzeichnis (`mv`)

---
Das `diff`-Kommando sollte die Unterschiede zwischen den Dateien zeilenweise anzeigen.


#### Weitere Unix-Kommandos
Schauen Sie sich die Hilfeseiten (oder das Buch "The Linux Command Line") zu den folgenden Kommandos an und geben Sie zu jedem kurz (in einem Satz) dessen Aufgabe an.

  1. `file`
  2. `less`
  3. `cat`
  4. `ln`
  5. `which`
  6. `whoami`
  7. `sort`
  8. `uniq`
  9. `grep`
  10. `head`
  11. `tail`
  12. `wc`
  13. `echo`
  14. `clear`
  15. `history`
  16. `sed`
  17. `du`
  18. `df`

---
Zu jedem Kommando eine kurze Beschreibung...


#### Spezielle Verzeichnisse
Öffnen Sie auf einem Rechner mit dem Betriebssystem Linux eine Shell (Terminal). Schauen Sie sich auf der Festplatte ein wenig um, indem Sie mit `cd` durch die Verzeichnisse gehen und sich deren Inhalt mit `ls` anzeigen lassen.

Wozu dienen die folgenden Verzeichnisse:

  1. `/etc`
  2. `/dev`
  3. `/bin`
  4. `/home`
  5. `/tmp`

---
  1. `/etc`: Konfigurationsdateien
  2. `/dev`: Geräte
  3. `/bin`: Ausführbare Programme
  4. `/home`: Daten der Benutzer
  5. `/tmp`: Temporäre Dateien


#### Berechtigungen
Öffnen Sie auf einem Rechner mit dem Betriebssystem Linux eine Shell (Terminal). Schauen Sie sich die Hilfeseiten (oder das Buch "The Linux Command Line") zu den folgenden Kommandos an und experimentieren Sie damit ein wenig.

  1. `chmod`
  2. `chown`
  3. `chgrp`
  4. `passwd`
  5. `sudo`
  6. `su`

Keine Abgabe nötig! Ihr Wissen wird dann vor Ort geprüft.


#### Prozesse
Öffnen Sie auf einem Rechner mit dem Betriebssystem Linux eine Shell (Terminal). Schauen Sie sich die Hilfeseiten (oder das Buch "The Linux Command Line") zu den folgenden Kommandos an und experimentieren Sie damit ein wenig.

  1. `ps`
  2. `top`
  3. `kill`
  4. `killall`
  5. `shutdown`

Keine Abgabe nötig! Ihr Wissen wird dann vor Ort geprüft.


#### Eingabe- und Ausgabeumlenkung
Öffnen Sie auf einem Rechner mit dem Betriebssystem Linux eine Shell (Terminal). Experimentieren Sie mit der Eingabe-/Ausgabeumlenkung (`>`, `<`) und Pipes (`|`). Siehe hierzu Kapitel 6 in "The Linux Command Line".

Was ist der Unterschied zwischen `>`/`<` und `|`?

---
`>`/`<` verwendet man mit Dateien, `|` mit Programmen.
