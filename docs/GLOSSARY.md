# VRP Glossary

## Purpose

This glossary defines public terminology used throughout the VRP pilot documentation.

The definitions are intended to provide a consistent interpretation of architectural, operational, validation, and evidence-related concepts.

The glossary describes public concepts only.

It does not define protected runtime implementation.

---

## Acceptance

The formal engineering decision indicating whether a pilot satisfied its documented objectives.

---

## Artifact

A documented output generated during a pilot.

Examples include:

- reports;
- evidence bundles;
- deployment summaries;
- validation results.

---

## Authority

The observable decision state recognized by the protected runtime.

The public documentation defines only the external concept of authority.

Internal authority implementation remains protected.

---

## Deployment

The preparation and execution of a VRP pilot within a participant-controlled environment.

---

## Deployment Boundary

The documented interface separating participant-controlled infrastructure from the protected runtime.

---

## Engineering Review

A structured technical assessment based on exported evidence and documented observations.

---

## Evidence

Observable artifacts exported from the protected runtime for independent validation.

Evidence is intentionally separated from protected runtime implementation.

---

## Evidence Bundle

A collection of exported artifacts representing the observable results of a pilot execution.

---

## Evidence Repository

A storage location used to retain exported pilot artifacts.

---

## Failure Injection

A controlled action intended to evaluate runtime behavior under abnormal operating conditions.

Examples include:

- transport interruption;
- latency;
- packet loss;
- route changes;
- network partition.

---

## Final Report

The engineering document summarizing deployment activities, observations, validation results, and the recorded verdict.

---

## Integration Boundary

The approved public interface through which participant-controlled systems interact with the protected runtime.

---

## Independent Validation

Evaluation performed using exported evidence without requiring access to protected runtime implementation.

---

## Operational Assumptions

Documented assumptions used to interpret pilot behavior and evaluation results.

---

## Participant

The organization or engineering team performing the pilot deployment.

---

## Pilot

A controlled technical evaluation of VRP within a participant-controlled environment.

---

## Protected Runtime

The confidential implementation responsible for VRP runtime behavior.

Its implementation is intentionally excluded from public pilot materials.

---

## Public Documentation

Documentation released for pilot participants describing observable behavior and supported interfaces.

---

## Public Interface

A documented interface intended for participant interaction.

Undocumented interfaces are outside the public contract.

---

## Recovery

Observable runtime behavior associated with continued operation following a controlled failure.

Implementation details remain protected.

---

## Report

A documented summary of engineering observations and validation results.

---

## Runtime Boundary

The documented separation between observable runtime behavior and protected implementation.

---

## Security Boundary

The documented separation between publicly accessible pilot components and protected implementation.

---

## Session

A logical communication context evaluated during the pilot.

The glossary intentionally avoids defining the protected runtime representation of a session.

---

## Topology

The logical arrangement of participant infrastructure, runtime boundaries, validation systems, and evidence flow.

---

## Trust Boundary

A documented separation between components with different responsibilities or authority.

---

## Validation

The process of evaluating exported evidence and documented observations to determine whether pilot objectives were achieved.

---

## Validation Report

A report documenting the results of an independent technical evaluation.

---

## Validation Tool

A tool that evaluates exported artifacts using documented public procedures.

Validation tools do not require protected runtime implementation.

---

## Verdict

The final engineering outcome of a completed validation.

Typical outcomes include:

- PASS
- CONDITIONAL PASS
- FAIL

---

## Summary

The terminology defined in this glossary provides a common vocabulary for interpreting the public VRP pilot documentation.

Where a term could refer to protected implementation details, only its externally observable meaning is defined here.