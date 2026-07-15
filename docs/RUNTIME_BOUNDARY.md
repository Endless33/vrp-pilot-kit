# VRP Runtime Boundary

## Purpose

This document defines the public runtime boundary of a VRP pilot deployment.

The runtime boundary identifies the observable responsibilities of the protected VRP runtime while preserving the confidentiality of its implementation.

The document describes what the runtime is expected to do, not how it performs those functions internally.

---

## Scope

The runtime boundary defines:

- observable runtime behavior;
- approved runtime interfaces;
- exported evidence;
- public operational expectations.

It does not define:

- source code;
- internal algorithms;
- authority calculations;
- private runtime state;
- proprietary recovery mechanisms;
- cryptographic implementation details.

---

## Runtime Responsibilities

Within the public pilot boundary, the protected runtime is responsible for:

- executing approved runtime operations;
- enforcing documented behavioral contracts;
- generating exported evidence;
- preserving operational integrity;
- supporting independent validation through exported artifacts.

These responsibilities are observable through the public pilot interface.

---

## Observable Runtime Behavior

Participants may observe:

- runtime startup;
- runtime shutdown;
- accepted operational inputs;
- exported evidence;
- validation outcomes;
- documented runtime events.

Observable behavior does not imply visibility into internal implementation.

---

## Runtime Interfaces

The runtime boundary may expose approved interfaces for:

- initialization;
- configuration;
- operational execution;
- evidence export;
- validation support.

Only documented interfaces are considered part of the public contract.

---

## Runtime Isolation

The protected runtime remains isolated from participant-controlled implementation.

Participants do not receive:

- runtime source code;
- protected libraries;
- private debugging interfaces;
- internal state representation;
- proprietary engineering tools.

---

## Evidence Generation

The runtime may generate exported artifacts including:

- deployment metadata;
- validation evidence;
- integrity information;
- operational summaries;
- engineering reports.

Only exported artifacts cross the runtime boundary.

Internal runtime state remains protected.

---

## Operational Expectations

The runtime is expected to:

- behave consistently with documented contracts;
- reject unsupported operations;
- preserve evidence integrity;
- produce reproducible exported artifacts;
- operate within approved deployment boundaries.

---

## Runtime Failure

Observable runtime failures should produce explicit outcomes whenever practical.

Examples include:

- rejected requests;
- failed validation;
- exported error information;
- documented operational status.

The runtime should avoid silent transitions into undefined operational states.

---

## Security Boundary

The runtime boundary intentionally excludes:

- proprietary algorithms;
- internal authority logic;
- recovery implementation;
- confidential runtime state;
- cryptographic internals;
- engineering implementation details.

---

## Public Runtime Contract

The participant evaluates the runtime through:

- documented interfaces;
- observable behavior;
- exported evidence;
- validation results.

No assumption should be made about the internal implementation based solely on observable behavior.

---

## Boundary Invariants

The runtime boundary preserves the following properties.

- implementation remains protected;
- observable behavior remains documented;
- exported evidence is intentionally separated from runtime state;
- validation depends on exported artifacts;
- runtime interfaces remain explicit;
- unsupported access paths are outside the public contract.

---

## Summary

The VRP runtime boundary separates observable runtime behavior from protected implementation.

Participants interact only through documented interfaces, receive exported evidence, and evaluate the runtime through independent validation rather than internal inspection.