# Sacred Dominion - Phase 3 Mechanics

Phase 3 introduces the first city-level faith actions.

The goal is to make Faith feel local and active without building a custom UI yet.

---

## Design boundary

Phase 3 should use existing Civilization VI systems first.

Preferred implementation path:

- city projects
- Holy Site requirements
- conservative yields or modifiers
- clear tooltips

Avoid in Phase 3:

- custom UI
- large Lua systems
- Zeal meter
- Schism meter
- complex cooldown logic
- hidden state systems

---

## First city actions

## 1. Sermon Campaign

**German:** Predigtkampagne

### Design goal

A city focuses on preaching and religious outreach.

### First safe gameplay direction

- requires a Holy Site
- provides Faith or religious pressure support
- may later connect to conversion pressure

### First implementation preference

Start as a city project with a Faith-focused reward or conversion-style effect if stable.

---

## 2. Charitable Works

**German:** Armenfürsorge

### Design goal

A city uses religious organization to support the population.

### First safe gameplay direction

- requires a Holy Site
- supports Food, Housing, Amenities or local stability
- should not overpower the Phase 2 belief with the same theme

### First implementation preference

Start as a city project with a small Food or city-support reward.

---

## 3. Holy Order

**German:** Heilige Ordnung

### Design goal

A city strengthens religious discipline and internal order.

### First safe gameplay direction

- requires a Holy Site
- supports Loyalty, Faith or stability
- loyalty effects should wait until simple projects load cleanly

### First implementation preference

Start with a conservative Faith or Gold reward. Add Loyalty later if local testing allows it.

---

## 4. Pilgrimage Center

**German:** Pilgerzentrum

### Design goal

A city becomes a local destination for pilgrims, culture and religious influence.

### First safe gameplay direction

- requires a Holy Site
- supports Culture, Faith or Gold
- later may connect to Tourism or trade routes

### First implementation preference

Start with a small Culture or Faith reward.

---

## Naming rule

Project localization keys already exist:

```text
LOC_SACRED_DOMINION_PROJECT_SERMON_CAMPAIGN_NAME
LOC_SACRED_DOMINION_PROJECT_SERMON_CAMPAIGN_DESCRIPTION
LOC_SACRED_DOMINION_PROJECT_CHARITY_NAME
LOC_SACRED_DOMINION_PROJECT_CHARITY_DESCRIPTION
LOC_SACRED_DOMINION_PROJECT_HOLY_ORDER_NAME
LOC_SACRED_DOMINION_PROJECT_HOLY_ORDER_DESCRIPTION
LOC_SACRED_DOMINION_PROJECT_PILGRIMAGE_CENTER_NAME
LOC_SACRED_DOMINION_PROJECT_PILGRIMAGE_CENTER_DESCRIPTION
```

---

## Technical caution

City projects should be added carefully.

The project table structure and completion modifiers must be validated locally before this phase can be considered complete.

If project SQL fails, disable `Data/Projects.sql` in `.modinfo`, confirm the rest of the mod still loads, then re-enable one project at a time.
