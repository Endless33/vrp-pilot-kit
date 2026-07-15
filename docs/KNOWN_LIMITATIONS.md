# VRP Known Limitations

## Purpose

This document summarizes the known limitations of the public VRP pilot.

Its purpose is to communicate the practical boundaries of the public materials, validation environment, and reference deployment guidance.

These limitations should not be interpreted as limitations of the protected VRP runtime implementation.

---

## Scope

This document applies to:

- public documentation;
- deployment examples;
- validation examples;
- evidence examples;
- report templates;
- public integration contracts.

It does not describe limitations of:

- protected runtime implementation;
- proprietary engineering processes;
- confidential deployment procedures.

---

## Public Documentation

The public documentation is intended to support engineering evaluation.

It is not intended to be a complete production deployment manual.

Organizations should adapt the documentation to their own operational environments.

---

## Example Configurations

Configuration examples are provided for illustration.

They are not intended to represent every supported deployment architecture.

Participants remain responsible for validating their own infrastructure.

---

## Example Topologies

Example topologies demonstrate logical deployment concepts.

Actual production environments may differ significantly.

---

## Validation Examples

Validation scenarios are representative examples.

Organizations may execute additional scenarios appropriate to their own operational requirements.

---

## Report Templates

Report templates are reference documents.

Participants may extend them with organization-specific information provided that engineering conclusions remain attributable and evidence-based.

---

## Evidence Examples

Sample evidence structures illustrate expected documentation.

Actual exported evidence may differ depending on deployment conditions and documented pilot procedures.

---

## Infrastructure Independence

The public pilot intentionally avoids dependence on:

- specific cloud providers;
- specific operating systems;
- specific hardware platforms;
- specific networking vendors.

Participants are responsible for infrastructure compatibility.

---

## Public Interface Scope

Only documented interfaces are considered part of the supported public contract.

Undocumented behavior should not be relied upon.

---

## Security Boundary

The following remain intentionally unavailable through the public pilot:

- protected runtime source code;
- proprietary algorithms;
- internal authority logic;
- confidential runtime state;
- protected engineering workflows.

---

## Limitation Invariants

The following limitations remain constant.

- public documentation focuses on observable behavior;
- protected implementation remains confidential;
- engineering conclusions remain evidence-based;
- deployment guidance remains implementation-independent;
- public examples are illustrative rather than exhaustive.

---

## Summary

The known limitations described in this document define the intended scope of the public VRP pilot materials.

They ensure that participants clearly distinguish between publicly documented behavior and the protected implementation that remains outside the scope of the pilot.