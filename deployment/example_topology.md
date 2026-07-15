# Example VRP Pilot Topology

## Purpose

This document illustrates an example logical topology for a VRP pilot deployment.

The topology is provided for reference only.

Actual pilot environments may differ depending on infrastructure, networking, security requirements, and deployment objectives.

---

## Objectives

The example topology demonstrates:

- participant-controlled infrastructure;
- protected runtime isolation;
- public integration boundaries;
- evidence generation;
- independent validation.

The objective is to show how a pilot may be organized without exposing protected runtime implementation.

---

## Logical Components

The example environment contains the following logical components:

- Endpoint A
- Endpoint B
- Protected VRP Runtime Boundary
- Primary Transport
- Alternate Transport
- Validation Host
- Evidence Repository
- Operator Workstation

---

## Example Topology

```text
                    Participant Environment

      +----------------+         +----------------+
      |   Endpoint A   |         |   Endpoint B   |
      +-------+--------+         +--------+-------+
              |                           |
              +-----------+   +-----------+
                          |   |
               Public Integration Boundary
                          |
          +---------------+---------------+
          |                               |
          |   Protected VRP Runtime        |
          |                               |
          +-----------+-------------------+
                      |
        +-------------+-------------+
        |                           |
+-------+--------+         +--------+-------+
| Primary Path   |         | Alternate Path |
+-------+--------+         +--------+-------+
        |                           |
        +-------------+-------------+
                      |
              Validation Boundary
                      |
        +-------------+-------------+
        |                           |
        |     Validation Host       |
        |                           |
        +-------------+-------------+
                      |
              Evidence Repository
```

---

## Component Descriptions

### Endpoint A

Represents one side of the evaluated communication.

Examples include:

- client;
- gateway;
- application host;
- service endpoint.

---

### Endpoint B

Represents the remote communication endpoint.

Examples include:

- server;
- peer node;
- remote service;
- secondary site.

---

### Protected Runtime Boundary

The protected runtime executes continuity and recovery behavior.

Its implementation remains private throughout the pilot.

Only approved integration interfaces are exposed.

---

### Primary Transport

Represents the preferred communication path under normal operating conditions.

Examples include:

- Ethernet;
- Wi-Fi;
- VPN;
- WAN;
- Cloud network.

---

### Alternate Transport

Represents an independent transport used during migration or recovery testing.

Examples include:

- secondary ISP;
- mobile network;
- backup WAN;
- alternate routing path.

---

### Validation Host

Consumes exported evidence.

The validation host performs independent verification without accessing protected runtime internals.

---

### Evidence Repository

Stores exported pilot artifacts.

Typical contents include:

- evidence bundles;
- deployment summaries;
- validation reports;
- verification results;
- final verdicts.

---

## Typical Pilot Flow

1. Prepare participant infrastructure.
2. Activate the pilot environment.
3. Validate baseline communication.
4. Introduce controlled failures.
5. Observe runtime behavior.
6. Export evidence.
7. Perform independent validation.
8. Produce the final report.

---

## Trust Boundaries

The topology separates responsibilities into three trust domains.

### Participant Boundary

Infrastructure fully controlled by the participant.

### Protected Runtime Boundary

Private runtime implementation controlled by the VRP pilot.

### Validation Boundary

Independent systems responsible for evidence verification.

---

## Design Principles

The example topology follows several architectural principles.

- participant infrastructure remains independent;
- runtime implementation remains protected;
- evidence is externally verifiable;
- validation does not require source code;
- observable behavior is separated from implementation.

---

## Topology Invariants

The topology is designed to preserve the following invariants.

- session continuity is independent of transport selection;
- transport failure does not automatically terminate a session;
- evidence remains attributable;
- exported artifacts remain independently verifiable;
- protected runtime implementation remains confidential;
- validation depends on exported evidence rather than internal runtime access.