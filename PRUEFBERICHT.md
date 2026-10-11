# Prüfbericht – Update 4.0

Stand: 11. Oktober 2026.

## Behobene Fehler

1. Lösungssätze wurden vor der Antwort eingeblendet. Eigene Texte neu aufgebaut; Lücken und Übersetzungen verraten keine Musterlösung mehr.
2. Der Volet-Filter galt nur für Vokabeln. Alle Aufgabenarten tragen jetzt eine Zuordnung und werden einheitlich gefiltert.
3. Unpassender Wortschatz in Unit-1-Texten (z. B. sympa, contents und Schulsachen aus dem Modul) wurde entfernt bzw. durch zugeordnete Aufgaben ersetzt.
4. Offene Kontextlücken wie „ma ___“ konnten mehrere Antworten haben. Neue Lücken haben einen deutschen Hinweis oder verlangen eine bestimmte Verbform.
5. Unit 3, Volet 4 fehlte in der Auswahl; Unit 8 zeigte ein nicht vorhandenes Volet 3. Die Auswahl entsteht nun aus der Wortliste.
6. Falsche Vokabel-Antwortoptionen konnten aus späteren Volets stammen. Sie stammen nun aus demselben Volet und derselben Abschnittsart. Grammatikoptionen verwenden nur bis zum jeweiligen Volet eingeführte Formen.
7. Zulässige Antwortvarianten, etwa Bonjour statt Salut bei der Vorstellungsaufgabe, wurden abgelehnt. Entsprechende Alternativen ergänzt. Akzente werden nicht mehr kommentarlos ignoriert.
8. Eine richtige Wiederholung entfernte Aufgaben nicht aus dem Fehlertraining. Maßgeblich ist jetzt die jüngste Antwort je Aufgabe.
9. Menüwechsel oder Neuladen verlor die laufende Runde. Runden, Eingaben und Feedback werden gespeichert und können fortgesetzt werden.
10. Der Zeitbonus verwendete die durchschnittliche Zeit seit Rundenbeginn. Er bezieht sich nun auf die aktive Zeit der jeweiligen Frage.
11. Bei genau einer fertigen Runde blieb die Statistikkurve unsichtbar. Jeder Wert erhält einen sichtbaren Punkt; der Leerzustand erklärt, dass nur abgeschlossene Runden in der Kurve stehen.
12. Gegner-Rekorde wurden teilweise über verschiedene Units vermischt. Rekorde und Statistiken sind nach Unit getrennt. Gesamt-XP ist ausdrücklich als Gesamtwert gekennzeichnet.
13. Die Meldung nach dem Endboss versprach eine nicht vorhandene nächste Arena. Sie nennt nun den erreichten Endboss-Sieg.
14. Unterschiedliche Rundenlängen erschwerten den Vergleich von Battle-Punkten. Neue Arena-Battles haben 12 Fragen; die Trainingslänge bleibt wählbar. Historische Ergebnisse bleiben erhalten.
15. Fehlgeschlagene Battle-Uploads wurden nicht nachgeholt. Synchronisierung lädt alle fehlenden abgeschlossenen Battles hoch und vermeidet Duplikate.
16. Speicherfehler konnten von einer Erfolgsmeldung verdeckt werden. Erfolg wird erst nach allen erfolgreichen Schritten gemeldet.
17. Die Cloud wählte nur das Profil mit der jüngsten fertigen Runde. Antwort- und Rundenereignisse werden nun zusammengeführt; konkurrierende Profiländerungen werden vor dem Schreiben geprüft.
18. Ein älteres Gerät konnte zurückgesetzte/gelöschte Fortschritte wiederherstellen. Reset-Markierungen und Löschmarkierungen verhindern dies.
19. Lokale Profile konnten beim Wechsel des Elternkontos vermischt werden. Konten werden lokal getrennt gespeichert.
20. Die mitgelieferte alte SQL-Datei begrenzte Units auf 1–6. Neuinstallation/Upgrade unterstützt 1–8.
21. Eine fehlende vocabulary.js führte zu einem leeren Bildschirm. Nun erscheint ein konkreter Ladehinweis.
22. Browser konnten die alte app.js aus dem Cache verwenden. Die Startseite lädt versionierte App- und Vokabeldateien.

## Ausgeführte Prüfungen

28 automatisierte Prüffälle in drei Testgruppen:

