# Sacred Dominion – Localization Policy

Sacred Dominion is developed with **English as the primary language** and **German as a full translation**.

The mod should feel international by default, while still being fully playable in German.

---

## Primary language

The primary language is:

```text
en_US
```

All new gameplay concepts, internal text keys, tooltips, descriptions and workshop-facing feature names should be written in English first.

The German translation follows the English source text.

---

## Supported languages

| Language | File | Status | Role |
| --- | --- | --- | --- |
| English | `Text/en_US.xml` | primary | source language |
| German | `Text/de_DE.xml` | supported | full translation |

---

## Rule for new text keys

Every new text key must be added to both files:

```text
Text/en_US.xml
Text/de_DE.xml
```

Example:

```xml
<!-- en_US.xml -->
<Row Tag="LOC_SACRED_DOMINION_DECREE_HOLY_FESTIVALS_NAME" Language="en_US">
  <Text>Holy Festivals</Text>
</Row>
```

```xml
<!-- de_DE.xml -->
<Row Tag="LOC_SACRED_DOMINION_DECREE_HOLY_FESTIVALS_NAME" Language="de_DE">
  <Text>Heilige Feste</Text>
</Row>
```

---

## Naming style

### Internal keys

Internal localization keys stay English and use the prefix:

```text
LOC_SACRED_DOMINION_
```

Examples:

```text
LOC_SACRED_DOMINION_PROJECT_SERMON_CAMPAIGN_NAME
LOC_SACRED_DOMINION_DECREE_TITHE_NAME
LOC_SACRED_DOMINION_CONCEPT_ZEAL_NAME
LOC_SACRED_DOMINION_CONCEPT_SCHISM_NAME
```

### Gameplay names

English names should be clean, readable and suitable for the Steam Workshop.

German names should not be literal machine translations. They should sound natural in German Civilization VI language style.

Example:

| English | German |
| --- | --- |
| Sermon Campaign | Predigtkampagne |
| Holy Order | Heilige Ordnung |
| Pilgrimage Center | Pilgerzentrum |
| Sacred Decree | Glaubensdekret |
| Zeal | Eifer |
| Schism | Spaltung |

---

## Translation principle

German should preserve the meaning and gameplay clarity, not every English word.

Good translation:

```text
Holy Festivals → Heilige Feste
```

Bad translation:

```text
Holy Festivals → Heilige Festivals
```

The German version may be slightly more direct if that makes tooltips clearer.

---

## Documentation language

Project documentation can be written in German during early development, because the planning currently happens in German.

Gameplay-facing files should still follow this rule:

1. English source text first
2. German translation second
3. same localization key structure in both files

For release documentation and Steam Workshop text, the final public version should preferably exist in English and German.

---

## First required localization files

```text
Text/en_US.xml
Text/de_DE.xml
```

These files should contain at least:

- mod name
- mod description
- basic concept names
- project names
- belief names
- policy names
- decree names
- tooltip texts

---

## Release checklist

Before every release:

- [ ] every `en_US` key exists in `de_DE`
- [ ] every `de_DE` key exists in `en_US`
- [ ] no placeholder text remains
- [ ] no mixed German/English tooltip exists by accident
- [ ] German translations are clear in actual gameplay context
- [ ] English names are suitable for Steam Workshop presentation

---

## Guiding sentence

**English is the source. German is a complete mirror, not an afterthought.**
