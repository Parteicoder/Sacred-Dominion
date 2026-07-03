# Sacred Dominion - Phase 5 Mechanics

Phase 5 plans the first risk and tension layer for Sacred Dominion.

This phase is currently design-only.

---

## Design goal

Faith should become powerful, but not frictionless.

If a player uses religion as administration, culture, economy and order, the empire should gain strength but also face pressure.

---

## Core axes

## Zeal / Eifer

Zeal represents active religious energy.

High Zeal should feel powerful:

- stronger religious mobilization
- better faith-based actions
- stronger decree identity

But high Zeal should also create risks later:

- reduced tolerance
- higher chance of internal pressure
- stronger reaction from opposing faiths

---

## Schism / Spaltung

Schism represents internal religious division.

High Schism should feel unstable:

- weaker local order
- weaker religious unity
- possible loyalty or amenity pressure later

Schism should not be random punishment. It should come from player choices, conquest, religious conflict or overuse of hard decree policy.

---

## Resistance / Widerstand

Resistance represents pushback against harsh religious rule.

Resistance should appear when faith systems are used aggressively.

Possible later triggers:

- conquered cities with different religion
- hard decree usage
- extreme pressure from missionary policy
- low amenities or low loyalty

---

## First implementation boundary

Do not implement meters yet.

First pass should only prepare design language and future hooks.

Potential safe technical paths later:

- hidden player modifiers
- city projects with temporary effects
- policy card drawbacks
- requirement sets around religion, loyalty or buildings

Avoid for now:

- custom UI
- global Lua state machine
- random revolt mechanics
- hard loyalty penalties
- tourism spikes

---

## First playable direction later

The first real Phase 5 gameplay pass should probably use policy trade-offs.

Example direction:

- stronger decree effect
- small drawback while slotted
- clear tooltip
- easy rollback

This keeps the system understandable without custom UI.
