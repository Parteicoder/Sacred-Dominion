# Sacred Dominion – Entwicklungsphasen

Diese Roadmap teilt **Sacred Dominion** in klare Entwicklungsphasen auf. Ziel ist, die Mod nicht sofort als riesiges UI-Monster zu bauen, sondern erst eine spielbare Basis zu schaffen und danach Schicht für Schicht mehr aktive Glaubensmechaniken einzubauen.

Der Grundsatz: **Erst spielbar, dann mächtig, dann schön.**

---

## Phase 0 – Konzept einfrieren

**Ziel:** Festlegen, was Sacred Dominion im Kern sein soll und was ausdrücklich nicht Teil der ersten Version wird.

### Inhalte

- endgültiger Projektname: `Sacred Dominion`
- Kernidee definieren: Glauben wird aktive Machtressource
- Hauptsysteme grob beschreiben
- Grenzen des ersten Releases festlegen
- technische Risiken im Civ-6-Modding notieren

### Entscheidungen

- Die erste spielbare Version soll ohne komplexe eigene UI funktionieren.
- UI-Erweiterungen kommen später.
- Bestehende Civ-6-Mechaniken werden zuerst genutzt.
- Neue Systeme sollen schrittweise simuliert werden, statt sofort vollständig neu gebaut zu werden.

### Ergebnis

- README vorhanden
- Roadmap vorhanden
- grobes Design steht

### Definition of Done

- [x] Projektname steht
- [x] Grundidee ist dokumentiert
- [x] Phasenplan ist angelegt
- [ ] `Docs/DESIGN.md` ist erstellt
- [ ] `Docs/BALANCING.md` ist erstellt

---

## Phase 1 – Mod-Grundgerüst

**Ziel:** Die Mod soll in Civilization VI sauber erkannt und geladen werden.

### Inhalte

- `.modinfo` erstellen
- Ordnerstruktur anlegen
- deutsche und englische Textdateien vorbereiten
- erste Dummy-Dateien für SQL/XML/Lua anlegen
- Mod im Zusatzinhalte-Menü sichtbar machen

### Geplante Dateien

```text
Sacred-Dominion/
├── SacredDominion.modinfo
├── Data/
│   ├── Beliefs.sql
│   ├── Policies.sql
│   ├── Buildings.sql
│   └── Projects.sql
├── Text/
│   ├── de_DE.xml
│   └── en_US.xml
└── Docs/
    ├── ROADMAP.md
    ├── DESIGN.md
    └── BALANCING.md
```

### Noch kein Ziel dieser Phase

- keine neuen komplexen UI-Fenster
- keine fertige Balance
- keine neue Siegmechanik

### Definition of Done

- [ ] Mod erscheint in Civilization VI unter Zusatzinhalte
- [ ] Mod lässt sich aktivieren
- [ ] Spiel startet ohne Datenbankfehler
- [ ] Texte werden korrekt geladen
- [ ] keine roten Lua-/Database-Fehler im Log

---

## Phase 2 – Erste aktive Glaubensnutzung über bestehende Mechaniken

**Ziel:** Glauben soll bereits nützlicher werden, ohne eigene Spezial-UI zu brauchen.

Diese Phase ist der erste echte Gameplay-Kern. Sie nutzt möglichst robuste Civ-6-Mechaniken: Glaubenssätze, Gebäude, Projekte, Politikkarten und Modifier.

### Inhalte

- neue oder angepasste Glaubenssätze
- neue Politikkarten mit Glaubensbezug
- zusätzliche Glaubenskäufe prüfen
- Heilige Stätten stärker mit Stadtentwicklung verbinden
- Glauben mit Loyalität, Zufriedenheit, Kultur oder Gold verknüpfen

### Mögliche Features

#### Glaubenssatz: Heilige Verwaltung

Städte mit Mehrheitsreligion erhalten zusätzliche Loyalität.

#### Glaubenssatz: Armenfürsorge

Heilige Stätten geben Nahrung oder Wohnraum.

#### Politikkarte: Orden fördern

Religiöse Einheiten oder bestimmte Militäreinheiten werden günstiger mit Glauben gekauft.

#### Politikkarte: Zehntverwaltung

Mehr Gold aus Städten mit eigener Mehrheitsreligion.

### Definition of Done

- [ ] mindestens 3 neue oder angepasste Glaubenssätze vorhanden
- [ ] mindestens 2 neue Politikkarten vorhanden
- [ ] Glauben hat auch außerhalb des Religionssieges spürbaren Nutzen
- [ ] KI kann weiter normal spielen
- [ ] keine harte Abhängigkeit von eigener UI

---

## Phase 3 – Stadtbasierte Glaubensaktionen

**Ziel:** Städte bekommen aktive Glaubensentscheidungen.

