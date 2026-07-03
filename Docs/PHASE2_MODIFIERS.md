# Sacred Dominion - Phase 2 Modifier Plan

Phase 2 now has active base records for the first beliefs and policy cards.

This document defines the planned first modifier pass. The effects should be added one by one after the basic records load cleanly in Civilization VI.

---

## Current rule

Do not attach all modifiers at once.

Add them in small testable steps:

1. one belief or policy
2. one effect
3. one local load test
4. check `Database.log`, `Localization.log` and in-game tooltip
5. only then move to the next effect

This prevents the mod from becoming a fog machine full of invisible SQL goblins.

---

## Planned first effects

## 1. Sacred Administration

**Record:** `BELIEF_SACRED_DOMINION_SACRED_ADMINISTRATION`  
**German:** Heilige Verwaltung

### Design goal

Faith supports political order and administration.

### First safe effect target

A modest empire-management bonus connected to cities following the founded religion.

Preferred first implementation:

- small Loyalty support if technically stable

Fallback implementation:

- small Faith or Gold bonus from Holy Site buildings

### Why fallback exists

Loyalty-related belief modifiers can be more fragile than simple yield modifiers. If local tests show database issues or unclear behavior, start with a simple yield bonus and revisit Loyalty later.

---

## 2. Charitable Works

**Record:** `BELIEF_SACRED_DOMINION_CHARITABLE_WORKS`  
**German:** Armenfürsorge

### Design goal

Faith infrastructure helps the population.

### First safe effect target

A practical city support bonus from Holy Site buildings.

Preferred first implementation:

- Shrine or Temple gives a small Food, Housing, Amenity or Faith-adjacent city support effect

Fallback implementation:

- Holy Site buildings produce a small amount of Food or Gold

### Balance note

This belief must not become a second Feed the World. It should feel useful, not dominant.

---

## 3. Pilgrimage Network

**Record:** `BELIEF_SACRED_DOMINION_PILGRIMAGE_NETWORK`  
**German:** Pilgernetzwerk

### Design goal

Religious travel and connected holy places strengthen cultural and spiritual reach.

### First safe effect target

A modest Culture or Faith gain connected to Holy Sites or religious buildings.

Preferred first implementation:

- Holy Sites or religious buildings generate a small Culture or Faith bonus

Fallback implementation:

- simple Gold or Faith bonus from Shrines or Temples

### Later direction

This should later connect to trade routes, pilgrimage centers or religious pressure, but not in the first modifier pass.

---

## 4. Tithe Administration

**Record:** `POLICY_SACRED_DOMINION_TITHE_ADMINISTRATION`  
**German:** Zehntverwaltung

### Design goal

The state organizes religious income.

### First safe effect target

A modest Gold or Faith bonus from religious infrastructure.

Preferred first implementation:

- Holy Site buildings produce additional Gold

Fallback implementation:

- simple Faith or Gold modifier attached to an existing religious building class

### Balance note

This should compete with normal economic cards, not replace them.

---

## 5. Order Patronage

**Record:** `POLICY_SACRED_DOMINION_ORDER_PATRONAGE`  
**German:** Ordensförderung

### Design goal

The state supports religious orders and improves Faith-to-action conversion.

### First safe effect target

A modest bonus related to religious units or Faith purchases.

Preferred first implementation:

- reduced cost for religious units if a reliable modifier exists

Fallback implementation:

- additional Faith from Holy Site buildings while the card is slotted

### Balance note

Cost reduction should be conservative. A small Faith bonus may be safer for the first playable version.

---

## Recommended activation order

1. Tithe Administration
2. Charitable Works
3. Pilgrimage Network
4. Sacred Administration
5. Order Patronage

Reason:

Start with simple yield-style effects before testing more fragile loyalty or purchase-cost effects.

---

## Phase 2 completion target

Phase 2 can be considered implementation-complete when:

- the five records load without database errors
- at least three mechanics have conservative working effects
- English and German tooltips are clear
- no custom UI is required
- effects are small enough for early balance testing

---

## Do not do in Phase 2

- no Zeal meter
- no Schism meter
- no faith map
- no custom city panel
- no large Lua system
- no aggressive loyalty snowball
- no permanent empire-wide super bonus
