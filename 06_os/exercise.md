# Übungen

#### OS auf dem Smartphone
Welches Betriebssystem befindet sich in welcher Version auf Ihrem Smartphone? Welche wesentlichen Eigenschaften hat dieses Betriebssystem?


#### Shell benutzen
Öffnen Sie auf einem Rechner mit dem Betriebssystem Windows oder Linux eine Shell.

  * Was ist Ihr aktuelles Arbeitsverzeichnis?
  * Wechseln Sie mit der Shell zum Wurzelverzeichnis (cd) und zeigen dort alle Dateien und Verzeichnisse an (ls bzw. dir)!
  * Erstellen Sie automatisch eine Textdatei, welche den Inhalt des Wurzelverzeichnisses enthält z.B. mit `ls > inhalt.txt`.
  * Lassen Sie sich den Inhalt der entstandenen Textdatei anzeigen.
  * Sie haben vermutlich im Wurzelverzeichnis kein Schreibrecht, wo muss die Textdatei daher liegen?
  * Wem gehören die Dateien und Verzeichnisse im Wurzelverzeichnis bzw. in Ihrem Arbeitsverzeichnis? Finden Sie das heraus!
  * Beschäftigen Sie sich mit den in Unix bzw. Linux verfügbaren Kommandos `grep`, `find` und `sed`! Was können Sie damit machen?


#### Betriebssystem
Was versteht man unter einem Betriebssystem, und was sind dessen zentrale Aufgaben?


#### Mikrokernel
Beschreiben Sie den Unterschied zwischen einem Mikrokernel und einem monolithischen Kernel. Untersuchen Sie dabei die Rolle der Gerätetreiber. Kann ein Gerätetreiber vollständig außerhalb des Kernels liegen?


#### Docker
Informieren Sie sich über Docker. Führen Sie dazu eine Internet-Recherche durch! Welches Problem wird durch diese sog. Container gelöst? Vergleichen Sie Docker mit Typ-2 Hypervisoren. Welche Gemeinsamkeiten und welche Unterschiede gibt es?


#### Prozess
Was versteht man unter einem Prozess?


#### Prozesstabelle
Was versteht man unter einer Prozesstabelle, und was steht im Prozess- kontrollblock?


#### Zustände eines Prozesses
Welche elementaren Zustände kann ein Prozess einnehmen?


#### Scheduler
Was versteht man unter einem Scheduler, und nach welchen Zielvorgaben kann man das Scheduling gestalten?


#### Scheduling
Nach welchen Strategien kann die Zuteilung des Prozessors an einen Prozess erfolgen?


#### Präemptiv vs. kooperatives Scheduling
Worin besteht der Unterschied zwischen dem präemptiven (verdrängenden) und dem nicht präemptiven (nicht verdrängenden) Scheduling?


#### Thread vs. Prozess
Worin besteht der Unterschied zwischen Prozessen und Threads? Worin
bestehen die jeweiligen Vor-/Nachteile?


#### Race Condition
Was versteht man unter einer Race Condition? Finden Sie ein Beispel
aus dem täglichen Leben.


#### Vermeidung von Race Conditions
Mit welchem abstrakten Konzept werden Race Conditions vermieden?


#### Kritische Abschnitte
Wie lassen sich kritische Bereiche implementieren?


#### Speicherverwaltung im Mehrprozessbetrieb
Mit welchen Problemen hat man es in der Speicherverwaltung im Mehrprozessbetrieb zu tun?


#### Virtueller Speicher
Worin besteht das Konzept des virtuellen Speichers?


#### Seitenfehler
Was passiert, wenn sich herausstellt, dass bei der Adressübersetzung die gesuchte Seite eines Programms sich nicht im Hauptspeicher, sondern noch in der Auslagerungsdatei befindet?


#### Dateisystem -- Aufgabe
Was ist und welche Aufgaben hat ein Dateisystem?


