# Sacred Dominion - Entwicklungsphasen

Grundsatz:

```text
Erst spielbar, dann mächtig, dann schön.
```

English is the source language. German is maintained as a full translation.

---

## Aktueller Stand

| Phase | Status |
| --- | --- |
| Phase 0 - Konzept | Abgeschlossen |
| Phase 1 - Mod-Grundgerüst | Implementiert, Test übersprungen |
| Phase 2 - Erste aktive Faith-Mechaniken | Implementiert, Test übersprungen |
| Phase 3 - Stadtbasierte Glaubensaktionen | Implementiert, Test übersprungen |
| Phase 4 - Reichsweite Dekrete | Erster Policy-Pass implementiert |
| Phase 5 - Eifer und Spaltung | Planung gestartet, kein aktives SQL |
| Phase 6 - Religiöse Einheiten | Noch nicht gestartet |
| Phase 7 - UI | Noch nicht gestartet |
| Phase 8 - Balance und Workshop | Noch nicht gestartet |

---

## Phase 1

Mod foundation exists and is wired through `SacredDominion.modinfo`.

Local test skipped for now.

---

## Phase 2

Implemented first belief and policy effects:

- Sacred Administration: Temple +1 Faith
- Charitable Works: Shrine and Temple +1 Food
- Pilgrimage Network: Temple +1 Culture
- Tithe Administration: Temple +1 Gold while slotted
- Order Patronage: Temple +1 Faith while slotted

Local test skipped for now.

---

## Phase 3

Implemented first Holy Site city projects:

- Sermon Campaign: Production to Faith
- Charitable Works: Production to Food
- Holy Order: Production to Faith and Gold
- Pilgrimage Center: Production to Culture and Faith

Local test skipped for now.

---

## Phase 4

Implemented first sacred decrees as policy cards:

- Declare Tithe: Temple +1 Gold
- Holy Festivals: Temple +1 Culture
- Missionary Mandate: Shrine +1 Faith
- Mobilize Orders: Temple +1 Faith
- Wonder Veneration: Temple +1 Culture

---

## Phase 5

Planning started for the first tension layer:

- Zeal / Eifer
- Schism / Spaltung
- Resistance / Widerstand

Phase 5 currently has no active gameplay SQL.

Files:

```text
Docs/PHASE5_STATUS.md
Docs/PHASE5_MECHANICS.md
Docs/PHASE5_IMPLEMENTATION_BOUNDARIES.md
```

---

## Next phases

Phase 6 will expand religious unit roles.

Phase 7 will look at UI.

Phase 8 will focus on balance, AI and Workshop release polish.

---

## Open test trackers

- Issue #5: local Civ VI load test for Phase 1 and 2
- Issue #6: Phase 3 city project test
- Issue #7: Phase 4 decree policy test

---

## Next safe step

Before stronger systems, keep changes conservative or documentation-focused.
