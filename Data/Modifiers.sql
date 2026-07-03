-- Sacred Dominion
-- Modifiers.sql
--
-- Primary language: English
-- German translation: Text/de_DE.xml
--
-- Phase 2 gameplay modifiers.
--
-- Issue #1 fix:
-- The first three Phase 2 mechanics now have small active gameplay effects.
-- These effects are intentionally conservative and easy to test.
--
-- Active effects:
-- - Tithe Administration: Temples provide +1 Gold while the policy is slotted.
-- - Charitable Works: Shrines and Temples provide +1 Food for cities using the belief.
-- - Pilgrimage Network: Temples provide +1 Culture for cities using the belief.
--
-- Still pending for later passes:
-- - Sacred Administration
-- - Order Patronage

-------------------------------------------------------------------------------
-- Policy: Tithe Administration
-------------------------------------------------------------------------------

INSERT OR IGNORE INTO PolicyModifiers
    (PolicyType, ModifierId)
VALUES
    ('POLICY_SACRED_DOMINION_TITHE_ADMINISTRATION', 'SACRED_DOMINION_TITHE_ADMINISTRATION_TEMPLE_GOLD');

INSERT OR IGNORE INTO Modifiers
    (ModifierId, ModifierType, SubjectRequirementSetId)
VALUES
    ('SACRED_DOMINION_TITHE_ADMINISTRATION_TEMPLE_GOLD', 'MODIFIER_PLAYER_CITIES_ADJUST_BUILDING_YIELD_CHANGE', NULL);

INSERT OR IGNORE INTO ModifierArguments
    (ModifierId, Name, Value)
VALUES
    ('SACRED_DOMINION_TITHE_ADMINISTRATION_TEMPLE_GOLD', 'BuildingType', 'BUILDING_TEMPLE'),
    ('SACRED_DOMINION_TITHE_ADMINISTRATION_TEMPLE_GOLD', 'YieldType', 'YIELD_GOLD'),
    ('SACRED_DOMINION_TITHE_ADMINISTRATION_TEMPLE_GOLD', 'Amount', '1');

-------------------------------------------------------------------------------
-- Belief: Charitable Works
-------------------------------------------------------------------------------

INSERT OR IGNORE INTO BeliefModifiers
    (BeliefType, ModifierID)
VALUES
    ('BELIEF_SACRED_DOMINION_CHARITABLE_WORKS', 'SACRED_DOMINION_CHARITABLE_WORKS_ATTACH_SHRINE_FOOD'),
    ('BELIEF_SACRED_DOMINION_CHARITABLE_WORKS', 'SACRED_DOMINION_CHARITABLE_WORKS_ATTACH_TEMPLE_FOOD');

INSERT OR IGNORE INTO Modifiers
    (ModifierId, ModifierType, SubjectRequirementSetId)
VALUES
    ('SACRED_DOMINION_CHARITABLE_WORKS_ATTACH_SHRINE_FOOD', 'MODIFIER_ALL_CITIES_ATTACH_MODIFIER', NULL),
    ('SACRED_DOMINION_CHARITABLE_WORKS_ATTACH_TEMPLE_FOOD', 'MODIFIER_ALL_CITIES_ATTACH_MODIFIER', NULL),
    ('SACRED_DOMINION_CHARITABLE_WORKS_SHRINE_FOOD', 'MODIFIER_SINGLE_CITY_ADJUST_BUILDING_YIELD_CHANGE', NULL),
    ('SACRED_DOMINION_CHARITABLE_WORKS_TEMPLE_FOOD', 'MODIFIER_SINGLE_CITY_ADJUST_BUILDING_YIELD_CHANGE', NULL);

INSERT OR IGNORE INTO ModifierArguments
    (ModifierId, Name, Value)
VALUES
    ('SACRED_DOMINION_CHARITABLE_WORKS_ATTACH_SHRINE_FOOD', 'ModifierId', 'SACRED_DOMINION_CHARITABLE_WORKS_SHRINE_FOOD'),
    ('SACRED_DOMINION_CHARITABLE_WORKS_ATTACH_TEMPLE_FOOD', 'ModifierId', 'SACRED_DOMINION_CHARITABLE_WORKS_TEMPLE_FOOD'),
    ('SACRED_DOMINION_CHARITABLE_WORKS_SHRINE_FOOD', 'BuildingType', 'BUILDING_SHRINE'),
    ('SACRED_DOMINION_CHARITABLE_WORKS_SHRINE_FOOD', 'YieldType', 'YIELD_FOOD'),
    ('SACRED_DOMINION_CHARITABLE_WORKS_SHRINE_FOOD', 'Amount', '1'),
    ('SACRED_DOMINION_CHARITABLE_WORKS_TEMPLE_FOOD', 'BuildingType', 'BUILDING_TEMPLE'),
    ('SACRED_DOMINION_CHARITABLE_WORKS_TEMPLE_FOOD', 'YieldType', 'YIELD_FOOD'),
    ('SACRED_DOMINION_CHARITABLE_WORKS_TEMPLE_FOOD', 'Amount', '1');

-------------------------------------------------------------------------------
-- Belief: Pilgrimage Network
-------------------------------------------------------------------------------

INSERT OR IGNORE INTO BeliefModifiers
    (BeliefType, ModifierID)
VALUES
    ('BELIEF_SACRED_DOMINION_PILGRIMAGE_NETWORK', 'SACRED_DOMINION_PILGRIMAGE_NETWORK_ATTACH_TEMPLE_CULTURE');

INSERT OR IGNORE INTO Modifiers
    (ModifierId, ModifierType, SubjectRequirementSetId)
VALUES
    ('SACRED_DOMINION_PILGRIMAGE_NETWORK_ATTACH_TEMPLE_CULTURE', 'MODIFIER_ALL_CITIES_ATTACH_MODIFIER', NULL),
    ('SACRED_DOMINION_PILGRIMAGE_NETWORK_TEMPLE_CULTURE', 'MODIFIER_SINGLE_CITY_ADJUST_BUILDING_YIELD_CHANGE', NULL);

INSERT OR IGNORE INTO ModifierArguments
    (ModifierId, Name, Value)
VALUES
    ('SACRED_DOMINION_PILGRIMAGE_NETWORK_ATTACH_TEMPLE_CULTURE', 'ModifierId', 'SACRED_DOMINION_PILGRIMAGE_NETWORK_TEMPLE_CULTURE'),
    ('SACRED_DOMINION_PILGRIMAGE_NETWORK_TEMPLE_CULTURE', 'BuildingType', 'BUILDING_TEMPLE'),
    ('SACRED_DOMINION_PILGRIMAGE_NETWORK_TEMPLE_CULTURE', 'YieldType', 'YIELD_CULTURE'),
    ('SACRED_DOMINION_PILGRIMAGE_NETWORK_TEMPLE_CULTURE', 'Amount', '1');

-------------------------------------------------------------------------------
-- Reserved for later passes
-------------------------------------------------------------------------------
-- Sacred Administration: planned stability, loyalty or fallback yield bonus.
-- Order Patronage: planned Faith-to-action or fallback Faith support bonus.
