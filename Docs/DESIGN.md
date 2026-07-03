# Sacred Dominion - Design Document

Sacred Dominion is a Civilization VI faith rework. The primary language of all gameplay-facing content is English. German is maintained as a full translation.

---

## Core vision

Faith should become an active strategic resource instead of a mostly passive stockpile.

The player should use Faith to shape:

- religious pressure
- city stability
- loyalty
- culture
- empire-wide decisions
- religious risk and tension

The mod should not simply turn Faith into another version of Gold. Faith should feel different: powerful, political, cultural and potentially unstable.

---

## First design rule

Phase 1 does not change gameplay.

The first playable foundation must only prove that the mod loads correctly, that localization works, and that the data structure is safe for later phases.

---

## Main systems planned

### City Faith Actions

City-level decisions that use Faith to affect local conditions.

Planned examples:

- Sermon Campaign
- Charitable Works
- Holy Order
- Pilgrimage Center

### Sacred Decrees

Empire-wide faith decisions with strong effects and meaningful costs.

Planned examples:

- Declare Tithe
- Holy Festivals
- Missionary Mandate
- Mobilize Orders
- Wonder Veneration

### Zeal

Zeal represents active religious energy. It should strengthen faith-based actions, but may also increase tension if pushed too far.

### Schism

Schism represents religious division. It should make mixed or contested cities more interesting without becoming a flat punishment system.

### Religious Unit Roles

Missionaries, Apostles and Gurus should become more distinct and tactical over time.

---

## Implementation philosophy

Use stable Civilization VI systems first:

1. SQL data
2. localized text
3. beliefs
4. policies
5. projects
6. buildings or dummy buildings if required
7. UI only after the gameplay foundation works

The first versions should avoid fragile Lua-heavy systems unless they are necessary.

---

## What Sacred Dominion is not

Sacred Dominion is not planned as:

- a new civilization mod
- a total conversion
- a fantasy overhaul
- a pure religious victory boost
- a simple balance patch

It is a faith-system expansion.

---

## Language rule

Gameplay-facing names and tooltips are written in English first. German follows as a complete translation.

Internal keys use English names and the prefix:

```text
LOC_SACRED_DOMINION_
```
