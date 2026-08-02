# VRP Pilot Engagement Framework

## Document Status

This document provides a public, non-binding description of the VRP Pilot engagement model.

It is not:

- a commercial offer;
- a quotation;
- a service agreement;
- a software licence;
- a warranty;
- a promise of production deployment;
- a commitment to accept any applicant;
- a replacement for a signed Master Services Agreement or Statement of Work.

Any Pilot engagement begins only after the required commercial, technical, security, legal, and identity reviews have been completed and the applicable agreements have been signed.

---

## 1. Purpose

The VRP Pilot is a controlled engineering engagement for evaluating continuity-first protocol behaviour in a defined participant environment.

Its purpose is to determine whether VRP can provide measurable value under an agreed set of network, runtime, failure, recovery, and operational conditions.

The Pilot is not a transfer of the VRP protocol, protected runtime, source code, internal architecture, cryptographic implementation, decision logic, or intellectual property.

The participant receives controlled access to an evaluation capability and its agreed outputs.

---

## 2. Nature of the Engagement

A VRP Pilot is a limited, milestone-based B2B engineering programme.

It may include:

- technical discovery;
- environment qualification;
- integration planning;
- deployment of an approved evaluation boundary;
- controlled runtime validation;
- continuity and recovery scenarios;
- evidence collection;
- engineering analysis;
- final reporting;
- limited post-evaluation support.

The exact scope, duration, environment, responsibilities, commercial terms, and acceptance criteria are defined in a signed Statement of Work.

Participation is subject to approval.

Submission of an inquiry or application does not guarantee admission.

---

## 3. What the Participant Receives

Subject to the signed agreements, an approved participant may receive:

### 3.1 Technical Discovery

- review of the proposed evaluation environment;
- identification of relevant continuity risks;
- definition of target workloads and integration boundaries;
- evaluation of operational constraints;
- definition of measurable Pilot objectives.

### 3.2 Pilot Architecture

- a participant-specific integration plan;
- an approved deployment boundary;
- a defined trust and responsibility model;
- a scenario and validation matrix;
- agreed acceptance criteria;
- an agreed evidence plan.

### 3.3 Controlled Evaluation Capability

- access to the approved VRP Pilot interface;
- deployment of the authorised evaluation components;
- configuration for the agreed environment;
- controlled execution of the agreed scenarios;
- operational guidance for the Pilot period.

The form of access is determined by the applicable Statement of Work.

Access may be remote, isolated, hosted, supervised, time-limited, or otherwise restricted.

### 3.4 Validation Programme

The Pilot may evaluate selected behaviours such as:

- continuity across permitted path changes;
- recovery after defined communication disruption;
- replay rejection;
- stale-state rejection;
- deterministic admission decisions;
- authority transition handling;
- bounded failure behaviour;
- evidence consistency;
- operational recovery readiness.

The final scenario set is participant-specific.

No public document defines the protected internal mechanisms used to produce these behaviours.

### 3.5 Evidence and Reporting

Depending on scope, the participant may receive:

- execution records;
- scenario results;
- validation summaries;
- evidence manifests;
- integrity-verification outputs;
- observed limitation reports;
- remediation recommendations;
- a final Pilot report;
- an executive engineering summary;
- a go, conditional-go, or no-go recommendation.

Evidence is limited to approved outputs.

Protected implementation details are excluded.

### 3.6 Engineering Support

The engagement may include:

- scheduled technical sessions;
- integration support;
- incident review during approved tests;
- clarification of Pilot outputs;
- final findings review;
- limited post-Pilot consultation.

Support availability and response targets are defined in the Statement of Work.

---

## 4. What the Participant Does Not Receive

Unless expressly agreed in a separate written instrument, the Pilot does not provide:

- ownership of VRP;
- ownership of any VRP intellectual property;
- protected runtime source code;
- unrestricted binaries or build materials;
- internal algorithms;
- proprietary protocol logic;
- internal decision models;
- cryptographic key material;
- production signing authority;
- unrestricted administrative access;
- unrestricted reverse-engineering rights;
- rights to reproduce the protected runtime;
- rights to create derivative implementations;
- rights to redistribute Pilot components;
- permanent production rights;
- exclusivity;
- territory rights;
- source-code escrow;
- guaranteed production certification;
- guaranteed commercial outcomes.

