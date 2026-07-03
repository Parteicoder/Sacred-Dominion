# Sacred Dominion - Local Civilization VI Load Test

This checklist is for testing whether Phase 1 loads correctly in Civilization VI.

Phase 1 is not meant to add gameplay yet. The goal is only that the mod appears, can be enabled, and does not create database or Lua errors.

---

## 1. Install the mod locally

Copy the full repository folder into the Civilization VI Mods directory.

Typical Windows path:

```text
Documents\My Games\Sid Meier's Civilization VI\Mods\Sacred-Dominion
```

The folder should contain:

```text
Sacred-Dominion/
├── SacredDominion.modinfo
├── Data/
├── Text/
└── Docs/
```

---

## 2. Start Civilization VI

Open the game and go to:

```text
Additional Content -> Mods
```

Expected result:

```text
Sacred Dominion
```

should be visible in the mod list.

---

## 3. Enable the mod

Enable Sacred Dominion and start a new test game.

Recommended test settings:

```text
Map: Duel or Tiny
Speed: Online or Quick
Civilization: any
Ruleset: Gathering Storm if available
```

---

## 4. Check expected behavior

Expected Phase 1 behavior:

- the mod appears in Additional Content
- the mod can be enabled
- the game can start a new match
- no gameplay changes are visible yet
- no database error should appear
- no Lua error popup should appear

---

## 5. Check logs if something breaks

Common Civ VI log directory:

```text
Documents\My Games\Sid Meier's Civilization VI\Logs
```

Most important logs:

```text
Database.log
Modding.log
Localization.log
Lua.log
```

Look for:

```text
ERROR
no such table
syntax error
failed to load
```

---

## 6. Phase 1 pass condition

Phase 1 passes when:

- [ ] Sacred Dominion appears in the mod list
- [ ] Sacred Dominion can be enabled
- [ ] a new game starts successfully
- [ ] `Database.log` has no Sacred Dominion errors
- [ ] `Localization.log` has no missing Sacred Dominion text errors
- [ ] `Lua.log` has no Sacred Dominion errors

---

## 7. If the test fails

Write down:

- exact error message
- which log contains the error
- whether the mod appears in Additional Content
- whether the error happens on game start or match start

Then fix Phase 1 before moving to Phase 2.
