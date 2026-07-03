# Sacred Dominion - Entwicklungsphasen

Diese Roadmap zeigt den aktuellen Stand von **Sacred Dominion**.

Grundsatz:

```text
Erst spielbar, dann mächtig, dann schön.
```

Die Mod wird mit **Englisch als Hauptsprache** entwickelt. Deutsch wird als vollständige Übersetzung gepflegt.

---

## Aktueller Stand

| Phase | Status |
| --- | --- |
| Phase 0 - Konzept | Abgeschlossen |
| Phase 1 - Mod-Grundgerüst | Implementiert, lokaler Test offen |
| Phase 2 - Erste aktive Faith-Mechaniken | Implementiert, lokaler Test offen |
| Phase 3 - Stadtbasierte Glaubensaktionen | Implementiert als erster Projekt-Pass, lokaler Test offen |
| Phase 4 - Reichsweite Dekrete | Noch nicht gestartet |
| Phase 5 - Eifer und Spaltung | Noch nicht gestartet |
| Phase 6 - Religiöse Einheiten | Noch nicht gestartet |
| Phase 7 - UI | Noch nicht gestartet |
| Phase 8 - Balance und Workshop | Noch nicht gestartet |

---

## Phase 0 - Konzept

**Ziel:** Kernidee und Grenzen festlegen.

### Erledigt

- Projektname steht: `Sacred Dominion`
- Grundidee steht: Faith wird aktive Machtressource
- Roadmap existiert
- Design-Dokument existiert
- Balance-Dokument existiert
- Lokalisierungsregel existiert

### Status

Phase 0 ist abgeschlossen.

---

## Phase 1 - Mod-Grundgerüst

**Ziel:** Civilization VI erkennt und lädt die Mod.

### Erledigt

- `SacredDominion.modinfo` existiert
- `Text/en_US.xml` existiert
- `Text/de_DE.xml` existiert
- Basisdateien in `Data/` existieren
- `Docs/LOAD_TEST.md` existiert
- `Docs/PHASE1_STATUS.md` existiert

### Offen

- lokaler Civ-VI-Ladetest

### Status

Phase 1 ist implementiert, aber nicht final abgeschlossen.

---

## Phase 2 - Erste aktive Faith-Mechaniken

**Ziel:** Faith wird über bestehende Civ-VI-Systeme aktiver, ohne eigene UI.

### Erledigt

Es gibt 3 Glaubenssätze:

- Sacred Administration / Heilige Verwaltung: Tempel geben +1 Glauben
- Charitable Works / Armenfürsorge: Schreine und Tempel geben +1 Nahrung
- Pilgrimage Network / Pilgernetzwerk: Tempel geben +1 Kultur

Es gibt 2 Politikkarten:

- Tithe Administration / Zehntverwaltung: Tempel geben +1 Gold, solange die Politik eingesetzt ist
- Order Patronage / Ordensförderung: Tempel geben +1 Glauben, solange die Politik eingesetzt ist

### Dateien

```text
Data/Beliefs.sql
Data/Policies.sql
Data/Modifiers.sql
Text/en_US.xml
Text/de_DE.xml
Docs/PHASE2_STATUS.md
Docs/PHASE2_MODIFIERS.md
Docs/PHASE2_TEST.md
Docs/PHASE2_STATIC_REVIEW.md
```

### Offen

- lokaler Record-Test
- lokaler Modifier-Test
- Prüfung von `Database.log`
- Prüfung von `Localization.log`

### Status

Phase 2 ist implementiert, aber nicht final abgeschlossen.

---

## Phase 3 - Stadtbasierte Glaubensaktionen

**Ziel:** Städte bekommen erste aktive Faith-Aktionen über bestehende Projektmechaniken.

### Erledigt

Es gibt 4 Holy-Site-Projekte:

- Sermon Campaign / Predigtkampagne: Produktion zu Glauben
- Charitable Works / Armenfürsorge: Produktion zu Nahrung
- Holy Order / Heilige Ordnung: Produktion zu Glauben und Gold
- Pilgrimage Center / Pilgerzentrum: Produktion zu Kultur und Glauben

### Dateien

```text
Data/Projects.sql
Text/en_US.xml
Text/de_DE.xml
Docs/PHASE3_STATUS.md
Docs/PHASE3_MECHANICS.md
Docs/PHASE3_TEST.md
README.md
```

### Offen

- prüfen, ob die Projekte im Spiel erscheinen
- prüfen, ob sie nur in Städten mit Heiliger Stätte erscheinen
- prüfen, ob die Ertragsumwandlungen funktionieren
- Prüfung von `Database.log`
- Prüfung von `Localization.log`

### Status

Phase 3 ist als erster Projekt-Pass implementiert, aber nicht final abgeschlossen.

---

## Phase 4 - Reichsweite Glaubensdekrete

**Ziel:** Der Spieler bekommt größere Reichsentscheidungen auf Faith-Basis.

### Mögliche Dekrete

- Declare Tithe / Zehnt ausrufen
- Holy Festivals / Heilige Feste
- Missionary Mandate / Missionsmandat
- Mobilize Orders / Orden mobilisieren
- Wonder Veneration / Wunderverehrung

### Technischer Ansatz

- zunächst über Policies, Projekte oder einfache Modifier simulieren
- keine eigene UI in der ersten Umsetzung
- starke Effekte nur nach lokalem Test von Phase 1 bis 3

### Status

Noch nicht gestartet.

---

## Phase 5 - Eifer, Spaltung und religiöse Spannung

**Ziel:** Faith bekommt Risiko und strategisches Gewicht.

### Geplante Richtungen

- Eifer als positiver, aber riskanter Verstärker
- Spaltung als religiöse Teilung in Städten
- Widerstand gegen harte Glaubenspolitik

### Status

Noch nicht gestartet.

---

## Phase 6 - Religiöse Einheiten erweitern

**Ziel:** Missionare, Apostel und Gurus bekommen klarere Rollen.

### Geplante Richtungen

- Missionare als Gemeindeaufbau und Verbreitung
- Apostel als theologische Machtfiguren
- Gurus als Heilung und Stabilisierung

### Status

Noch nicht gestartet.

---

## Phase 7 - UI-Erweiterung

**Ziel:** Sacred Dominion bekommt eine eigene Benutzerführung.

### Geplante Richtungen

- Glaubensübersicht
- Stadtbereich für Glaubenspolitik
- Dekretübersicht
- spätere Visualisierung von Eifer und Spaltung

### Status

Noch nicht gestartet.

---

## Phase 8 - Balance, KI und Workshop

**Ziel:** Die Mod wird stabil, erklärbar und veröffentlichungsfähig.

### Geplante Arbeiten

- mehrere Testpartien
- Balancewerte glätten
- KI-Verhalten beobachten
- Workshop-Text schreiben
- Screenshots vorbereiten
- Release-Version vorbereiten

### Status

Noch nicht gestartet.

---

## Test-Tracker

Aktuelle offene Test-Issues:

- Issue #5: Lokaler Civ VI Ladetest fuer Phase 1 und 2
- Issue #6: Phase 3 Stadtprojekte pruefen

---

## Nächste sinnvolle Reihenfolge

1. Phase 1 bis 3 lokal testen
2. Logs prüfen
3. offensichtliche SQL-Fehler beheben
4. erst danach Phase 4 mit Dekreten beginnen

Wenn trotzdem vor dem Test weitergearbeitet wird, dann nur mit Dokumentation, Planung oder sehr sicheren Scaffolds.
