# VRP Security Boundary

## Purpose

This document defines the public security boundary for a VRP pilot deployment.

The security boundary identifies which components, interfaces, responsibilities, and artifacts are intentionally exposed during a pilot and which remain protected.

The objective is to enable meaningful technical evaluation without exposing confidential runtime implementation.

---

## Scope

This document defines:

- public security boundaries;
- participant responsibilities;
- protected implementation boundaries;
- evidence boundaries;
- validation boundaries.

It does not define:

- internal runtime security mechanisms;
- proprietary security controls;
- protected algorithms;
- cryptographic implementation details;
- confidential operational procedures.

---

## Security Objectives

A VRP pilot deployment should preserve the following objectives.

- protect the confidentiality of the protected runtime;
- preserve evidence integrity;
- support independent validation;
- expose only approved interfaces;
- prevent unauthorized access to protected implementation.

---

## Security Domains

The pilot architecture separates security into four logical domains.

### Participant Domain

Controlled by the participant.

Typical responsibilities include:

- infrastructure;
- operating systems;
- networking;
- monitoring;
- test execution;
- local security controls.

---

### Integration Domain

Defines the approved interaction surface between participant-controlled systems and the protected runtime.

Only documented interfaces belong to this domain.

---

### Protected Runtime Domain

Contains the protected implementation.

This domain includes implementation that is intentionally excluded from the public pilot.

Participants do not receive access to this domain.

---

### Validation Domain

Consumes exported evidence.

Validation systems evaluate observable artifacts rather than protected runtime internals.

---

## Protected Assets

Examples of protected assets include:

- runtime source code;
- proprietary algorithms;
- internal authority logic;
- confidential runtime state;
- private engineering tools;
- cryptographic implementation details;
- recovery implementation.

These assets remain outside the public pilot boundary.

---

## Public Assets

Examples of public assets include:

- deployment documentation;
- public integration contracts;
- exported evidence;
- validation reports;
- engineering summaries;
- example configurations;
- public report templates.

---

## Evidence Boundary

Evidence is intentionally exported through approved interfaces.

Evidence should remain:

- attributable;
- reproducible;
- independently verifiable;
- separated from private runtime state.

---

## Validation Boundary

Validation systems should require only exported artifacts.

They should not require:

- privileged runtime access;
- protected source code;
- internal runtime state;
- confidential engineering documentation.

---

## Access Principles

The public pilot follows several security principles.

### Least Privilege

Only required access should be granted.

---

### Explicit Authorization

Approved interfaces should require documented authorization where applicable.

---

### Boundary Separation

Participant infrastructure, protected runtime, and validation systems remain logically separated.

---

### Observable Verification

Security conclusions should be supported by exported evidence rather than implementation visibility.

---

## Security Invariants

The public security boundary preserves the following properties.

- protected implementation remains confidential;
- only approved interfaces are exposed;
- evidence remains independently verifiable;
- participant systems remain participant-controlled;
- validation remains independent of runtime internals;
- observable behavior does not disclose protected implementation.

---

## Out of Scope

This document does not describe:

- production security architecture;
- internal implementation details;
- proprietary security mechanisms;
- private deployment procedures;
- protected engineering workflows.

---

## Summary

The VRP security boundary separates public evaluation from protected implementation.

Participants evaluate observable behavior through documented interfaces and exported evidence while confidential runtime implementation remains outside the public pilot boundary.