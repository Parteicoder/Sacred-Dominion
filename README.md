# Sacred Dominion

**Sacred Dominion** is a faith-focused gameplay rework for *Sid Meier's Civilization VI*.

The mod is built with **English as the primary language** and **German as a full translation**.

German subtitle:

```text
Heilige Herrschaft - Glauben neu gedacht
```

---

## Current status

| Area | Status |
| --- | --- |
| Phase 1 - Mod foundation | Ready for local load test |
| Phase 2 - First active faith mechanics | In progress |
| Active gameplay effects | 3 small Phase 2 effects implemented |
| Primary language | English |
| German translation | Supported |
| Custom UI | Not started |
| Local Civ VI test | Pending |

Phase 1 is structurally ready, but it is not marked as fully complete until the mod has been copied into the local Civilization VI Mods folder and tested in-game.

Phase 2 now includes the first active gameplay modifiers. These effects are intentionally small, conservative and easy to debug.

---

## What Sacred Dominion does

Civilization VI often treats Faith as a strong but specialized resource. Without a religious victory plan, specific beliefs, Monumentality, Naturalists, Rock Bands or certain civilization abilities, Faith can feel passive.

Sacred Dominion turns Faith into a more active empire-management tool:

- religious infrastructure matters outside pure religious victory
- Faith-related choices support economy, food and culture
- future phases will add deeper systems such as decrees, city actions, Zeal and Schism
- custom UI comes later, after the gameplay foundation is stable

The design goal is not to make Faith a second version of Gold. Faith should feel like religious authority, cultural legitimacy, social support and political pressure.

---

## Active Phase 2 mechanics

The first gameplay pass adds three small effects.

### Tithe Administration

**Type:** Economic policy card  
**German:** Zehntverwaltung  
**Current effect:** Temples provide **+1 Gold** while this policy is slotted.

### Charitable Works

**Type:** Belief  
**German:** Armenfürsorge  
**Current effect:** Shrines and Temples provide **+1 Food**.

### Pilgrimage Network

**Type:** Belief  
**German:** Pilgernetzwerk  
**Current effect:** Temples provide **+1 Culture**.

---

## Phase 2 records reserved for later effects

These records exist and are localized, but their gameplay effects are intentionally reserved for a later pass.

### Sacred Administration

**Type:** Belief  
**German:** Heilige Verwaltung  
**Planned direction:** stability, loyalty or administrative yield support.

### Order Patronage

**Type:** Economic policy card  
**German:** Ordensförderung  
**Planned direction:** Faith-to-action support, religious order support or a conservative Faith bonus.

---

## Project phases

Detailed roadmap:

```text
Docs/ROADMAP.md
```

### Phase 1 - Mod foundation

Goal: Civilization VI recognizes and loads the mod.

Status:

- `.modinfo` exists
- text files exist
- base SQL files exist
- load test instructions exist
- local test still pending

### Phase 2 - First active faith mechanics

Goal: Make Faith more useful through existing Civ VI systems before custom UI work begins.

Status:

- 3 belief records exist
- 2 policy records exist
- English and German localization exist
- 3 conservative effects are implemented
- local SQL/load test still pending

### Later phases

Planned future systems:

- city-based faith actions
- empire-wide sacred decrees
- Zeal and Schism as risk/reward systems
- expanded religious unit roles
- custom UI and faith overview
- balance and Workshop release polish

---

## Repository structure

```text
Sacred-Dominion/
├── README.md
├── SacredDominion.modinfo
├── Data/
│   ├── Beliefs.sql
│   ├── Policies.sql
│   ├── Buildings.sql
│   ├── Projects.sql
│   └── Modifiers.sql
├── Text/
│   ├── en_US.xml
│   └── de_DE.xml
└── Docs/
    ├── BALANCING.md
    ├── DESIGN.md
    ├── LOAD_TEST.md
    ├── LOCALIZATION.md
    ├── PHASE1_STATUS.md
    ├── PHASE2_MECHANICS.md
    ├── PHASE2_MODIFIERS.md
    ├── PHASE2_STATUS.md
    ├── PHASE2_TEST.md
    └── ROADMAP.md
```

---

## Language policy

English is the source language.

German is a complete translation, not an afterthought.

Gameplay-facing text keys follow this pattern:

```text
LOC_SACRED_DOMINION_...
```

Localization files:

```text
Text/en_US.xml
Text/de_DE.xml
```

---

## Local test notes

Phase 1 and Phase 2 still need local Civilization VI validation.

Useful documents:

```text
Docs/LOAD_TEST.md
Docs/PHASE2_TEST.md
```

Important logs to check after loading the mod locally:

```text
Database.log
Localization.log
Modding.log
Lua.log
```

---

## Current technical caution

The first Phase 2 effects are implemented, but not yet verified in a local Civ VI install.

Before adding more complex systems, test that:

- the mod appears in Additional Content
- a new game starts
- the new belief and policy records load
- the new tooltips appear correctly
- the first modifiers do not create database errors

---

## Fan project notice

This is an unofficial fan project for *Sid Meier's Civilization VI*.

Civilization, Civilization VI and Sid Meier's Civilization VI are trademarks of their respective owners. This project is not affiliated with Firaxis Games, 2K Games or Take-Two Interactive.
