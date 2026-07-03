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

**Overall progress:** 72%

## Last completed step

Enabled the basic SQL records for the first three Sacred Dominion beliefs and the first two Sacred Dominion policy cards. No gameplay modifiers are attached yet.

## Current checklist

- [x] Phase 2 status tracker created
- [x] Phase 2 mechanics selected
- [x] English localization added
- [x] German localization added
- [x] belief SQL safely scaffolded
- [x] policy SQL safely scaffolded
- [x] modinfo checked for required files
- [x] Phase 2 documentation updated
- [x] active belief SQL enabled
- [x] active policy SQL enabled
- [ ] basic record load test passed
- [ ] modifier design selected
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

## Current implementation state

The base records are now active:

- `Data/Beliefs.sql` inserts the belief `Types` and `Beliefs` records.
- `Data/Policies.sql` inserts the policy `Types` and `Policies` records.

No modifiers are attached yet.

This means Phase 2 is now ready for a basic database/load test, but not yet for a real gameplay balance test.

---

## Next safe step

1. Run a local Civ VI test.
2. Check `Database.log` and `Localization.log`.
3. If the records load cleanly, add conservative modifiers one by one.

---

## Working rule

Phase 2 should stay modest. No custom UI, no large Lua system, no risky hidden empire mechanics yet.

The first gameplay changes should be easy to understand, easy to remove and easy to balance.
