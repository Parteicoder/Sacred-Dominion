# Sacred Dominion

**Sacred Dominion** is a faith-focused gameplay rework for Civilization VI.

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
| Phase 2 - First active faith mechanics | Effect pass implemented, local test pending |
| Phase 3 - City faith actions | First project pass implemented, local test pending |
| Active gameplay effects | 5 Phase 2 effects and 4 Phase 3 city projects |
| Primary language | English |
| German translation | Supported |
| Custom UI | Not started |
| Local Civ VI test | Pending |

Phase 1 is structurally ready, but it is not marked as fully complete until the mod has been tested locally in Civilization VI.

Phase 2 includes conservative gameplay modifiers for all five initial Phase 2 records.

Phase 3 adds the first city-based faith actions as Holy Site projects.

---

## Active Phase 2 mechanics

### Sacred Administration

**Type:** Belief  
**German:** Heilige Verwaltung  
**Current effect:** Temples provide **+1 Faith**.

### Charitable Works

**Type:** Belief  
**German:** Armenfürsorge  
**Current effect:** Shrines and Temples provide **+1 Food**.

### Pilgrimage Network

**Type:** Belief  
**German:** Pilgernetzwerk  
**Current effect:** Temples provide **+1 Culture**.

### Tithe Administration

**Type:** Economic policy card  
**German:** Zehntverwaltung  
**Current effect:** Temples provide **+1 Gold** while this policy is slotted.

### Order Patronage

**Type:** Economic policy card  
**German:** Ordensförderung  
**Current effect:** Temples provide **+1 Faith** while this policy is slotted.

---

## Active Phase 3 city projects

### Sermon Campaign

**German:** Predigtkampagne  
**Requirement:** Holy Site  
**Current effect:** Converts Production into **Faith**.

### Charitable Works

**German:** Armenfürsorge  
**Requirement:** Holy Site  
**Current effect:** Converts Production into **Food**.

### Holy Order

**German:** Heilige Ordnung  
**Requirement:** Holy Site  
**Current effect:** Converts Production into **Faith** and **Gold**.

### Pilgrimage Center

**German:** Pilgerzentrum  
**Requirement:** Holy Site  
**Current effect:** Converts Production into **Culture** and **Faith**.

---

## Project goal

Sacred Dominion makes Faith more active outside a pure religious victory path.

The design direction:

- religious infrastructure should matter more
- Faith should support economy, food, culture and empire management
- city-level faith actions should become regular local decisions
- deeper systems such as decrees, Zeal and Schism come later
- custom UI comes after the gameplay foundation is stable

---

## Project phases

Detailed roadmap:

```text
Docs/ROADMAP.md
```

### Phase 1 - Mod foundation

Status:

- `.modinfo` exists
- text files exist
- base SQL files exist
- load test instructions exist
- local test still pending

### Phase 2 - First active faith mechanics

Status:

- 3 belief records exist
- 2 policy records exist
- English and German localization exist
- 5 conservative effects are implemented
- local SQL/load test still pending

### Phase 3 - City faith actions

Status:

- 4 Holy Site city projects exist
- English and German localization exist
- project yield conversions are implemented
- local SQL/load test still pending

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
    ├── PHASE3_MECHANICS.md
    ├── PHASE3_STATUS.md
    ├── PHASE3_TEST.md
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

Phase 1, Phase 2 and Phase 3 still need local Civilization VI validation.

Useful documents:

```text
Docs/LOAD_TEST.md
Docs/PHASE2_TEST.md
Docs/PHASE3_TEST.md
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

Phase 3 project SQL is implemented, but not yet verified in a local Civ VI install.

Before adding more complex systems, test that:

- the mod appears in Additional Content
- a new game starts
- the Phase 2 belief and policy records load
- the Phase 3 city projects appear in cities with Holy Sites
- the new tooltips appear correctly
- the first modifiers and projects do not create database errors
