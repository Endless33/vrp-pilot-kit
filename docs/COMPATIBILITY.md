# VRP Compatibility

## Purpose

This document describes the public compatibility model for a VRP pilot deployment.

The compatibility model defines the expectations for interoperability between participant-controlled environments, public integration interfaces, validation tooling, and exported evidence.

It does not describe compatibility of the protected runtime implementation.

---

## Scope

This document covers:

- deployment compatibility;
- interface compatibility;
- evidence compatibility;
- validation compatibility;
- documentation compatibility.

It does not define:

- internal runtime compatibility;
- proprietary implementation details;
- protected engineering processes.

---

## Compatibility Principles

The compatibility model is based on the following principles.

### Stable Public Interfaces

Documented public interfaces should remain stable throughout a pilot.

---

### Observable Consistency

Observable behavior should remain consistent across supported environments.

---

### Independent Validation

Validation should remain possible using exported evidence regardless of participant infrastructure.

---

### Forward Evolution

Public documentation and interfaces may evolve while preserving compatibility whenever practical.

---

## Deployment Compatibility

The pilot is designed to remain deployment-neutral.

Participant environments may include:

- physical infrastructure;
- virtual machines;
- containers;
- private clouds;
- public clouds;
- hybrid environments.

---

## Operating System Compatibility

The public pilot documentation does not require a specific operating system.

Participants are responsible for ensuring that their chosen environment satisfies documented pilot requirements.

---

## Network Compatibility

The public pilot assumes that different network technologies may be used.

Examples include:

- Ethernet;
- Wi-Fi;
- VPN;
- MPLS;
- cloud networking;
- mobile connectivity.

---

## Evidence Compatibility

Exported evidence should remain compatible with documented validation procedures.

Evidence formats should remain stable within a documented public version.

---

## Validation Compatibility

Validation tools should operate using documented exported artifacts.

Validation should not depend upon:

- protected runtime internals;
- proprietary interfaces;
- confidential engineering components.

---

## Documentation Compatibility

Public documentation should remain internally consistent.

When revisions introduce changes affecting compatibility, those changes should be documented.

---

## Backward Compatibility

Whenever practical, new public documentation and interfaces should preserve compatibility with previously documented public behavior.

Breaking changes should be explicitly identified.

---

## Out of Scope

This document does not define:

- implementation compatibility;
- binary compatibility;
- source compatibility;
- proprietary runtime interfaces;
- confidential engineering workflows.

---

## Compatibility Invariants

The compatibility model preserves the following properties.

- documented interfaces remain authoritative;
- exported evidence remains suitable for independent validation;
- participant environments remain implementation-independent;
- protected runtime implementation remains confidential;
- compatibility is evaluated through public contracts rather than private implementation.

---

## Summary

The VRP compatibility model provides a stable public foundation for deployment, integration, evidence exchange, and independent validation while preserving the confidentiality of the protected runtime implementation.