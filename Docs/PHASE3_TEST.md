# Sacred Dominion - Phase 3 Test Checklist

Phase 3 adds four city faith actions as Holy Site projects.

The local Civilization VI test will be done later.

---

## Projects to check

- Sermon Campaign / Predigtkampagne
- Charitable Works / Armenfürsorge
- Holy Order / Heilige Ordnung
- Pilgrimage Center / Pilgerzentrum

---

## Expected behavior

The projects should:

- require a Holy Site
- appear in eligible cities
- show correct English and German text
- convert Production into the intended yields
- not create database errors

---

## Current project effects

| Project | Expected effect |
| --- | --- |
| Sermon Campaign | Production to Faith |
| Charitable Works | Production to Food |
| Holy Order | Production to Faith and Gold |
| Pilgrimage Center | Production to Culture and Faith |

---

## Logs to check

After loading the mod locally, check:

- Database.log
- Localization.log
- Modding.log
- Lua.log

---

## Pass condition

Phase 3 passes when:

- the mod starts
- the projects appear in cities with Holy Sites
- tooltips are correct
- the yield conversions work
- no Sacred Dominion errors appear in the logs

---

## If the test fails

Disable `Data/Projects.sql` in `SacredDominion.modinfo`, confirm the rest of the mod still loads, then re-enable one project at a time.
