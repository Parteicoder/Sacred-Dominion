# Sacred Dominion - Phase 2 Mechanics

Phase 2 introduces the first active Faith mechanics through existing Civilization VI systems.

The goal is not to finish the full Sacred Dominion vision yet. The goal is to make Faith more useful in normal play without custom UI.

---

## Design boundary

Phase 2 uses:

- beliefs
- policy cards
- localized names and tooltips
- SQL data only

Phase 2 does not use:

- custom UI
- new Lua systems
- new victory systems
- complex Zeal or Schism simulation
- aggressive balance changes

---

## First belief package

### 1. Sacred Administration

**Type:** Founder or Follower belief, depending on implementation limits  
**Theme:** Faith strengthens political order.

Design target:

- cities shaped by your religion should become easier to hold
- early implementation can use modest Loyalty, Gold or Faith effects
- should support domination, diplomacy and religious play

English:

```text
Sacred Administration
```

German:

```text
Heilige Verwaltung
```

---

### 2. Charitable Works

**Type:** Follower belief  
**Theme:** Faith supports the population.

Design target:

- Holy Site infrastructure helps city growth or stability
- should feel useful even without chasing a religious victory
- early implementation can use Food, Housing, Amenities or Faith-adjacent yields

English:

```text
Charitable Works
```

German:

```text
Armenfürsorge
```

---

### 3. Pilgrimage Network

**Type:** Founder or Enhancer belief, depending on implementation limits  
**Theme:** Religious influence moves through travel and trade.

Design target:

- religious pressure, Gold, Culture or Faith benefits from connected cities
- should support culture and religion strategies
- should later connect naturally to decrees and trade-route based pressure

English:

```text
Pilgrimage Network
```

German:

```text
Pilgernetzwerk
```

---

## First policy package

### 4. Tithe Administration

**Slot:** Economic  
**Theme:** Organizing religious income.

Design target:

- modest Gold or Faith from religious infrastructure
- useful in early and mid game
- should not become stronger than normal economy cards

English:

```text
Tithe Administration
```

German:

```text
Zehntverwaltung
```

---

### 5. Order Patronage

**Slot:** Economic or Military, depending on implementation  
**Theme:** The state supports religious orders.

Design target:

- cheaper religious units or better Faith conversion into action
- can later support military-faith hybrid play
- should remain modest in first version

English:

```text
Order Patronage
```

German:

```text
Ordensförderung
```

---

## Phase 2 first implementation plan

1. Add localization keys for all five mechanics.
2. Prepare SQL entries in `Beliefs.sql` and `Policies.sql`.
3. Prefer conservative modifiers first.
4. Avoid UI or Lua.
5. Leave clear comments wherever exact Civ VI modifier behavior needs local testing.

---

## Balance intent

Phase 2 should make the player think:

> I can actually use Faith as part of normal empire management now.

It should not yet create the full Sacred Dominion system.

No Zeal meter. No Schism meter. No new faith screen. Just the first teeth under the velvet.
