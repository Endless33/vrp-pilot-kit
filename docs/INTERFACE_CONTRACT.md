# VRP Public Interface Contract

## Purpose

This document defines the public interface contract for a VRP pilot deployment.

The interface contract specifies the observable behavior, supported interaction model, and stability expectations for public integration points.

The contract intentionally excludes all protected runtime implementation details.

---

## Scope

This contract defines:

- supported public interfaces;
- expected interface behavior;
- participant responsibilities;
- compatibility expectations;
- interface stability principles.

This contract does not define:

- protected runtime implementation;
- proprietary algorithms;
- internal authority logic;
- confidential runtime state;
- private engineering processes.

---

## Contract Objectives

The public interface contract exists to ensure that:

- integrations remain predictable;
- observable behavior remains stable;
- validation procedures remain reproducible;
- protected implementation remains isolated.

---

## Supported Public Interfaces

Public interfaces may include:

- deployment configuration;
- documented runtime inputs;
- evidence export;
- validation artifacts;
- public reports;
- operational metadata.

Only documented interfaces are considered supported.

---

## Interface Stability

Public interfaces should remain stable throughout a pilot unless an explicit revision is published.

Breaking changes should be avoided.

When unavoidable, they should be documented before use.

---

## Observable Behavior

Participants may rely on documented observable behavior including:

- accepted inputs;
- documented outputs;
- exported evidence;
- validation results;
- engineering reports.

Observable behavior does not imply visibility into runtime implementation.

---

## Unsupported Interfaces

The following are outside the public interface contract:

- private APIs;
- internal runtime services;
- debugging interfaces;
- engineering tooling;
- confidential operational interfaces.

Participants should not depend on undocumented behavior.

---

## Interface Evolution

Public interfaces may evolve over time.

Future revisions should preserve compatibility whenever practical.

Interface revisions should be documented using versioned public documentation.

---

## Error Handling

Public interfaces should produce explicit outcomes whenever practical.

Typical observable outcomes include:

- successful completion;
- validation failure;
- unsupported operation;
- rejected request;
- exported error information.

Silent behavior should be avoided.

---

## Participant Responsibilities

Participants are responsible for:

- using documented interfaces;
- preserving exported artifacts;
- reporting reproducible observations;
- avoiding unsupported integration methods.

---

## VRP Responsibilities

The protected runtime is responsible for:

- maintaining documented public interfaces;
- preserving observable behavior;
- exporting documented evidence;
- protecting confidential implementation.

---

## Security Boundary

The public interface contract does not expose:

- runtime source code;
- internal authority logic;
- proprietary algorithms;
- confidential runtime state;
- implementation-specific behavior.

---

## Contract Invariants

The public interface contract preserves the following properties.

- documented interfaces remain authoritative;
- observable behavior remains stable;
- protected implementation remains confidential;
- exported evidence remains independently verifiable;
- undocumented interfaces are unsupported.

---

## Summary

The VRP public interface contract defines a stable integration surface for pilot participants while preserving the separation between observable behavior and protected runtime implementation.

Participants integrate through documented interfaces, evaluate exported evidence, and rely on versioned public contracts rather than private implementation details.