A Pilot engagement is an evaluation relationship, not an acquisition of the protocol.

---

## 5. Pilot Phases

A typical engagement may contain the following phases.

### Phase 0 — Admission and Verification

Purpose:

- verify the participant’s identity;
- confirm organisational authority;
- assess legitimacy of the proposed use case;
- identify legal, security, export, and operational constraints;
- decide whether the engagement may proceed.

Possible outcome:

- approved;
- conditionally approved;
- rejected;
- deferred.

No technical access is granted during this phase.

### Phase 1 — Discovery and Scope Definition

Purpose:

- define the evaluation target;
- establish responsibilities;
- identify dependencies;
- define success and failure criteria;
- produce the final Statement of Work.

Deliverables may include:

- scope definition;
- environment description;
- responsibility matrix;
- risk register;
- scenario matrix;
- acceptance criteria.

### Phase 2 — Environment Qualification

Purpose:

- confirm that the participant environment is suitable;
- verify required connectivity and operational access;
- establish observability and evidence boundaries;
- identify blockers before deployment.

VRP may suspend progression if the environment does not satisfy the agreed prerequisites.

### Phase 3 — Integration and Deployment

Purpose:

- establish the approved Pilot boundary;
- configure the agreed integration;
- validate baseline operation;
- confirm that evidence can be collected safely.

Deployment is limited to the approved environment and approved use case.

### Phase 4 — Controlled Validation

Purpose:

- execute the agreed validation scenarios;
- observe continuity and recovery behaviour;
- record outcomes;
- document deviations and limitations.

Only authorised scenarios may be executed.

Unapproved testing, reverse engineering, extraction, or adversarial access may result in immediate suspension.

### Phase 5 — Analysis and Final Report

Purpose:

- analyse collected evidence;
- compare results with acceptance criteria;
- identify verified capabilities and limitations;
- produce the final Pilot decision package.

The result may be:

- `GO`;
- `CONDITIONAL_GO`;
- `NO_GO`;
- `INCONCLUSIVE`.

A `NO_GO` or `INCONCLUSIVE` result does not automatically indicate breach or failure to perform.

The contractual meaning of each result is defined in the Statement of Work.

### Phase 6 — Closure or Next Engagement

Possible outcomes:

- Pilot closure;
- remediation phase;
- extended evaluation;
- production-readiness assessment;
- commercial deployment negotiation;
- no further engagement.

Production deployment is a separate decision and normally requires a separate agreement.

---

## 6. Success Criteria

Success is measured only against criteria agreed before validation begins.

Possible criteria include:

- completion of the approved deployment;
- execution of the agreed scenario set;
- production of verifiable evidence;
- preservation of defined runtime invariants;
- recovery within agreed bounds;
- rejection of defined invalid inputs or state transitions;
- completion of the final report;
- delivery of agreed recommendations.

Success does not mean that:

- every network failure can be hidden;
- every application can be integrated without modification;
- every environment is suitable for VRP;
- all outages can be prevented;
- all operational risks are eliminated;
- the participant will achieve a specific financial outcome;
- the Pilot automatically qualifies for production deployment.

---

## 7. Participant Responsibilities

The participant is expected to:

- provide accurate organisational and technical information;
- identify authorised decision-makers;
- provide lawful access to the approved environment;
- maintain required infrastructure and dependencies;
- nominate qualified technical contacts;
- follow the agreed security procedures;
- avoid unapproved testing or extraction attempts;
- protect all confidential Pilot materials;
- report incidents and material environment changes promptly;
- review deliverables within agreed review periods;
- provide acceptance or documented rejection against agreed criteria;
- comply with applicable laws and contractual restrictions.

Delays caused by missing access, unavailable personnel, inaccurate information, environmental changes, or participant-controlled dependencies may affect the schedule and commercial treatment of the engagement.

---

## 8. VRP Responsibilities

Subject to the signed agreements, VRP is expected to:

- perform the agreed engineering work with professional care;
- maintain the approved Pilot boundary;
- limit activities to the authorised scope;
- protect participant confidential information;
- document material findings;
- report identified blockers;
- produce the agreed deliverables;
- preserve the confidentiality of protected VRP implementation details;
- notify the participant of material scope or schedule risks;
- follow the agreed evidence-handling process.

No obligation exists outside the signed scope.

---