#### Hierarchisches Dateisystem
Was ist ein hierarchisches Dateisystem?


#### Kontextwechsel
Wenn die Zeitscheibe des Betriebssystems 50 Millisekunden beträgt und ein Kontextwechsel höchstens eine Mikrosekunde: Wie viele Prozesse kann das Betriebssystem maximal in einer Sekunde bedienen?


#### Interrupt-Behandlung
Beschreiben Sie die Schritte, die eine CPU durchführt, wenn ein Interrupt auftritt.


#### Signale
Angenommen eine zweigleisige Bahnstrecke führt durch einen einspurigen Tunnel. Folgendes Signalsystem wurde installiert: Immer wenn ein Zug in den Tunnel einfährt, werden zwei Signale an den Eingängen des Tunnels auf rot geschaltet. Beim verlassen des Tunnels wird das Signal wieder auf grün gestellt. Was ist das Problem mit diesem System?


#### Batchprozessing vs. interaktiver Nutzung
Was ist der Unterschied zwischen Batchprozessing und interaktiver Nutzung eines Betriebssystems?


#### Embedded System vs. PC
Welches ist der Unterschied zwischen einem eingebetteten System (__embedded System__) und einem Personal Computer (PC)?


#### Multitasking-Betriebssystem
Was ist ein Multitasking-Betriebssystem?


#### Multitasking Beispiele
Wann profitieren Sie als Benutzer eines PCs davon, dass Ihr Betriebssystem Multitasking unterstützt? Geben Sie Beispiele für solche Situationen.


#### User-Interface vs. Kernel
Welche Aufgabe hat das User-Interface eines Betriebssystems? Welche der Kernel?


#### Prozesstabelle
Welche Informationen finden sich in der Prozesstabelle eines Betriebssystems?


#### Prozessstatus
Was ist der Unterschied zwischen einem Prozess im Zustand "lauffähig" und im Zustand "wartend"?


#### Virtueller vs. physischer Speicher
Was ist der Unterschied zwischen virtuellem und physischen Speicher (Hauptspeicher)?


#### Dateizugriff im Multitasking-Betriebssystem
Welche Probleme entstehen in einem time-sharing oder multitasking Betriebssystem, wenn zwei Prozesse zur selben Zeit auf eine Datei zugreifen wollen?


#### Bootvorgang -- Ablauf
Beschreiben Sie kurz den Bootvorgang eines Rechners zusammen.


#### Bootvorgang -- Notwendigkeit
Warum benötigt man einen speziellen Bootvorgang?


#### Ressourcen
Listen Sie mindestens fünf Ressourcen auf, für die das Betriebssystem den Zugriff koordinieren muss.


#### I/O-bound vs. CPU-bound
Man sagt, ein Prozess sei __I/O-bound__, wenn er sehr viele Eingabe/Ausgabe-Operationen durchführt. Man spricht von einem __CPU-bound__ Prozess, wenn er viele Berechnungen auf der CPU durchführt. Wenn sowohl ein I/O-bound, als auch ein CPU-bound Prozess auf eine Zeitscheibe warten, wer sollte sie zuerst bekommen? Warum?


#### Zeitscheibe abgeben
Geben Sie eine Situation an, in der ein Prozess nicht die ganze Zeitscheibe benötigt, die ihm zugewiesen wurde.


#### Aktivitäten des Administrators
Geben Sie zwei Aktivitäten an, die von einem Administrator durchgeführt werden können, nicht aber von einem normalen Benutzer.


#### Speicherschutz
Wie verhindert das Betriebssystem, dass ein Prozess auf den Speicher eines anderen Prozesses zugreifen kann?


#### Meltdown / Spectre
Beschreiben Sie wir der Meltdown und der Spectre Angriff funktionieren.


#### Firmware vs. OS-Update
Was ist der Unterschied zwischen einem Firmware-Update und einem Betriebssystemupdate?

