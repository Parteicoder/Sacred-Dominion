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
| Phase 1 - Mod foundation | Implemented, local test skipped for now |
| Phase 2 - First active faith mechanics | Implemented, local test skipped for now |
| Phase 3 - City faith actions | Implemented, local test skipped for now |
| Phase 4 - Sacred decrees | First policy-card pass implemented |
| Active gameplay effects | Phase 2 effects, Phase 3 projects and Phase 4 decree policies |
| Primary language | English |
| German translation | Supported |
| Custom UI | Not started |

Phase 4 adds the first sacred decrees as special policy cards. This keeps the system playable without custom UI.

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

## Active Phase 4 decree policies

### Declare Tithe

**German:** Zehnt ausrufen  
**Current effect:** Temples provide **+1 Gold** while this decree policy is slotted.

### Holy Festivals

**German:** Heilige Feste  
**Current effect:** Temples provide **+1 Culture** while this decree policy is slotted.

### Missionary Mandate

**German:** Missionsmandat  
**Current effect:** Shrines provide **+1 Faith** while this decree policy is slotted.

### Mobilize Orders

**German:** Orden mobilisieren  
**Current effect:** Temples provide **+1 Faith** while this decree policy is slotted.

### Wonder Veneration

**German:** Wunderverehrung  
**Current effect:** Temples provide **+1 Culture** while this decree policy is slotted.

---

## Project goal

Sacred Dominion makes Faith more active outside a pure religious victory path.

The design direction:

- religious infrastructure should matter more
- Faith should support economy, food, culture and empire management
- city-level faith actions should become regular local decisions
- decree policies should simulate empire-wide faith decisions until custom UI exists
- deeper systems such as Zeal and Schism come later
- custom UI comes after the gameplay foundation is stable

---

## Project phases

Detailed roadmap:

```text
Docs/ROADMAP.md
```

### Phase 1 - Mod foundation

Implemented. Local test skipped for now.

### Phase 2 - First active faith mechanics

Implemented with 3 belief records, 2 policy records and 5 conservative effects.

### Phase 3 - City faith actions

Implemented with 4 Holy Site city projects.

### Phase 4 - Sacred decrees

Implemented as first policy-card pass with 5 decree policies.

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
│   ├── Modifiers.sql
│   └── Decrees.sql
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
    ├── PHASE4_MECHANICS.md
    ├── PHASE4_STATUS.md
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

---

## Technical caution

Phase 1 to 3 local tests are intentionally skipped for now.

Phase 4 is implemented conservatively, but the full mod still needs local Civilization VI validation before it should be considered stable.
