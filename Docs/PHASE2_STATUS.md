# Phase 2 Status - First Active Faith Mechanics

Current phase: **Phase 2 - First Active Faith Mechanics**

Goal: Faith should become more useful through existing Civilization VI systems before custom UI work begins.

Phase 2 focuses on:

- new or adjusted beliefs
- new faith-focused policy cards
- modest bonuses through stable SQL systems
- English source text with full German translation
- no custom UI yet

---

## Progress

**Overall progress:** 60%

## Last completed step

Added English and German localization for the first three belief concepts and two policy concepts. Added safe SQL scaffolds in `Data/Beliefs.sql` and `Data/Policies.sql`.

## Current checklist

- [x] Phase 2 status tracker created
- [x] Phase 2 mechanics selected
- [x] English localization added
- [x] German localization added
- [x] belief SQL safely scaffolded
- [x] policy SQL safely scaffolded
- [x] modinfo checked for required files
- [x] Phase 2 documentation updated
- [ ] active belief SQL enabled
- [ ] active policy SQL enabled
- [ ] ready for local SQL/load test
- [ ] local Civ VI test passed

---

## Selected Phase 2 mechanics

Beliefs:

- Sacred Administration / Heilige Verwaltung
- Charitable Works / Armenfürsorge
- Pilgrimage Network / Pilgernetzwerk

Policies:

- Tithe Administration / Zehntverwaltung
- Order Patronage / Ordensförderung

---

## Important hold note

The SQL for new beliefs and policies is currently scaffolded but disabled in comments.

Reason: Phase 1 has not yet been tested locally in Civilization VI. The base mod should be confirmed first before activating new database records and modifier chains.

Next safe step after the Phase 1 load test:

1. Enable the basic `Types`, `Beliefs` and `Policies` inserts.
2. Start a local game and check `Database.log` and `Localization.log`.
3. Add modifiers only after the basic records load cleanly.

---

## Working rule

Phase 2 should stay modest. No custom UI, no large Lua system, no risky hidden empire mechanics yet.

The first gameplay changes should be easy to understand, easy to remove and easy to balance.