- 13 DOM-Integrationstests: Datenstruktur, eindeutige Aufgaben-IDs, alle Stoffgrenzen, Modulgrenzen, keine verratene Antwort in Lücken/Übersetzungen, Varianten/Akzente, leere Kategorien, Rundenfortsetzung, Doppelbewertung, Trainingsabschluss, Fehlertraining, Battles/Freischaltung, Menüansichten, Profilverwaltung und Zusammenführung.
- 9 Cloud-Simulationstests: erstmaliges Hochladen, wiederholtes Hochladen ohne Duplikate, fehlgeschlagener Upload plus Wiederholung, konkurrierende Änderung, ehrliche Fehleranzeige, Zusammenführung zweier Geräte, Zurücksetzen, Löschen und Kontentrennung.
- 6 zusätzliche Tests: sämtliche 1.777 Aufgaben werden angezeigt und ihre Musterlösung geprüft; variable Volet-Anzahl; Erhalt einer Texteingabe; V3-Spielstandübernahme; Verhalten nach Reset; Trennung beim ersten Kontowechsel.

JavaScript-Syntaxprüfung bestanden. Alle 883 Wortlisteneinträge auf erforderliche Felder und die generierten Aufgaben auf eindeutige IDs und verfügbare Antwortoptionen geprüft. Die Volet-Grenzen werden für alle acht Units geprüft. Unit-1-Aufgaben anhand der vorhandenen Wortliste und relevanten Buchseiten neu zugeordnet; Übungen auf S.22/23 einbezogen.

## Grenzen der Prüfung

- Der echte Chromium-Browser ließ sich wegen einer Laufzeitbeschränkung nicht starten. Die Tests verwenden jsdom; sie prüfen DOM und Interaktionen, aber kein tatsächliches Layout, keine Mobil-Tastatur und keine Bildschirmdarstellung.
- Kein Zugriff auf die angemeldete Supabase-Sitzung des Nutzers: Datenbanktests verwenden eine API-Simulation. Ein echter Test mit E-Mail-Anmeldung auf zwei Geräten ist nach dem Update erforderlich.
- Kein erneuter vollständiger Zeichen-für-Zeichen-Abgleich aller 883 Einträge gegen sämtliche Buchfotos in diesem Update. Der bestehende Wortlistenbestand wurde übernommen und strukturell geprüft.
- Eigene Text- und Grammatikaufgaben außerhalb Unit 1 sind noch nicht vorhanden. Eine leere Kategorie wird angezeigt und kann nicht gestartet werden.
- Offene freie Übersetzungen verwenden geprüfte Musterlösungen und explizite Alternativen, keine KI-Bewertung aller denkbaren Formulierungen.

## Kurzer Test nach dem Upload

1. Unten „Version 4.0“ prüfen.
2. Training → einzelnes Volet → Unit 1, Volet 1: nur entsprechende Aufgaben.
3. Eine Runde vollständig beenden: in Statistik erscheint ein Punkt.
4. Cloud → Jetzt synchronisieren: Erfolgsmeldung prüfen.
5. Auf einem zweiten Gerät mit derselben Eltern-E-Mail anmelden: fertige Runden und XP prüfen.

## Ergänzung 4.1: Battle-Stoffauswahl

- Alle drei Stoffauswahlen jetzt direkt in der Arena verfügbar.
- Battle starten übernimmt die Auswahl unverändert, z. B. bis Unit 2, Volet 2.
- Gegnerfreischaltungen und Rekorde getrennt nach Umfang, Ziel-Unit, Ziel-Volet und Zusatzmodulen.
- Wechsel des Stoffumfangs kann keinen gesperrten Gegner versehentlich ausgewählt lassen.
- Auswahl bleibt nach Neuladen erhalten; eine pausierte Runde behält ihren ursprünglichen Stoff.
- Alle individuellen Battles bleiben im persönlichen Cloud-Spielstand; die gemeinsame Bestenliste zeigt ganze Units ohne Zusatzmodule. Keine SQL-Änderung erforderlich.

Sechs zusätzliche DOM-Tests für diese Änderungen bestanden. Die 13 DOM-Integrationstests wurden erneut ausgeführt. Die Cloud-Simulation wurde um die Trennung individueller Battle-Umfänge von der gemeinsamen Rangliste erweitert (zehn Tests bestanden). Die sechs Zusatztests aus 4.0 und die vollständige Aufgabenprüfung bleiben gültig; an Aufgabeninhalten wurde in 4.1 nichts geändert.
