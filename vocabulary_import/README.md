# Vokabelimport – À plus! 1

883 Einträge aus den sichtbaren Wortlistenseiten 194–238: 784 in Unité 1–8 und 99 in Zusatzmodulen 1–4 sowie 7–8.

## Umfang je Unité (ohne Zusatzmodule)

| Unité | Einträge |
| --- | ---: |
| 1 | 80 |
| 2 | 96 |
| 3 | 135 |
| 4 | 94 |
| 5 | 98 |
| 6 | 97 |
| 7 | 106 |
| 8 | 78 |

## Dateien und Verwendung

- `vokabeln_gesamt.json`: Array aller Datensätze, direkt für einen App-Import lesbar.
- `unite_01.json` bis `unite_08.json`: die Wortlisten je Unité, ohne Zusatzmodule.
- `zusatzmodule.json`: separat filterbare Module. `unit` gibt hier die Unité an, nach der die Kenntnisse vorausgesetzt werden; `module_number` ist die tatsächliche Modulnummer.
- CSV-Dateien: UTF-8 mit BOM, Semikolon als Feldtrenner; exakt dieselben Datensätze. Leere Werte stehen für null. `french_forms` enthält ein JSON-Array.
- `import_postgresql.sql`: legt `public.a_plus_1_vocabulary_import` an und importiert alle Datensätze in einer Transaktion. Wiederholter Import aktualisiert dieselben IDs. Vor der Ausführung Zielprojekt wählen; keine bestehenden Vokabeltabellen werden geändert.
- `manifest.json`: Zählung, Abdeckung und Grenzen der Übertragung.

## Datenfelder

`id` ist eine reproduzierbare Text-ID. `unit`, `volet`, `section_type` und `module_number` ermöglichen Filter. `french` und `german` enthalten die Lernkarte. `french_forms` erhält zusammengehörige Schreibweisen und Formen. `proper_name` ermöglicht das Ausblenden von Eigennamen. `source_page` und `source_image` ermöglichen die Prüfung am Buchfoto.

Mehrere Formen in einer Zeile sind nicht immer austauschbare Antworten: „habiter / j'habite“ entspricht „wohnen / ich wohne“. Bei automatischer Antwortbewertung muss die App zwischen diesen Formen unterscheiden. Geschlechtsformen, Artikel und unregelmäßige Pluralformen bleiben erhalten. `qn` bedeutet jemand; `qc` bedeutet etwas. `+ inf.` bezeichnet die Ergänzung durch einen Infinitiv.

Keine Lautschrift oder Beispielsätze enthalten. Kein automatischer Nachweis jeder regulären Pluralform. Die Kennzeichnung fakultativer/kursiver Wörter wurde nicht übertragen. Die Daten wurden anhand der Fotos visuell übertragen; die App-Integration und ein Abgleich mit ihrem bestehenden Datenbankschema sind noch nötig. Es wurde nichts in eine laufende App-Datenbank geschrieben.

## Beispielabfrage nach dem SQL-Import

```sql
SELECT id, french, german, volet
FROM public.a_plus_1_vocabulary_import
WHERE unit = 3 AND section_type = 'unit' AND NOT proper_name
ORDER BY source_page, id;
```
