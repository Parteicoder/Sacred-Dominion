# Sacred Dominion - Phase 5 First Implementation Plan

Phase 5 is currently design-only.

This document selects the safest first gameplay direction for later implementation.

---

## Selected first direction

Use simple policy trade-offs.

No hidden meter. No custom UI. No Lua state machine.

---

## First candidate

### Zealous Festivals

Base idea:

- Holy Festivals becomes stronger
- but the card also creates a small drawback

Possible later effect:

- Temples provide additional Culture
- cities receive a small Amenity or Gold drawback while the card is slotted

Reason:

- easy to explain in a tooltip
- easy to remove
- uses existing policy/modifier style
- introduces risk without building a new UI

---

## Second candidate

### Hard Mission Mandate

Base idea:

- Missionary Mandate becomes stronger
- but creates mild Resistance risk later

Possible later effect:

- Shrines provide more Faith
- conquered or low-loyalty cities get a small drawback later

Reason:

- thematically fits religious pressure
- can later connect to Resistance
- should not be first if loyalty requirements are unstable

---

## Third candidate

### Mobilized Orders

Base idea:

- Mobilize Orders becomes stronger
- but creates economic or cultural strain

Possible later effect:

- stronger Faith support
- small Gold drawback or Culture drawback while slotted

Reason:

- simple policy trade-off
- fits order mobilization
- avoids custom systems

---

## Recommendation

The first real Phase 5 implementation should be **Zealous Festivals**.

It is the safest first test because it can stay inside policy and yield logic.

---

## Do not implement yet

Do not add active Phase 5 SQL until the earlier gameplay files are tested locally or the project explicitly accepts that risk.
