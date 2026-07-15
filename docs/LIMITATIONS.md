# VRP Pilot Limitations

## Purpose

This document describes the limitations of the public VRP pilot materials.

Its purpose is to clearly distinguish between what is included in the pilot evaluation and what intentionally remains outside its scope.

These limitations help participants understand the boundaries of the public pilot while protecting the confidentiality of the protected VRP runtime.

---

## Scope

This document describes limitations affecting:

- public documentation;
- deployment guidance;
- validation materials;
- evidence exports;
- engineering conclusions.

It does not describe limitations of the protected runtime implementation itself.

---

## Public Documentation

The public documentation is intentionally limited.

It provides sufficient information to:

- prepare a pilot;
- integrate approved interfaces;
- execute validation;
- review exported evidence;
- understand documented behaviors.

It is not intended to describe the protected implementation.

---

## Protected Implementation

The following remain outside the public pilot.

- protected runtime source code;
- proprietary algorithms;
- internal authority logic;
- recovery implementation;
- internal runtime state;
- cryptographic implementation details;
- engineering development processes.

These materials are intentionally withheld.

---

## Deployment Limitations

The deployment documentation provides example guidance only.

It does not prescribe:

- production architecture;
- vendor-specific configuration;
- cloud-specific deployment;
- organization-specific operational policy;
- enterprise security architecture.

Participants are responsible for adapting deployment procedures to their own environments.

---

## Validation Limitations

The public validation model evaluates observable behavior only.

Validation does not attempt to:

- inspect protected runtime internals;
- verify private implementation decisions;
- evaluate confidential engineering processes;
- reproduce proprietary runtime algorithms.

---

## Evidence Limitations

Exported evidence represents observable runtime behavior.

It should not be interpreted as a complete representation of internal runtime state.

Evidence intentionally excludes protected implementation details.

---

## Engineering Conclusions

Engineering conclusions are limited to:

- documented observations;
- exported evidence;
- independent verification;
- observable pilot behavior.

Conclusions should not be interpreted as statements about undisclosed runtime implementation.

---

## Operational Limitations

The public pilot assumes that:

- participant infrastructure is properly managed;
- deployment follows documented guidance;
- exported evidence is preserved;
- validation procedures are executed correctly.

The pilot does not replace normal operational governance.

---

## Security Limitations

The public pilot does not expose:

- confidential security controls;
- internal security architecture;
- protected engineering methods;
- private operational procedures.

Only approved public interfaces are documented.

---

## Non-Goals

The public pilot is not intended to:

- disclose proprietary implementation;
- provide production deployment guidance for every environment;
- replace organization-specific engineering reviews;
- replace internal security assessments;
- expose protected runtime design.

---

## Limitations Invariants

The following limitations always apply.

- protected implementation remains confidential;
- observable behavior remains the basis for evaluation;
- exported evidence remains the primary validation artifact;
- public documentation does not imply implementation disclosure;
- engineering conclusions remain bounded by available evidence.

---

## Summary

The public VRP pilot intentionally separates evaluation from implementation.

Participants receive sufficient information to deploy, validate, and review the pilot while the protected runtime implementation, proprietary engineering methods, and confidential operational details remain outside the public boundary.