# Übungen

#### 1. Datenbankmodell
Welchen Zweck hat ein Datenbankmodell?


#### 2. DBMS vs. Anwendung
Fassen Sie die Aufgaben einer Anwendungssoftware und eines Datenbanksystems zusammen.


#### 3. Relationen lesen
Beantworten Sie die folgenden Fragen basierend auf der unten dargestellten Datenbankrelation:

  1. Wer ist der Sekretär in der Buchhaltung (Accounting) mit Erfahrungen in der Personalabteilung (Personnel)?
  2. Wer ist der Manager des Vertriebs (Sales)?
  3. Welche Aufgabe hat G. Smith aktuell?

_EMPLOYEE_

| EmplId | Name            | Address          | SSN       |
|--------|-----------------|------------------|-----------|
| 25X15  | E. Baker        | 33 Nowhere St.   | 111223333 |
| 34Y70  | H. Clark        | 563 Downtown Ave | 999009999 |
| 23Y34  | G. Smith        | 1555 Circle Dr.  | 111005555 |

_JOB_

| JobId | JobTitle      | SkillCode | Dept       |
|-------|---------------|-----------|------------|
| S25X  | Secretary     | T5        | Personnel  |
| S26Z  | Secretary     | T6        | Accounting |
| F5    | Manager       | FM3       | Sales      |

_ASSIGNMENT_

| EmplId | JobId      | StartDate  | TermDate   |
|--------|------------|------------|------------|
| 23Y34  | S25X       | 1999-03-01 | 30-04-2010 |
| 34Y70  | F5         | 2009-10-01 | -          |
| 23Y34  | S26Z       | 2010-05-01 | -          |


#### 4. Relationen auswerten
Basierend auf den in der vorhergehenden Aufgabe angegebenen Tabellen:

  * Wie kann man die Liste aller Job-Bezeichnungen in der Personalabteilung finden?
  * Wie kann man die Liste aller Mitarbeiter zusammen mit den jeweiligen Abteilungen finden?

Übertragen Sie Ihre Antworten in einem zweiten Schritt in SQL-Statements.


#### 5. Beziehungen zwischen Tabellen
Wie werden die verschiedenen Beziehungen in einer Datenbank dargestellt=


#### 6. Transaktion
Was versteht man unter einer Datenbanktransaktion?


#### 7. Datei vs. Datenbank
Welche Vorteile hat eine Datenbank gegenüber einer Datei?


#### 8. Vorteile eines DBMS
Welche Vorteile bringt es einer Anwendung, die Datenhaltung in einem getrennten Datenbanksystem durchzuführen?


#### 9. Datenbank entwerfen
Entwerfen Sie ein Datenbankschema für die Speicherung von Komponisten, ihren Kompositionen und den Lebensdaten der Komponsiten.


#### 10. Datenbank entwerfen -- komplex
Entwerfen Sie ein Datenbankschema für die Verwaltung von Teilen, Lieferanten und Kunden

  * Jedes Teil kann von mehreren Lieferanten bezogen werden
  * Jedes Teil kann von unterschiedlichen Kunden bestellt werden
  * Jeder Lieferant kann mehrere Teile und Kunden haben
  * Jeder Kunde kann Teile von verschiedenen Lieferanten beziehen
  * Jeder Kunde kann dasselbe Teil von unterschiedlichen Lieferanten beziehen


#### 11. Transaktionen
Warum ist es wichtig bei Transaktionen zwischen exklusiven und gemeinsamen Zugriff auf Daten in der Datenbank zu unterscheiden?

