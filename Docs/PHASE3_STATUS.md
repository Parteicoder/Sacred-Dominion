# Phase 3 Status - City Faith Actions

Current phase: **Phase 3 - City Faith Actions**

Goal: Add the first city-level faith actions through existing Civilization VI project systems before custom UI is attempted.

Phase 3 focuses on:

- city projects
- Holy Site related actions
- clear English and German tooltips
- conservative effects
- no custom UI yet

---

## Progress

**Overall progress:** 82%

## Last completed step

Added static review notes to this status file. Phase 3 is now implementation-ready for a later local Civilization VI test.

## Current checklist

- [x] Phase 3 status tracker created
- [x] Phase 3 mechanics selected
- [x] English localization reviewed
- [x] German localization reviewed
- [x] project SQL implemented
- [x] project yield conversions implemented
- [x] README updated
- [x] Phase 3 test checklist created
- [x] local test issue created
- [x] static review notes added
- [ ] local Civ VI test passed

---

## Active city actions

- Sermon Campaign / Predigtkampagne: Holy Site project converting Production into Faith.
- Charitable Works / Armenfürsorge: Holy Site project converting Production into Food.
- Holy Order / Heilige Ordnung: Holy Site project converting Production into Faith and Gold.
- Pilgrimage Center / Pilgerzentrum: Holy Site project converting Production into Culture and Faith.

---

## Static review notes

Checked before local test:

- `Data/Projects.sql` contains the four project records.
- The projects require `DISTRICT_HOLY_SITE`.
- Project yield conversions are defined.
- English project text exists in `Text/en_US.xml`.
- German project text exists in `Text/de_DE.xml`.
- README includes Phase 3.
- Issue #6 tracks the later local test.

Main thing to verify later:

- project visibility in Holy Site cities
- yield conversion behavior
- clean database and localization logs

---

## Test tracking

Local test checklist:

```text
Docs/PHASE3_TEST.md
```

GitHub test tracker:

```text
Issue #6 - Test: Phase 3 Stadtprojekte pruefen
```

---

## Hold note

The local Civilization VI test will be done later.

Phase 3 should not be marked as 100% complete until the local game test passes.