Da eigene Stadt-Buttons technisch aufwendiger sind, können die ersten Aktionen über Stadtprojekte, Dummy-Gebäude oder Modifier simuliert werden.

### Inhalte

- neue Stadtprojekte mit Glaubenslogik
- Projekte für Stabilität, Loyalität, Wachstum und religiösen Druck
- erste lokale Entscheidungen pro Stadt
- Effekte zeitlich begrenzen, wenn möglich

### Mögliche Stadtaktionen

#### Predigtkampagne

Erhöht religiösen Druck der Stadt für mehrere Runden.

#### Armenfürsorge

Erhöht Zufriedenheit, Nahrung oder Wohnraum.

#### Heilige Ordnung

Erhöht Loyalität und senkt Unruhe.

#### Pilgerzentrum ausrufen

Erzeugt Gold, Kultur oder Tourismus in Städten mit Heiliger Stätte.

### Technische Umsetzung, erster Ansatz

- Stadtprojekte in `Projects.sql`
- Effekte über Modifier
- falls nötig Dummy-Gebäude zur Speicherung von Zuständen
- Tooltips sauber benennen

### Definition of Done

- [ ] mindestens 3 Stadtprojekte vorhanden
- [ ] Projekte sind im Spiel auswählbar
- [ ] Effekte sind im Stadtbildschirm nachvollziehbar
- [ ] keine Endlos- oder Stack-Fehler
- [ ] Projektkosten sind sinnvoll skaliert

---

## Phase 4 – Reichsweite Glaubensdekrete

**Ziel:** Der Spieler bekommt große, aktive Reichsentscheidungen auf Glaubensbasis.

Dekrete sollen sich wie politische Großentscheidungen anfühlen: stark, aber nicht dauerhaft kostenlos.

### Inhalte

- reichsweite Effekte mit Cooldown-Idee
- starke, zeitlich begrenzte Glaubensboni
- verschiedene Dekrete für unterschiedliche Siegtypen
- erste Nachteile oder Gegenkosten einbauen

### Mögliche Dekrete

#### Zehnt ausrufen

Mehr Gold aus Städten mit eigener Mehrheitsreligion.

#### Heilige Feste

Mehr Kultur, Zufriedenheit und Loyalität für mehrere Runden.

#### Missionare entsenden

Handelsrouten verbreiten Religion stärker.

#### Orden mobilisieren

Bestimmte Einheiten können günstiger mit Glauben erworben werden.

#### Wunderverehrung

Weltwunder und Heilige Stätten erzeugen zusätzlichen Tourismus.

### Technische Umsetzung, erster Ansatz

- Dekrete zunächst über Projekte, Policies oder Regierungskarten simulieren
- später eventuell eigenes UI-Panel
- Cooldowns zuerst über Kosten, Voraussetzungen oder Dummy-Mechaniken abbilden

### Definition of Done

- [ ] mindestens 3 Dekrete spielbar
- [ ] Dekrete sind verständlich beschrieben
- [ ] kein Dekret ist eindeutig immer die beste Wahl
- [ ] Glaubenskosten fühlen sich relevant an
- [ ] Effekte unterstützen mehrere Siegtypen

---

## Phase 5 – Eifer, Spaltung und religiöse Spannung

**Ziel:** Glauben bekommt Gewicht. Starker Glaubenseinsatz soll nicht nur Vorteile bringen, sondern auch Spannung erzeugen.

Diese Phase macht Sacred Dominion strategischer. Der Spieler soll abwägen müssen: Stabilisiere ich mein Reich, missioniere ich aggressiv oder riskiere ich innere Konflikte?

### Inhalte

- Spaltung als abstraktes System simulieren
- Eifer als positiver, aber riskanter Zustand
- gemischt religiöse Städte stärker berücksichtigen
- Nachteile durch zu harte Glaubenspolitik prüfen

### Mögliche Mechaniken

#### Spaltung

Religiös gemischte Städte erhalten weniger Zufriedenheit oder Loyalität.

#### Eifer

Städte mit starker eigener Mehrheitsreligion erhalten stärkere Glaubenseffekte.

#### Widerstand

Städte mit fremder Mehrheitsreligion reagieren empfindlicher auf harte Dekrete.

### Technische Umsetzung, erster Ansatz

- Modifier auf Mehrheitsreligion prüfen
- Loyalitäts-/Zufriedenheitsboni und Mali nutzen
- wenn direkte Abfrage schwierig ist: über bestehende Religions- und Stadtstatus-Mechaniken annähern

### Definition of Done

- [ ] mindestens eine positive religiöse Spannungsmechanik vorhanden
- [ ] mindestens eine negative religiöse Spannungsmechanik vorhanden
- [ ] Spieler versteht Ursache und Wirkung über Tooltips
- [ ] System ist nicht nur Strafe, sondern eröffnet Entscheidungen

