# Sacred Dominion - Balancing Notes

This document tracks early balancing rules for Sacred Dominion.

The current implementation has active Phase 2 belief and policy effects plus Phase 3 Holy Site city projects. Local Civilization VI validation is still pending.

---

## Balance goal

Faith should become more useful without becoming stronger than Gold, Production or Science in every situation.

A good Sacred Dominion mechanic should meet at least one of these goals:

- make Faith more active
- create meaningful choices
- support more than one victory type
- create trade-offs
- stay understandable through tooltips

---

## Resource identity

### Gold

Flexible purchasing and maintenance.

### Production

Building and unit creation over time.

### Science

Technology progression.

### Culture

Civic progression and tourism support.

### Faith

Religious authority, stability, pressure, cultural legitimacy and spiritual mobilization.

Faith should not simply buy everything. It should influence systems that feel connected to belief, loyalty, culture and religious organization.

---

## Early balance principles

### 1. Faith effects need costs

Strong effects should cost enough Faith or Production that the player must choose between actions.

### 2. No universal best option

Every decree, project or belief should have a situation where it is useful and a situation where another option is better.

### 3. Non-religious victory paths should benefit, but not dominate

Faith should help culture, diplomacy, domination and science strategies, but religious victory must remain the most direct Faith-heavy path.

### 4. Risks should create choices, not annoyance

Zeal and Schism should add pressure and decision-making later. They should not become a random punishment fog.

### 5. AI should survive the system

Early versions should use mechanics the AI can at least passively benefit from.

---

## Active Phase 2 effect pass

| Mechanic | Type | Current effect | Balance intent |
| --- | --- | --- | --- |
| Sacred Administration | Belief | Temples +1 Faith | safe fallback for later stability theme |
| Charitable Works | Belief | Shrines and Temples +1 Food | small population support |
| Pilgrimage Network | Belief | Temples +1 Culture | small culture bridge |
| Tithe Administration | Policy | Temples +1 Gold while slotted | modest economy card |
| Order Patronage | Policy | Temples +1 Faith while slotted | modest faith card |

These are intentionally low numbers. They are first-pass effects, not final fantasy cathedral machinery.

---

## Active Phase 3 project pass

| Project | Requirement | Conversion |
| --- | --- | --- |
| Sermon Campaign | Holy Site | Production to Faith |
| Charitable Works | Holy Site | Production to Food |
| Holy Order | Holy Site | Production to Faith and Gold |
| Pilgrimage Center | Holy Site | Production to Culture and Faith |

Phase 3 projects should feel like optional local actions, not mandatory build queue chores.

---

## Watchlist

Potential balance dangers:

- Faith becoming better than Gold at everything
- loyalty bonuses making conquest too safe
- tourism from Faith snowballing too early
- religious pressure becoming impossible to counter
- city projects becoming repetitive button spam
- AI not understanding new systems
- project yields becoming stronger than normal district projects
- too many bonuses stacking on Temple too early

---

## Local test balance questions

When testing Phase 2 and Phase 3, answer:

- Do the Temple bonuses feel too stacked?
- Does Charitable Works create too much early growth?
- Do the new projects appear too early or too often?
- Does the AI spam the projects?
- Are the policy cards worth using without becoming automatic picks?
- Are the tooltips clear enough in English and German?

---

## Before stronger effects

Do not add stronger loyalty, tourism, cost reduction or pressure effects until:

- Phase 1 loads cleanly
- Phase 2 records load cleanly
- Phase 2 modifiers load cleanly
- Phase 3 projects appear correctly
- logs are clean

---

## Later balance direction

After local validation, the temporary safe effects can be refined:

- Sacred Administration can move toward Loyalty or stability.
- Order Patronage can move toward religious unit support.
- Pilgrimage Network can move toward trade routes, tourism or pressure.
- Holy Order can later gain a real order/stability identity.
- Charitable Works can later use Amenities or Housing if stable.
