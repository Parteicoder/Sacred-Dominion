# Phase 4 Status - Sacred Decrees

Current phase: **Phase 4 - Sacred Decrees**

Goal: Add the first empire-wide faith decisions without custom UI.

---

## Progress

**Overall progress:** 80%

## Last completed step

Implemented the first sacred decrees as policy cards, registered `Data/Decrees.sql`, updated localization, README and roadmap.

## Current checklist

- [x] Phase 4 status tracker created
- [x] decree mechanics selected
- [x] decree SQL created
- [x] decree SQL registered
- [x] localization checked
- [x] README updated
- [x] roadmap updated
- [ ] local Civ VI test passed

---

## Active decrees

- Declare Tithe / Zehnt ausrufen: Temple +1 Gold while slotted.
- Holy Festivals / Heilige Feste: Temple +1 Culture while slotted.
- Missionary Mandate / Missionsmandat: Shrine +1 Faith while slotted.
- Mobilize Orders / Orden mobilisieren: Temple +1 Faith while slotted.
- Wonder Veneration / Wunderverehrung: Temple +1 Culture while slotted.

---

## Files

```text
Data/Decrees.sql
SacredDominion.modinfo
Text/en_US.xml
Text/de_DE.xml
Docs/PHASE4_MECHANICS.md
README.md
Docs/ROADMAP.md
```

---

## Note

Earlier local tests are intentionally skipped for now.

Phase 4 should not be marked as complete until a local game test confirms the new policy cards load and work.
