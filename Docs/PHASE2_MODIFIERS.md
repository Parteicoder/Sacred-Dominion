# Sacred Dominion - Phase 2 Modifiers

Phase 2 now has active conservative gameplay effects for all five first belief and policy records.

These effects are deliberately small. The goal is to verify that the system loads, that the tooltips are clear, and that Faith starts to matter more without creating a balance avalanche.

---

## Active effects

| Record | German | Type | Current effect |
| --- | --- | --- | --- |
| `BELIEF_SACRED_DOMINION_SACRED_ADMINISTRATION` | Heilige Verwaltung | Belief | Temples provide +1 Faith |
| `BELIEF_SACRED_DOMINION_CHARITABLE_WORKS` | Armenfürsorge | Belief | Shrines and Temples provide +1 Food |
| `BELIEF_SACRED_DOMINION_PILGRIMAGE_NETWORK` | Pilgernetzwerk | Belief | Temples provide +1 Culture |
| `POLICY_SACRED_DOMINION_TITHE_ADMINISTRATION` | Zehntverwaltung | Policy | Temples provide +1 Gold while slotted |
| `POLICY_SACRED_DOMINION_ORDER_PATRONAGE` | Ordensförderung | Policy | Temples provide +1 Faith while slotted |

---

## Why the effects are small

Phase 2 is the first active gameplay pass.

The effects should be:

- easy to understand
- easy to test
- easy to remove or rebalance
- unlikely to break the whole mod
- not strong enough to dominate existing Civilization VI systems

---

## Implementation file

The active modifier SQL lives in:

```text
Data/Modifiers.sql
```

Base belief records live in:

```text
Data/Beliefs.sql
```

Base policy records live in:

```text
Data/Policies.sql
```

---

## Local test requirement

These modifiers are implemented but not locally verified yet.

Before Phase 2 is marked complete, test:

- mod appears in Additional Content
- new game starts
- new beliefs and policies load
- tooltips match the effects
- `Database.log` has no Sacred Dominion errors
- `Localization.log` has no Sacred Dominion errors

---

## Future improvement ideas

After local validation, later versions may replace or expand the temporary conservative effects:

### Sacred Administration

Possible later direction:

- loyalty support
- stability support
- pressure-based administrative bonus

### Charitable Works

Possible later direction:

- housing or amenity support
- stronger city-support identity
- crisis recovery effect

### Pilgrimage Network

Possible later direction:

- trade-route interaction
- tourism or religious pressure
- stronger culture strategy support

### Tithe Administration

Possible later direction:

- gold from following cities
- gold from religious pressure
- stronger religious economy identity

### Order Patronage

Possible later direction:

- religious unit cost support
- Faith purchase support
- military-religious order interaction

---

## Do not do in Phase 2

- no Zeal meter
- no Schism meter
- no faith map
- no custom city panel
- no large Lua system
- no aggressive loyalty snowball
- no permanent empire-wide super bonus
