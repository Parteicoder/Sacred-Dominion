# Sacred Dominion - Phase 5 Implementation Boundaries

Phase 5 must stay safe until earlier phases have been tested locally.

---

## Current decision

No active gameplay SQL for Zeal, Schism or Resistance yet.

Phase 5 is a design and preparation phase.

---

## Allowed before local tests

Safe work:

- documentation
- naming
- balancing notes
- localization planning
- future hook planning
- test checklist

---

## Not allowed before local tests

Avoid:

- custom UI
- Lua state machine
- hidden global meters
- random city penalties
- loyalty penalties
- tourism boosts
- pressure snowballs
- cost reduction systems

---

## Preferred first real implementation later

When local tests are done, start with simple policy trade-offs.

Example pattern:

- a decree becomes stronger
- the same card gets a small drawback
- tooltip explains both
- effect can be removed quickly

---

## Reason

Sacred Dominion already stacks several Temple and Holy Site effects.

Adding tension systems too early could hide bugs and make balance unreadable.
