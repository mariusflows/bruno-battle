# Bruno Battle V3

## Update
1. ZIP entpacken.
2. Alle Dateien und den Ordner vocabulary_import in das bestehende GitHub-Repository hochladen und vorhandene App-Dateien ersetzen.
3. Bestehende ausgefüllte config.js behalten; sie enthält die aktuelle Cloud-Konfiguration.
4. Änderungen committen. Nach dem Vercel-Deployment Seite neu laden.
5. Training öffnen, Unité auswählen und starten.

883 Wortlisteneinträge: 784 in Units 1–8, 99 in Zusatzmodulen. Filter nach Unit und Volet. Zusatzmodule optional. Alle Vokabeln sind in vocabulary.js enthalten; ein SQL-Import ist zum Spielen nicht erforderlich.

V2-Spielstände bleiben auf derselben Domain im selben Browser erhalten (derselbe Speicherschlüssel). Browserdaten nicht löschen. Gegnerfortschritt wird pro Unit gespeichert. Frühere Antworten auf die alten Vokabelfragen bleiben statistisch erhalten, ihre alten Fehlerkarten werden nicht auf neue Wort-IDs geraten. Neue Fehlerkarten verwenden die neuen Vokabeln.

Grammatik, eigenständig verfasste Textmissionen und Transferaufgaben aus V2 gelten weiterhin für Unit 1. Buchübungen 22/23 sind in diesem Update noch nicht ergänzt. Keine Lautschrift oder Beispielsätze aus der Wortliste. Zusammengehörige Formen bleiben in einer Karte; bei Texteingabe alle Formen durch / getrennt eingeben. Akzente werden wie in V2 tolerant bewertet.

Supabase-Konfiguration und supabase.sql aus V2 bleiben unverändert. Cloud-Einrichtung und Test am tatsächlichen Supabase-Projekt sind nicht Bestandteil dieses Updates. vocabulary_import enthält die JSON/CSV-Quelldaten sowie einen optionalen PostgreSQL-Import in eine separate Tabelle; die App nutzt diese Tabelle nicht.

Validierung: JavaScript-Syntax, Datenzählung, Frageauswahl für Units 1–8, Modul-/Voletfilter, Fehlerauswahl und Speichern geprüft. Vollständiger Browsertest und Supabase-Test stehen aus.