## 9. Intellectual Property Boundary

All pre-existing VRP technology remains the exclusive property of its respective owner.

This includes, without limitation:

- protocol concepts;
- runtime architecture;
- implementation techniques;
- source code;
- internal models;
- decision logic;
- validation mechanisms;
- security mechanisms;
- evidence-generation mechanisms;
- build processes;
- documentation designated as confidential;
- improvements of general applicability.

The participant retains ownership of its pre-existing systems, data, configurations, and intellectual property.

Pilot-specific ownership, feedback rights, jointly developed materials, and participant deliverables must be defined in the signed agreements.

No licence is granted by implication, estoppel, repository access, demonstration, disclosure, or participation in the Pilot.

---

## 10. Access and Security Boundary

VRP follows a least-disclosure model.

The participant receives only the information and access required for the approved Pilot.

Controls may include:

- identity verification;
- named-user access;
- environment restrictions;
- time-limited credentials;
- controlled interfaces;
- execution boundaries;
- audit logging;
- evidence filtering;
- revocable access;
- confidentiality controls;
- suspension on suspected misuse.

The absence of implementation disclosure does not prevent evaluation.

The Pilot is designed to validate externally observable behaviour and agreed evidence without exposing the protected runtime internals.

---

## 11. Commercial Structure

Commercial terms are defined in a separate proposal and signed agreements.

A Pilot may use:

- milestone-based pricing;
- scheduled payments;
- advance payments;
- acceptance-linked payments;
- reserved-capacity fees;
- third-party cost reimbursement;
- change-order pricing;
- extended-support fees.

A quoted engagement value does not represent the sale price of the VRP protocol or its intellectual property.

It represents the commercial value of the defined Pilot programme, reserved engineering capacity, controlled access, integration work, validation, evidence production, reporting, and associated obligations.

---

## 12. Refund and Termination Principles

Refund rights are governed exclusively by the signed agreement.

Unless the applicable agreement states otherwise, the commercial model should distinguish between:

- earned fees;
- accepted milestone fees;
- reserved-capacity fees;
- committed third-party costs;
- reimbursable expenses;
- unearned prepaid balances.

General principles may include:

1. Fees for completed and accepted milestones are non-refundable.
2. Fees associated with work already performed are non-refundable.
3. Approved third-party costs and committed expenses are non-refundable.
4. Reserved-capacity fees may be non-refundable after the reservation period begins.
5. Unearned prepaid balances may be refundable when the engagement ends before the corresponding work is performed.
6. Participant termination for convenience may result in payment for completed work, work in progress, committed costs, and agreed termination charges.
7. A material breach normally requires written notice and an agreed opportunity to cure.
8. Failure to achieve an unspecified business expectation is not a basis for a refund.
9. A technically valid `NO_GO` result is not automatically a failure of the Pilot.
10. Full refunds, if permitted, apply only under conditions expressly defined in the signed agreement.

No public statement, repository document, presentation, message, or conversation modifies the signed refund terms.

---

## 13. Change Control

Any material change to the following requires written approval:

- scope;
- environment;
- participant entity;
- use case;
- target workload;
- deployment model;
- schedule;
- scenario set;
- acceptance criteria;
- security boundary;
- deliverables;
- support level;
- commercial terms.

VRP may issue a change request when a proposed change affects cost, risk, schedule, confidentiality, or feasibility.

Work outside the approved scope is not automatically included.

---

## 14. Suspension Rights

Pilot access may be suspended when necessary to protect:

- participant systems;
- VRP systems;
- confidential information;
- intellectual property;
- evidence integrity;
- legal compliance;
- operational safety;
- third-party infrastructure.

Possible suspension conditions include:

- unauthorised access attempts;
- reverse engineering;
- credential sharing;
- unapproved environment changes;
- violation of the agreed use case;
- failure to maintain required security controls;
- material payment default;
- legal or regulatory concerns;
- risk to the protected runtime;
- evidence tampering;
- misuse of Pilot outputs.

Suspension is not automatically equivalent to termination.

The applicable agreement defines notice, remediation, restoration, and termination procedures.

---

## 15. Confidentiality

Pilot participants may receive confidential information that is not available through public VRP repositories.

Confidential information may include:

- participant-specific architecture;
- deployment details;
- non-public documentation;
- evaluation outputs;
- commercial terms;
- security findings;
- limitations;
- operational procedures;
- unpublished capabilities;
- protected interface information.

Public disclosure, publication of screenshots, benchmark claims, marketing statements, technical reports, or third-party demonstrations may require prior written approval.

---

## 16. Public Statements

Neither party may represent that the Pilot constitutes:

- certification;
- endorsement;
- production approval;
- regulatory approval;
- proof of universal applicability;
- transfer of ownership;
- an unrestricted partnership;
- guaranteed future availability.

Any public use of names, trademarks, results, quotations, screenshots, or Pilot evidence must follow the signed agreement.

---

## 17. No Universal Guarantee

VRP is an experimental protocol and runtime architecture under active engineering development.

A Pilot evaluates defined behaviour under defined conditions.

It does not guarantee:

- uninterrupted operation under every condition;
- compatibility with every system;
- prevention of every incident;
- elimination of all security risks;
- achievement of a specific commercial result;
- immediate production readiness;
- availability of every future feature;
- acceptance into any subsequent programme.

Engineering conclusions must remain bounded by the tested environment, tested scenarios, evidence quality, and agreed assumptions.

---

## 18. Evaluation Integrity

VRP Pilot findings are expected to remain evidence-based.

A conclusion should identify:

- what was tested;
- under which conditions;
- what evidence was produced;
- which criteria were satisfied;
- which criteria were not satisfied;
- which limitations remain;
- whether the result is reproducible;
- whether further validation is required.

Claims extending beyond the evidence are not considered valid Pilot conclusions.

---

## 19. Admission Process

A prospective participant may be required to provide:

- legal entity information;
- authorised contact information;
- company website and corporate references;
- proof of authority;
- intended use case;
- target environment;
- technical objectives;
- security requirements;
- regulatory constraints;
- expected timeline;
- budget confirmation;
- source-of-funds information where appropriate;
- sanctions and compliance information.

VRP may request additional information before making an admission decision.

VRP may reject or defer an application without disclosing protected internal assessment criteria.

---

## 20. Required Contract Package

An approved Pilot should normally be governed by a contract package containing:

1. **VRP Pilot Commercial Proposal**
   - commercial value;
   - payment schedule;
   - proposal validity;
   - high-level scope;
   - assumptions.

2. **VRP Pilot Master Services Agreement**
   - legal relationship;
   - confidentiality;
   - intellectual property;
   - liability;
   - warranties;
   - termination;
   - dispute resolution;
   - governing law.

3. **VRP Pilot Statement of Work**
   - participant-specific scope;
   - milestones;
   - deliverables;
   - acceptance criteria;
   - schedule;
   - responsibilities;
   - payment triggers;
   - refund treatment.

4. **Additional Security or Data Documents**
   - data-processing terms;
   - security schedule;
   - access policy;
   - evidence-handling requirements;
   - incident-notification procedure.

If there is a conflict between this public framework and a signed agreement, the signed agreement controls.

---

## 21. Recommended Decision Principle

A VRP Pilot should proceed only when all parties understand that they are entering a controlled engineering evaluation.

The participant is not purchasing promises.

The participant is funding a defined programme of integration, validation, evidence production, and engineering analysis.

The purpose of the engagement is to replace assumptions with verifiable results.

---

## 22. Contact and Next Step

Prospective participants should first submit a structured Pilot inquiry through the current official VRP contact channel.

The inquiry should clearly explain:

- who the participant is;
- why VRP is relevant;
- what environment is proposed;
- what continuity problem must be evaluated;
- what evidence is required;
- who has authority to approve the engagement;
- whether the required commercial capacity is available.

Only approved applicants receive the next-stage commercial and technical materials.

---

## 23. Legal Review

All binding Pilot documents must be reviewed by qualified legal counsel before signature.

Particular attention should be given to:

- governing law;
- jurisdiction;
- international contracting;
- taxes;
- export and sanctions compliance;
- intellectual property;
- confidentiality;
- data protection;
- security obligations;
- limitation of liability;
- milestone acceptance;
- refund conditions;
- termination rights.

---

## Final Statement

VRP is evaluated through controlled evidence, not unrestricted disclosure.

The Pilot provides a structured path for qualified organisations to test continuity-first behaviour while preserving the protected architecture and intellectual property boundary.

**Continuity requires verification.**