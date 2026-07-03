-- Sacred Dominion
-- Beliefs.sql
--
-- Primary language: English
-- German translation: Text/de_DE.xml
--
-- Phase 2: belief base records.
-- These records define the first Sacred Dominion belief concepts.
--
-- Important:
-- This file currently creates the belief records only.
-- No gameplay modifiers are attached yet.
-- The next step after local testing is to attach conservative, easy-to-debug modifiers.

-- Phase 2 selected belief IDs:
-- - BELIEF_SACRED_DOMINION_SACRED_ADMINISTRATION
-- - BELIEF_SACRED_DOMINION_CHARITABLE_WORKS
-- - BELIEF_SACRED_DOMINION_PILGRIMAGE_NETWORK

INSERT OR IGNORE INTO Types
    (Type, Kind)
VALUES
    ('BELIEF_SACRED_DOMINION_SACRED_ADMINISTRATION', 'KIND_BELIEF'),
    ('BELIEF_SACRED_DOMINION_CHARITABLE_WORKS', 'KIND_BELIEF'),
    ('BELIEF_SACRED_DOMINION_PILGRIMAGE_NETWORK', 'KIND_BELIEF');

INSERT OR IGNORE INTO Beliefs
    (BeliefType, Name, Description, BeliefClassType)
VALUES
    ('BELIEF_SACRED_DOMINION_SACRED_ADMINISTRATION', 'LOC_SACRED_DOMINION_BELIEF_SACRED_ADMINISTRATION_NAME', 'LOC_SACRED_DOMINION_BELIEF_SACRED_ADMINISTRATION_DESCRIPTION', 'BELIEF_CLASS_FOUNDER'),
    ('BELIEF_SACRED_DOMINION_CHARITABLE_WORKS', 'LOC_SACRED_DOMINION_BELIEF_CHARITABLE_WORKS_NAME', 'LOC_SACRED_DOMINION_BELIEF_CHARITABLE_WORKS_DESCRIPTION', 'BELIEF_CLASS_FOLLOWER'),
    ('BELIEF_SACRED_DOMINION_PILGRIMAGE_NETWORK', 'LOC_SACRED_DOMINION_BELIEF_PILGRIMAGE_NETWORK_NAME', 'LOC_SACRED_DOMINION_BELIEF_PILGRIMAGE_NETWORK_DESCRIPTION', 'BELIEF_CLASS_ENHANCER');

-- Planned modifier direction after record load test:
--
-- Sacred Administration:
-- - modest Loyalty, Gold or Faith support from cities following the founded religion.
--
-- Charitable Works:
-- - practical city support through Holy Site infrastructure.
--
-- Pilgrimage Network:
-- - Culture, Faith, Gold or pressure benefits connected to religion, holy places or routes.
