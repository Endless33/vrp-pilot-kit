# Example VRP Pilot Network Layout

## Purpose

This document provides an example network layout for a VRP pilot deployment.

The layout illustrates one possible deployment architecture.

It is intended for planning and discussion purposes only.

Organizations should adapt the layout to their own infrastructure, security policies, and operational requirements.

---

## Objectives

The example layout demonstrates:

- network segmentation;
- public integration boundaries;
- runtime isolation;
- evidence collection;
- independent validation.

---

## Example Network Layout

```text
                         Management Network
                                |
                     +----------+----------+
                     |                     |
             Operator Workstation     Administration
                     |
        ------------------------------------------------

                  Endpoint Network A

               +----------------------+
               |      Endpoint A      |
               +----------+-----------+
                          |
                   Primary Transport
                          |
        =========================================

              Protected VRP Runtime Boundary

        =========================================
                          |
                  Alternate Transport
                          |
               +----------+-----------+
               |      Endpoint B      |
               +----------------------+

                  Endpoint Network B

---------------------------------------------------------

                 Evidence Export Interface
                          |
                  Validation Network
                          |
               +----------+-----------+
               |    Validation Host   |
               +----------+-----------+
                          |
                Evidence Repository
```

---

## Logical Network Segments

| Segment | Purpose |
|----------|---------|
| Management Network | Administrative access |
| Endpoint Network A | Source endpoint |
| Endpoint Network B | Destination endpoint |
| Primary Transport | Normal communication path |
| Alternate Transport | Recovery and migration path |
| Validation Network | Independent verification |
| Evidence Network | Artifact storage |

---

## Traffic Categories

The deployment normally separates traffic into independent categories.

### Management Traffic

Used for administration and deployment operations.

### Application Traffic

Represents the communication being evaluated.

### Runtime Control Traffic

Used by approved runtime interfaces.

### Evidence Traffic

Transfers exported artifacts for verification.

---

## Example Failure Scenarios

Typical pilot scenarios include:

- transport interruption;
- interface shutdown;
- route withdrawal;
- packet loss;
- latency injection;
- network partition;
- transport migration;
- recovery after outage.

---

## Validation Flow

1. Deploy infrastructure.
2. Verify connectivity.
3. Execute baseline traffic.
4. Inject failures.
5. Observe runtime behavior.
6. Export evidence.
7. Validate exported artifacts.
8. Record the final verdict.

---

## Network Security Principles

The example layout assumes:

- least-privilege access;
- network segmentation;
- explicit trust boundaries;
- restricted runtime interfaces;
- protected evidence storage;
- independent validation.

---

## Recommended Firewall Policy

Default policy:

**Deny by default**

Allow only explicitly approved communication paths required for the pilot.

Administrative access should remain separate from evaluated traffic whenever possible.

---

## Time Synchronization

Pilot systems should use a common time source.

Accurate timestamps improve:

- evidence correlation;
- event ordering;
- report generation;
- validation accuracy.

---

## Evidence Storage

Evidence repositories should provide:

- integrity protection;
- controlled access;
- immutable retention where practical;
- reproducible artifact organization;
- long-term preservation of exported reports.

---

## Layout Invariants

The deployment should preserve the following properties.

- runtime implementation remains isolated;
- validation relies only on exported evidence;
- participant infrastructure remains under participant control;
- transport paths remain independently controllable;
- evidence remains attributable and verifiable;
- observable behavior remains separated from protected implementation.