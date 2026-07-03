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

**Overall progress:** 96%

## Last completed step

Added `Docs/PHASE2_STATIC_REVIEW.md` and created Issue #5 as the local Civ VI test tracker for Phase 1 and Phase 2.

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
- [x] modifier activation markers added
- [x] Phase 2 test checklist created
- [x] first conservative modifiers implemented
- [x] README updated to current Phase 2 state
- [x] static review created
- [x] local test issue created
- [ ] basic record load test passed
- [ ] modifier load test passed
- [ ] local Civ VI test passed

---

## Active Phase 2 mechanics

Beliefs:

- Sacred Administration / Heilige Verwaltung: Temples provide +1 Faith.
- Charitable Works / Armenfürsorge: Shrines and Temples provide +1 Food.
- Pilgrimage Network / Pilgernetzwerk: Temples provide +1 Culture.

Policies:

- Tithe Administration / Zehntverwaltung: Temples provide +1 Gold while this policy is slotted.
- Order Patronage / Ordensförderung: Temples provide +1 Faith while this policy is slotted.

---

## Current implementation state

The base records are active:

- `Data/Beliefs.sql` inserts the belief `Types` and `Beliefs` records.
- `Data/Policies.sql` inserts the policy `Types` and `Policies` records.
- `Data/Modifiers.sql` now applies the first conservative effect pass.

This means Phase 2 is implementation-ready for a local SQL/load test.

---

## Test tracking

Static review:

```text
Docs/PHASE2_STATIC_REVIEW.md
```

Local test checklist:

```text
Docs/PHASE2_TEST.md
```

GitHub test tracker:

```text
Issue #5 - Test: Lokaler Civ VI Ladetest fuer Phase 1 und 2
```

---

## Hold note

Phase 2 should not be marked as 100% complete until the local Civ VI test passes.

---

## Working rule

Phase 2 should stay modest. No custom UI, no large Lua system, no risky hidden empire mechanics yet.

The first gameplay changes should be easy to understand, easy to remove and easy to balance.
