-- Sacred Dominion
-- Policies.sql
--
-- Primary language: English
-- German translation: Text/de_DE.xml
--
-- Phase 2: policy base records.
-- These records define the first Sacred Dominion policy concepts.
--
-- Important:
-- This file currently creates the policy records only.
-- No gameplay modifiers are attached yet.
-- The next step after local testing is to attach conservative, easy-to-debug modifiers.

-- Phase 2 selected policy IDs:
-- - POLICY_SACRED_DOMINION_TITHE_ADMINISTRATION
-- - POLICY_SACRED_DOMINION_ORDER_PATRONAGE

INSERT OR IGNORE INTO Types
    (Type, Kind)
VALUES
    ('POLICY_SACRED_DOMINION_TITHE_ADMINISTRATION', 'KIND_POLICY'),
    ('POLICY_SACRED_DOMINION_ORDER_PATRONAGE', 'KIND_POLICY');

INSERT OR IGNORE INTO Policies
    (PolicyType, Name, Description, PrereqCivic, GovernmentSlotType)
VALUES
    ('POLICY_SACRED_DOMINION_TITHE_ADMINISTRATION', 'LOC_SACRED_DOMINION_POLICY_TITHE_ADMINISTRATION_NAME', 'LOC_SACRED_DOMINION_POLICY_TITHE_ADMINISTRATION_DESCRIPTION', 'CIVIC_THEOLOGY', 'SLOT_ECONOMIC'),
    ('POLICY_SACRED_DOMINION_ORDER_PATRONAGE', 'LOC_SACRED_DOMINION_POLICY_ORDER_PATRONAGE_NAME', 'LOC_SACRED_DOMINION_POLICY_ORDER_PATRONAGE_DESCRIPTION', 'CIVIC_REFORMED_CHURCH', 'SLOT_ECONOMIC');

-- Planned modifier direction after record load test:
--
-- Tithe Administration:
-- - modest Gold or Faith from religious infrastructure.
--
-- Order Patronage:
-- - improved Faith-to-action conversion, likely through religious unit or purchase support.
