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

**Overall progress:** 82%

## Last completed step

Created `Docs/PHASE2_MODIFIERS.md`, added `Data/Modifiers.sql`, and registered the modifier file in `SacredDominion.modinfo`.

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
- [x] modifier design selected
- [x] modifier file created and registered
- [ ] basic record load test passed
- [ ] first conservative modifiers implemented
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

The base records are active:

- `Data/Beliefs.sql` inserts the belief `Types` and `Beliefs` records.
- `Data/Policies.sql` inserts the policy `Types` and `Policies` records.
- `Data/Modifiers.sql` is loaded by the mod but currently does not apply gameplay effects.

No modifiers are attached yet.

This means Phase 2 is ready for a basic database/load test and prepared for conservative modifiers.

---

## Modifier activation plan

Modifier planning lives in:

```text
Docs/PHASE2_MODIFIERS.md
```

Recommended activation order:

1. Tithe Administration
2. Charitable Works
3. Pilgrimage Network
4. Sacred Administration
5. Order Patronage

---

## Next safe step

1. Run a local Civ VI test.
2. Check `Database.log` and `Localization.log`.
3. If the records load cleanly, add conservative modifiers one by one.

---

## Working rule

Phase 2 should stay modest. No custom UI, no large Lua system, no risky hidden empire mechanics yet.

The first gameplay changes should be easy to understand, easy to remove and easy to balance.