---

## Phase 6 – Religiöse Einheiten erweitern

**Ziel:** Missionare, Apostel und Gurus sollen mehr Rollen bekommen.

Religiöse Einheiten sollen nicht nur Ladungen verbrauchen, sondern taktisch interessanter werden.

### Inhalte

- neue Promotions oder Effekte prüfen
- bestehende religiöse Einheiten differenzieren
- Guru stärker als Stabilitäts- oder Versöhnungseinheit nutzen
- Apostel als theologische Machtfigur stärken

### Mögliche Rollen

#### Missionar

- günstige Verbreitung
- Gemeinde stärken
- eigene Städte schützen

#### Apostel

- harte theologische Aktionen
- fremden Druck entfernen
- Dogmen oder dauerhafte Boni setzen

#### Guru

- religiöse Einheiten heilen
- Spannungen senken
- kurzfristige Stadtboni geben

### Definition of Done

- [ ] mindestens eine religiöse Einheit hat neue oder klarere Rolle
- [ ] Promotions oder Effekte sind verständlich
- [ ] religiöser Kampf wird taktischer
- [ ] KI wird nicht komplett aus dem Konzept geworfen

---

## Phase 7 – UI-Erweiterung

**Ziel:** Sacred Dominion bekommt eine eigene Benutzerführung.

Diese Phase kommt bewusst spät. Erst muss das System spielbar sein, dann lohnt sich eine eigene Oberfläche.

### Inhalte

- eigenes Glaubenspanel prüfen
- Stadt-Reiter oder Zusatzpanel für Glaubenspolitik prüfen
- bessere Tooltips und Warnungen
- Glaubensübersicht mit Eifer, Spaltung und aktiven Dekreten
- eventuell Kartenansicht für religiöse Dynamik

### Gewünschte UI-Elemente

#### Glaubensübersicht

Zeigt Glaubensvorrat, Glauben pro Runde, aktive Dekrete und religiöse Risiken.

#### Stadtbereich Glaubenspolitik

Zeigt lokale Glaubensaktionen einer Stadt.

#### Glaubensplaner

Gibt Hinweise wie:

- Stadt droht religiös zu kippen
- Dekret ist wieder verfügbar
- Spaltung steigt
- Handelsroute verbreitet fremden Glauben

#### Glaubenskarte

Visualisiert religiösen Druck, Zentren und Spannungsräume.

### Definition of Done

- [ ] mindestens ein eigenes UI-Element funktioniert
- [ ] UI verursacht keine Lua-Fehler
- [ ] Aktionen sind besser sichtbar als vorher
- [ ] Spieler erkennt religiöse Risiken ohne Log-Suche

---

## Phase 8 – Balance, KI und Workshop-Version

**Ziel:** Die Mod wird testbar, erklärbar und veröffentlichungsfähig.

### Inhalte

- Balancewerte testen
- verschiedene Siegtypen prüfen
- KI-Verhalten beobachten
- Texte glätten
- Workshop-Beschreibung schreiben
- Screenshots vorbereiten
- erste Release-Version markieren

### Testfragen

- Ist Glauben jetzt spürbar aktiver?
- Wird Glauben zu stark im Vergleich zu Gold oder Produktion?
- Gibt es eine beste Strategie, die alles dominiert?
- Kann man auch ohne Religionssieg sinnvoll mit Glauben spielen?
- Ist die Mod verständlich ohne Anleitungsvideo?
- Läuft sie ohne Datenbank- und Lua-Fehler?

### Definition of Done

- [ ] Mod ist mehrere Partien lang stabil
- [ ] keine bekannten Spielstartfehler
- [ ] Balance grob spielbar
- [ ] README aktuell
- [ ] Workshop-Text vorhanden
- [ ] Version `0.1.0` vorbereitet

---

## Empfohlene Release-Stufen

| Version | Inhalt |
| --- | --- |
| `0.0.1` | Mod-Grundgerüst lädt im Spiel |
| `0.1.0` | Erste spielbare Faith-Rework-Version ohne eigene UI |
| `0.2.0` | Stadtaktionen und erste Dekrete |
| `0.3.0` | Eifer/Spaltung als simuliertes Spannungssystem |
| `0.4.0` | Erweiterte religiöse Einheiten |
| `0.5.0` | Erste UI-Erweiterung |
| `1.0.0` | Stabile Workshop-Version |

---

## Priorität für den Start

Die ersten drei praktischen Aufgaben sind:

1. `SacredDominion.modinfo` erstellen
2. Mod im Spiel sichtbar machen
3. erste einfache Faith-Mechaniken über SQL bauen

Erst danach sollte die große UI angefasst werden. Sonst wird das Projekt schnell ein brennender Tempel aus Lua-Fehlern und schönen Absichten.
