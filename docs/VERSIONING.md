# VRP Public Versioning Model

## Purpose

This document defines the public versioning model used for VRP pilot documentation, integration contracts, validation materials, and exported evidence.

The versioning model provides a predictable method for managing public changes while preserving compatibility and reproducibility.

It does not describe internal versioning of the protected VRP runtime.

---

## Scope

This document applies to:

- public documentation;
- integration contracts;
- deployment guidance;
- validation procedures;
- evidence formats;
- report templates;
- public examples.

It does not apply to:

- protected runtime implementation;
- proprietary engineering workflows;
- confidential development branches.

---

## Versioning Principles

Public versioning follows several principles.

### Predictability

Version identifiers should clearly communicate the evolution of public materials.

---

### Stability

Published versions should remain stable after release.

Corrections should result in a documented revision.

---

### Reproducibility

Validation should reference the public version that was used during evaluation.

---

### Traceability

Every published version should be identifiable within reports and exported evidence.

---

## Version Components

Public versions may be expressed as:

`MAJOR.MINOR.PATCH`

Example:

`1.0.0`

---

### Major Version

Incremented when significant public changes affect compatibility or published contracts.

---

### Minor Version

Incremented when new public documentation or additional capabilities are introduced without intentionally breaking existing public contracts.

---

### Patch Version

Incremented when documentation corrections, clarifications, formatting improvements, or other non-breaking updates are published.

---

## Version Scope

Version identifiers may be associated with:

- documentation;
- deployment guidance;
- validation procedures;
- evidence specifications;
- report templates;
- example artifacts.

---

## Compatibility Expectations

Whenever practical:

- newer public documentation should remain compatible with earlier documented behavior;
- validation procedures should remain reproducible;
- evidence formats should remain understandable across supported versions.

Breaking public changes should be explicitly documented.

---

## Version Identification

Public reports should record the versions of relevant materials used during a pilot.

Examples include:

- documentation version;
- validation version;
- evidence specification version;
- report template version.

---

## Deprecated Versions

Older public versions may remain available for historical reference.

Deprecated versions should not be modified after publication.

If replacement guidance exists, it should reference the newer version.

---

## Release Documentation

Each public release should clearly identify:

- version number;
- publication date;
- summary of public changes;
- compatibility considerations.

---

## Out of Scope

This document does not define:

- source code versioning;
- protected runtime releases;
- internal branch management;
- proprietary development workflows.

---

## Versioning Invariants

The versioning model preserves the following properties.

- public versions remain identifiable;
- published materials remain traceable;
- validation references documented versions;
- compatibility considerations are documented;
- protected implementation remains outside the public versioning scope.

---

## Summary

The VRP public versioning model provides a structured approach for managing documentation, validation materials, and public integration contracts while supporting reproducibility, traceability, and long-term compatibility.