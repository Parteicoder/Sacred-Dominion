# Sacred Dominion - Balancing Notes

This document tracks early balancing rules for Sacred Dominion.

The current implementation has active Phase 2 belief and policy effects, Phase 3 Holy Site city projects, and Phase 4 decree policies. Phase 5 is currently planning-only. Local Civilization VI validation has been skipped for now and remains pending.

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

Zeal, Schism and Resistance should add pressure and decision-making later. They should not become random punishment fog.

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

## Active Phase 4 decree pass

| Decree policy | Current effect | Balance intent |
| --- | --- | --- |
| Declare Tithe | Temples +1 Gold while slotted | small empire economy lever |
| Holy Festivals | Temples +1 Culture while slotted | culture celebration without tourism spike |
| Missionary Mandate | Shrines +1 Faith while slotted | early faith push |
| Mobilize Orders | Temples +1 Faith while slotted | conservative order mobilization |
| Wonder Veneration | Temples +1 Culture while slotted | safe placeholder before wonder/tourism logic |

Phase 4 deliberately avoids tourism, loyalty, unit cost reduction and pressure effects for now.

---

## Phase 5 planning pass

| Axis | German | Purpose | First safe direction later |
| --- | --- | --- | --- |
| Zeal | Eifer | active religious energy | policy trade-off or temporary boost |
| Schism | Spaltung | internal religious division | small drawback from overreach |
| Resistance | Widerstand | pushback against harsh faith rule | city-level warning or mild penalty |

Phase 5 is not active yet. It is planning only.

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
- decree policies becoming automatic picks
- decree policies duplicating Phase 2 policy cards too closely
- tension systems becoming annoying instead of strategic

---

## Test balance questions

When testing later, answer:

- Do the Temple bonuses feel too stacked?
- Does Charitable Works create too much early growth?
- Do the new projects appear too early or too often?
- Does the AI spam the projects?
- Are the policy cards worth using without becoming automatic picks?
- Do the decree policies feel distinct enough from normal policy cards?
- Would Zeal and Schism add meaningful choices here or just noise?
- Are the tooltips clear enough in English and German?

---

## Before stronger effects

Do not add stronger loyalty, tourism, cost reduction, pressure, Zeal or Schism effects until:

- Phase 1 loads cleanly
- Phase 2 records load cleanly
- Phase 2 modifiers load cleanly
- Phase 3 projects appear correctly
- Phase 4 decree policies load cleanly
- logs are clean

---

## Later balance direction

After local validation, the temporary safe effects can be refined:

- Sacred Administration can move toward Loyalty or stability.
- Order Patronage can move toward religious unit support.
- Pilgrimage Network can move toward trade routes, tourism or pressure.
- Holy Order can later gain a real order/stability identity.
- Charitable Works can later use Amenities or Housing if stable.
- Declare Tithe can later use follower cities or religion pressure.
- Holy Festivals can later use Amenities or temporary Culture.
- Missionary Mandate can later affect pressure or Missionary economy.
- Mobilize Orders can later support purchase costs if stable.
- Wonder Veneration can later connect to Wonders or Tourism.
- Zeal can later amplify strong faith actions.
- Schism can later add internal risk to overreach.
- Resistance can later give conquered or pressured cities counterweight.
