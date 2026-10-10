# Bruno Battle – Französisch V1

Spielbare, dependency-freie Web-App (eine `index.html`) mit Vokabeltraining, Grammatik, Transfer, Battle-Modus, Combo-Punkten, Fehlertraining, Highscores und Lernkurven.

## Starten

`index.html` im Browser öffnen oder lokal einen Webserver starten: `python3 -m http.server 8080` und `http://localhost:8080` besuchen.

## Auf Vercel veröffentlichen

1. Neues GitHub-Repository `bruno-battle` erstellen.
2. `index.html`, `manifest.webmanifest`, `vercel.json` und `README.md` im Stammverzeichnis hochladen.
3. In Vercel **Add New → Project**, Repository importieren.
4. Framework Preset **Other** auswählen. Root Directory `./`, Build Command leer lassen, Output Directory leer/Standard; deployen.

## Wichtige Grenzen von V1

- **Keine Supabase-Anbindung:** Fortschritt und Stats werden ausschließlich im jeweiligen Browser mittels `localStorage` gespeichert. Andere Geräte synchronisieren nicht. Keine Kinderprofile mit Passwort und keine öffentliche Rangliste.
- **Kein KI-Einsatz im Spielbetrieb:** Antworten werden nach Regeln abgeglichen. Freie vollständige Sätze werden nur gegen vorbereitete Musterlösungen geprüft. Akzente und gewöhnliche Satzzeichen werden beim Abgleich toleriert. Komplexe Synonyme und semantisch gleichwertige Umformulierungen werden noch nicht zuverlässig erkannt.
- **Lehrwerk:** Die hochgeladenen Fotos enthalten mehrere Unités. Der Starter-Fragenpool nutzt grundlegende Einheiten-1-/Begrüßungs- und Klassenzimmermuster; die genaue Ausgabe-/Lektionen-Zuordnung muss vor einer vollständigen schulbuchtreuen Abdeckung mit Buchseiten/Lehrplan gegengeprüft werden. Die Fragen und Erklärungen sind eigens formuliert, keine Abschrift der Buchseiten.
- **V1 Sicherheit:** Für eine echte Supabase-Mehrbenutzer-Version wird Supabase Auth oder gleichwertige sichere Anmeldung, RLS und eine serverseitige Berechtigungsprüfung benötigt. Eine vierstellige PIN allein genügt nicht.
- **PWA:** Installationsmanifest vorhanden; Offline-Funktion und App-Icons folgen in einer späteren Version.

## Datenmodell für spätere Cloud-Version

users / child_profiles / lessons / questions / answer_attempts / game_sessions; Parent/child roles mit serverseitig überprüften Zugriffsrechten.
