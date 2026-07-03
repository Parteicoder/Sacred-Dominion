# Sacred Dominion - Phase 2 Static Review

This review records what can be checked before the local Civilization VI test.

It does not replace the real in-game load test.

---

## Review result

**Status:** Implementation-ready, local validation pending.

Phase 2 now has:

- active base records for 3 beliefs
- active base records for 2 policy cards
- active conservative modifiers for all 5 Phase 2 records
- English tooltips
- German tooltips
- README update
- Phase 2 documentation update

---

## Files checked

```text
SacredDominion.modinfo
Data/Beliefs.sql
Data/Policies.sql
Data/Modifiers.sql
Text/en_US.xml
Text/de_DE.xml
Docs/PHASE2_STATUS.md
Docs/PHASE2_MODIFIERS.md
README.md
```

---

## Active mechanics

| Mechanic | Type | Current effect |
| --- | --- | --- |
| Sacred Administration | Belief | Temples provide +1 Faith |
| Charitable Works | Belief | Shrines and Temples provide +1 Food |
| Pilgrimage Network | Belief | Temples provide +1 Culture |
| Tithe Administration | Policy | Temples provide +1 Gold while slotted |
| Order Patronage | Policy | Temples provide +1 Faith while slotted |

---

## Static checks completed

- [x] `Data/Modifiers.sql` is registered in `.modinfo`
- [x] all five Phase 2 records have tooltip text in English
- [x] all five Phase 2 records have tooltip text in German
- [x] README reflects the current Phase 2 effect pass
- [x] Phase 2 status file reflects the current effect pass
- [x] Modifier documentation reflects the current effect pass

---

## Local checks still required

- [ ] mod appears in Additional Content
- [ ] new game starts
- [ ] `Database.log` has no Sacred Dominion errors
- [ ] `Localization.log` has no Sacred Dominion errors
- [ ] tooltips appear in-game
- [ ] effects actually apply to Shrine and Temple yields
- [ ] policy effects only apply while the cards are slotted

---

## Known technical risk

The active SQL uses standard Civ VI modifier patterns, but the exact behavior must still be verified locally.

The highest-risk area is not the simple record creation. The highest-risk area is whether the selected modifier types and arguments behave exactly as expected in the local game database.

If a database error appears, test in this order:

1. disable `Data/Modifiers.sql` in `.modinfo`
2. confirm base records still load
3. re-enable only Tithe Administration
4. re-test
5. add one mechanic at a time

---

## Recommendation

Do not start Phase 3 until Phase 2 has passed a local load test.

If development continues before local testing, only documentation, planning and backup-safe scaffolding should be added.
