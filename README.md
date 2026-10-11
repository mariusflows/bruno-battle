# Brunos Französisch-Battle – Update 4.0

## Update der bestehenden App

1. ZIP entpacken.
2. Die enthaltenen Dateien in das Hauptverzeichnis von `mariusflows/bruno-battle` hochladen und den Commit bestätigen.
3. Auf die erfolgreiche Vercel-Veröffentlichung warten und die App neu laden (bei Bedarf Strg+F5).
4. Unten steht anschließend „Version 4.0“.

Die vorhandene `config.js` wird weiterverwendet und ist absichtlich nicht im Update-ZIP enthalten. Die bisherige Domain und Browserdaten beibehalten: der vorhandene lokale Spielstand wird übernommen. Eine einmalige Sicherung des alten Speicherstands wird vor dem ersten Speichern der neuen Version angelegt.

Supabase benötigt für dieses Update keine neuen Tabellen. `supabase.sql` ist für eine Neuinstallation bzw. ältere Installationen mit einer Begrenzung auf sechs Units enthalten. Die bereits eingerichtete Datenbank mit Units 1–8 kann weiterverwendet werden.

## Stoffauswahl

Unter Training sind möglich:
- Eine ganze Unit.
- Ein einzelnes Volet.
- Alles bis einschließlich einer Unit und eines Volets.

Beispiel: Bis Unit 2, Volet 2 umfasst Unit 1 komplett sowie Unit 2, Volets 1 und 2. Zusatzmodule sind optional. Bei einer Grenze innerhalb einer Unit werden nur Module früherer, abgeschlossener Units ergänzt. Ein einzelnes Volet enthält keine Zusatzmodule.

Die Volets werden aus der Wortliste ermittelt: Unit 3 hat vier, Unit 8 zwei Volets. Alle Aufgabenarten werden gefiltert. Eigene Übungen können Wörter aus früheren Volets voraussetzen, führen aber keine späteren Inhalte absichtlich ein.

Arena-Battles prüfen jeweils eine ganze Unit mit 12 Fragen. Training erlaubt 8, 12 oder 20 Fragen; bei einem kleineren Aufgabenpool wird die tatsächliche Anzahl vor dem Start angezeigt. Die drei Gegner unterscheiden sich durch Aufgabenlevel und Sieggrenze.

## Inhalte und Antworten

883 Wortlisteneinträge aus Units 1–8 einschließlich Modulen. 1.777 generierte Aufgaben insgesamt. Eigene Grammatik-, Text- und Transferaufgaben sind für Unit 1 vorhanden. Bei anderen Units werden derzeit Vokabeln angeboten; leere Kategorien werden klar angezeigt.

Die vorherigen ungeeigneten Texte wurden ersetzt. Bei echten Leseverständnisfragen bleibt ein vollständiger Lesetext sichtbar. Lückentexte zeigen nur den Text mit Lücke; Übersetzungen keinen französischen Lösungssatz. Zusätzliche Grammatikaufgaben orientieren sich an den hochgeladenen Buchseiten 22/23 (Plural, Pronomen, être).

Groß-/Kleinschreibung und übliche Satzzeichen werden toleriert, typografische Apostrophe vereinheitlicht. Akzentfehler zählen nicht als vollständig richtig und erhalten eine eigene Rückmeldung. Artikel und grammatische Formen bleiben relevant. Bei zusammengefassten Wortlisteneinträgen nennt die Aufgabe ausdrücklich die Anzahl der verlangten Formen. Bei festgelegten Abkürzungen werden Alternativen angenommen.

## Speicherung und Cloud

Einzelne Antworten werden sofort lokal gespeichert. Runden können nach Menüwechsel oder Neuladen fortgesetzt werden, einschließlich letzter Antwort, Texteingabe und sortierter Wörter. Die Rundenstatistik entsteht erst beim Ergebnisbildschirm. Aktive Bearbeitungszeit wird je Frage gemessen; Pausen außerhalb der Runde und ausgeblendete Tabs werden nicht gezählt.

Gelöste Fehler werden nach einer richtigen Antwort aus dem aktuellen Fehlertraining entfernt. Entfernte alte Aufgaben werden nicht mehr als offene Fehler gezählt; die historische Statistik bleibt erhalten.

Cloud-Synchronisierung führt Antwort- und Rundenereignisse zusammen. Fehlende Battle-Ergebnisse werden erneut gesendet; bereits vorhandene IDs werden nicht doppelt eingetragen. Speicherfehler werden angezeigt. Gleichzeitige Profiländerungen eines anderen Geräts werden erkannt und verlangen einen erneuten Synchronisierungsversuch, anstatt den fremden Stand ungeprüft zu überschreiben. Zurücksetzen und Löschen werden mit Markierungen synchronisiert, damit ältere Geräte den entfernten Stand nicht wiederherstellen. Cloud-Konten erhalten getrennte lokale Speicherbereiche.

## Prüfung

Siehe `PRUEFBERICHT.md`. Die automatische Funktionsprüfung läuft in einer DOM-Simulation, die Cloud-Prüfung gegen eine simulierte Supabase-Schnittstelle. Ein vollständiger visueller Browser- und ein authentifizierter Test gegen das echte Supabase-Projekt stehen noch aus.
