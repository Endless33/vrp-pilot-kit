# VRP Operational Assumptions

## Purpose

This document defines the operational assumptions used throughout a VRP pilot deployment.

These assumptions establish the conditions under which the public deployment guidance, validation procedures, and engineering recommendations are intended to be interpreted.

They are not operational requirements.

They are documented assumptions used to provide a common evaluation framework.

---

## Scope

This document describes assumptions regarding:

- deployment environments;
- participant responsibilities;
- operational behavior;
- validation activities;
- evidence generation.

It does not define implementation details of the protected VRP runtime.

---

## General Assumptions

Unless explicitly stated otherwise, the pilot assumes that:

- participating systems are under the control of the participant;
- infrastructure has been prepared before pilot execution;
- operators have administrative access to participant-controlled systems;
- required network connectivity is available;
- deployment documentation has been reviewed.

---

## Infrastructure Assumptions

The pilot assumes that participants are responsible for:

- servers;
- virtual machines;
- containers;
- network configuration;
- routing;
- firewall policy;
- storage;
- operating system maintenance.

Infrastructure management remains outside the scope of the protected runtime.

---

## Time Assumptions

The pilot assumes that participating systems maintain sufficiently synchronized clocks to support:

- event ordering;
- evidence timestamps;
- report generation;
- engineering review.

Minor clock differences may exist but should not invalidate evidence correlation.

---

## Network Assumptions

The pilot assumes that network conditions may change during evaluation.

Examples include:

- latency variation;
- packet loss;
- interface changes;
- route updates;
- temporary outages;
- transport migration.

These events may be introduced intentionally as part of validation.

---

## Operational Assumptions

During the pilot it is assumed that:

- deployment follows documented procedures;
- operators record significant observations;
- evidence is preserved after execution;
- exported artifacts remain available for review.

---

## Validation Assumptions

The validation process assumes that:

- exported evidence is available;
- validation documentation is complete;
- independent reviewers receive the required artifacts;
- conclusions are based on documented evidence.

---

## Security Assumptions

The public pilot assumes:

- participant infrastructure remains participant-controlled;
- protected runtime implementation remains confidential;
- only approved interfaces are used;
- evidence is exported through documented mechanisms.

---

## Out of Scope

This document does not assume:

- a specific operating system;
- a specific cloud provider;
- a specific network vendor;
- a specific deployment topology;
- production-scale infrastructure.

Pilot participants are responsible for adapting the public guidance to their own operational environment.

---

## Operational Invariants

The following assumptions remain consistent throughout the pilot.

- participants control their own infrastructure;
- protected runtime implementation remains isolated;
- observable behavior is evaluated through exported evidence;
- validation remains independent of implementation;
- engineering conclusions remain evidence-driven.

---

## Summary

The operational assumptions establish a common baseline for pilot execution and evaluation.

They provide a consistent interpretation of deployment guidance while preserving the separation between participant-controlled infrastructure, the protected VRP runtime, and the independent validation process.