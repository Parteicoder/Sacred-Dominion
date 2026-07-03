# Sacred Dominion - Phase 4 Test Checklist

Phase 4 adds five sacred decrees as policy cards.

Local Civilization VI validation is skipped for now and should be done later.

---

## Decrees to check

- Declare Tithe / Zehnt ausrufen
- Holy Festivals / Heilige Feste
- Missionary Mandate / Missionsmandat
- Mobilize Orders / Orden mobilisieren
- Wonder Veneration / Wunderverehrung

---

## Expected behavior

The decree policies should:

- appear as policy cards
- unlock at their configured civics
- use the correct slot types
- show correct English and German tooltips
- apply only while slotted
- not create database errors

---

## Current effects

| Decree | Expected effect |
| --- | --- |
| Declare Tithe | Temples +1 Gold while slotted |
| Holy Festivals | Temples +1 Culture while slotted |
| Missionary Mandate | Shrines +1 Faith while slotted |
| Mobilize Orders | Temples +1 Faith while slotted |
| Wonder Veneration | Temples +1 Culture while slotted |

---

## Logs to check later

- Database.log
- Localization.log
- Modding.log
- Lua.log

---

## Pass condition

Phase 4 passes when:

- the mod starts
- all five decree policies load
- tooltips are correct
- effects apply only while slotted
- no Sacred Dominion errors appear in the logs
