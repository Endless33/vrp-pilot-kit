# VRP Pilot Statement of Work

## Important Notice

This Statement of Work is a contract template for a participant-specific VRP Pilot.

It must be completed, reviewed, and approved by qualified legal, technical, security, financial, and tax advisers before signature.

No placeholder may remain unresolved in the signed version.

---

# STATEMENT OF WORK

**SOW reference:** VRP-SOW-[YEAR]-[NUMBER]  
**Effective date:** [DATE]  
**Pilot start date:** [DATE]  
**Target completion date:** [DATE]  

This Statement of Work (“SOW”) is entered into under the VRP Pilot Master Services Agreement dated **[MSA DATE]** between:

**[VRP CONTRACTING ENTITY]** (“Provider”);

and

**[PARTICIPANT LEGAL NAME]** (“Participant”).

The Master Services Agreement is incorporated into this SOW by reference.

Capitalised terms not defined in this SOW have the meanings assigned in the Master Services Agreement.

---

## 1. Engagement Summary

Provider will perform a controlled, limited, non-production VRP Pilot for Participant.

The Pilot will evaluate agreed continuity, recovery, state-admission, and evidence behaviour within the Authorised Environment and under the conditions defined in this SOW.

The Pilot is an engineering evaluation.

It is not:

- a sale of VRP;
- a transfer of source code;
- a transfer of intellectual property;
- an unrestricted software licence;
- a production deployment;
- a production service;
- a certification;
- a guarantee of commercial success;
- a guarantee that Participant’s environment is suitable for VRP.

---

## 2. Participant Information

**Legal entity:** [PARTICIPANT LEGAL NAME]  
**Registration number:** [NUMBER]  
**Registered address:** [ADDRESS]  
**Country of incorporation:** [COUNTRY]  
**VAT or tax number:** [NUMBER]  
**Ultimate parent entity:** [ENTITY OR NOT APPLICABLE]  
**Authorised signatory:** [NAME AND TITLE]  
**Executive sponsor:** [NAME AND TITLE]  
**Technical lead:** [NAME AND TITLE]  
**Security lead:** [NAME AND TITLE]  
**Commercial contact:** [NAME AND TITLE]  
**Legal contact:** [NAME AND TITLE]  

---

## 3. Provider Information

**Legal entity:** [VRP CONTRACTING ENTITY]  
**Registration number:** [NUMBER]  
**Registered address:** [ADDRESS]  
**Country of incorporation:** [COUNTRY]  
**VAT or tax number:** [NUMBER]  
**Authorised signatory:** [NAME AND TITLE]  
**Lead architect:** Vitalijus Riabovas  
**Technical contact:** [NAME AND EMAIL]  
**Security contact:** [NAME AND EMAIL]  
**Commercial contact:** [NAME AND EMAIL]  
**Legal contact:** [NAME AND EMAIL]  

---

## 4. Pilot Objective

The primary objective is to determine whether the approved VRP evaluation capability can satisfy the Pilot Acceptance Criteria under the agreed conditions.

### 4.1 Continuity Problem

Participant’s target continuity problem:

> [DESCRIBE THE SPECIFIC OPERATIONAL OR NETWORK CONTINUITY PROBLEM]

### 4.2 Target Workload

Approved workload:

> [DESCRIBE THE APPLICATION, SERVICE, TRAFFIC CLASS, OR CONTROL FLOW]

### 4.3 Intended Decision

The Pilot is intended to support the following decision:

> [DESCRIBE THE COMMERCIAL, TECHNICAL, OR PRODUCTION-READINESS DECISION]

### 4.4 Required Evidence

Participant requires the following categories of evidence:

- [EVIDENCE CATEGORY];
- [EVIDENCE CATEGORY];
- [EVIDENCE CATEGORY];
- [FINAL REPORT REQUIREMENT].

---

## 5. Authorised Environment

The Pilot is limited to the following environment.

### 5.1 Infrastructure

| Component | Approved Description |
|---|---|
| Cloud or facility | [PROVIDER / LOCATION] |
| Account or tenancy | [IDENTIFIER] |
| Regions | [REGIONS] |
| Compute environment | [DESCRIPTION] |
| Operating systems | [DESCRIPTION] |
| Network boundary | [DESCRIPTION] |
| Participant application | [DESCRIPTION] |
| Observability systems | [DESCRIPTION] |
| Evidence storage | [DESCRIPTION] |

### 5.2 Authorised Locations

The Pilot may operate only in:

- [LOCATION OR REGION];
- [LOCATION OR REGION];
- [LOCATION OR REGION].

### 5.3 Authorised Workloads

The Pilot may process only:

- [WORKLOAD];
- [WORKLOAD];
- [WORKLOAD].

### 5.4 Excluded Environments

The Pilot must not be deployed into:

- Participant production systems unless expressly approved;
- safety-critical systems;
- medical systems;
- weapons systems;
- classified environments;
- environments containing prohibited data;
- third-party systems lacking written authorisation;
- jurisdictions not approved by Provider;
- any environment outside this SOW.

### 5.5 Environment Changes

Participant must notify Provider before making a material change to:

- topology;
- identity systems;
- network policy;
- target workloads;
- hosting provider;
- region;
- security controls;
- observability;
- evidence storage;
- access model.

Provider may require requalification or a Change Order.

---

## 6. Authorised Personnel

Only the following personnel may access Pilot Materials or participate directly in controlled Pilot operations:

| Name | Organisation | Role | Access Level | Approval Status |
|---|---|---|---|---|
| [NAME] | [ENTITY] | [ROLE] | [LEVEL] | Pending |
| [NAME] | [ENTITY] | [ROLE] | [LEVEL] | Pending |
| [NAME] | [ENTITY] | [ROLE] | [LEVEL] | Pending |

Participant must notify Provider immediately when an Authorised Person:

- changes role;
- no longer requires access;
- leaves Participant;
- becomes subject to an investigation affecting the Pilot;
- is suspected of credential compromise.

Access may not be transferred or shared.

---

## 7. Pilot Scope

Provider will perform only the activities expressly included below.

### 7.1 Included Activities

- participant and use-case qualification;
- technical discovery;
- Authorised Environment review;
- Pilot-boundary definition;
- responsibility mapping;
- risk and dependency assessment;
- scenario planning;
- Acceptance Criteria definition;
- evidence-plan definition;
- controlled integration;
- baseline verification;
- controlled validation;
- evidence collection;
- findings analysis;
- final reporting;
- agreed closure support.

### 7.2 Included Behaviour Categories

Subject to technical feasibility, the Pilot may evaluate:

- continuity during approved path change;
- continuity during approved endpoint change;
- recovery following defined communication loss;
- rejection of duplicate or replayed operations;
- rejection of stale state;
- deterministic state admission;
- bounded response to defined failure conditions;
- preservation of agreed authority constraints;
- evidence consistency;
- controlled recovery readiness.

These categories describe externally observable objectives.

They do not disclose or require disclosure of protected implementation mechanisms.

### 7.3 Out-of-Scope Activities

Unless added by signed Change Order, the Pilot excludes:

- production deployment;
- unrestricted source access;
- transfer of protected binaries;
- reverse engineering;
- participant-directed internal security testing;
- external certification;
- regulatory certification;
- formal penetration testing;
- participant infrastructure remediation;
- general application development;
- unrelated network redesign;
- migration of Participant production data;
- 24/7 production support;
- production service levels;
- disaster-recovery ownership;
- source-code escrow;
- exclusivity;
- resale;
- sublicensing;
- permanent access;
- white-label deployment;
- public benchmark publication.

---

## 8. Protected Technology Boundary

Participant acknowledges that successful evaluation does not require access to Protected Technology.

Provider will not be required to disclose:

- protected source code;
- internal algorithms;
- private protocol logic;
- cryptographic internals;
- internal state representation;
- authority decision mechanisms;
- recovery implementation;
- security-control implementation;
- build infrastructure;
- signing infrastructure;
- private repositories;
- internal development history;
- non-public defensive methods.

Provider may use controlled, hosted, isolated, supervised, compiled, restricted, or remotely operated components to preserve this boundary.

Participant receives only those interfaces and outputs expressly approved for the Pilot.

---

## 9. Pilot Schedule

The estimated Pilot duration is **[16–24 weeks]**.

| Phase | Estimated Period | Target Dates |
|---|---:|---|
| Phase 0 — Admission completion | 1–2 weeks | [DATES] |
| Phase 1 — Discovery and scope confirmation | 2–3 weeks | [DATES] |
| Phase 2 — Environment qualification | 2–4 weeks | [DATES] |
| Phase 3 — Integration and deployment | 4–6 weeks | [DATES] |
| Phase 4 — Controlled validation | 4–6 weeks | [DATES] |
| Phase 5 — Analysis and reporting | 2–3 weeks | [DATES] |
| Phase 6 — Closure support | 1–2 weeks | [DATES] |

Dates are dependent on:

- timely payment;
- Participant access;
- Participant personnel availability;
- environment readiness;
- third-party availability;
- security approval;
- timely Deliverable review;
- absence of material Change Orders.

---

## 10. Milestone 1 — Admission, Reservation, and Discovery

### 10.1 Objective

Complete final admission checks, reserve engineering capacity, confirm the use case, and establish the detailed Pilot scope.

### 10.2 Provider Activities

Provider will:

- verify engagement information;
- review Participant’s proposed use case;
- conduct discovery sessions;
- identify material dependencies;
- document preliminary risks;
- define the initial scope;
- prepare the responsibility model;
- prepare the initial scenario matrix.

### 10.3 Participant Activities

Participant will:

- provide accurate corporate information;
- provide authorised contacts;
- describe the target environment;
- identify business and technical objectives;
- identify legal and regulatory constraints;
- provide required dependency information;
- attend discovery sessions;
- review the scope materials.

### 10.4 Deliverables

- D1.1 Pilot Discovery Record;
- D1.2 Confirmed Use-Case Description;
- D1.3 Initial Scope and Boundary Record;
- D1.4 Preliminary Risk and Dependency Register;
- D1.5 Initial Scenario Matrix.

### 10.5 Acceptance Criteria

Milestone 1 is accepted when:

- the Participant entity and authorised contacts are confirmed;
- the use case is documented;
- the proposed environment is sufficiently described;
- material dependencies are identified;
- the initial scope is delivered;
- the initial scenario matrix is delivered.

### 10.6 Milestone Fee

**USD 150,000**

The fee becomes earned as discovery work and capacity reservation are performed.

---

## 11. Milestone 2 — Environment Qualification and Pilot Architecture

### 11.1 Objective

Determine whether the proposed environment is suitable and define the participant-specific Pilot architecture.

### 11.2 Provider Activities

Provider will:

- evaluate the proposed environment;
- identify integration boundaries;
- define access requirements;
- define evidence boundaries;
- define operational responsibilities;
- document material environmental blockers;
- prepare the Pilot Architecture Summary;
- finalise Acceptance Criteria.

### 11.3 Participant Activities

Participant will:

- provide required environment documentation;
- provide lawful access;
- identify system owners;
- provide network and security constraints;
- confirm data restrictions;
- review proposed architecture;
- resolve Participant-controlled blockers.

### 11.4 Deliverables

- D2.1 Environment Qualification Report;
- D2.2 Pilot Architecture Summary;
- D2.3 Responsibility Assignment Matrix;
- D2.4 Final Scenario Matrix;
- D2.5 Final Acceptance Criteria;
- D2.6 Evidence Collection Plan.

### 11.5 Acceptance Criteria

Milestone 2 is accepted when:

- the Authorised Environment is documented;
- required access is defined;
- the deployment boundary is defined;
- responsibilities are assigned;
- the scenario matrix is approved;
- evidence requirements are defined;
- known blockers are documented.

A conclusion that the environment requires remediation or modification is a valid Milestone 2 result.

### 11.6 Milestone Fee

**USD 200,000**

---

## 12. Milestone 3 — Controlled Integration and Deployment

### 12.1 Objective

Establish the approved Pilot boundary and verify baseline operation.

### 12.2 Provider Activities

Provider will:

- prepare approved Pilot components;
- support controlled integration;
- configure the approved evaluation boundary;
- verify baseline connectivity;
- verify approved access paths;
- verify evidence-output availability;
- document deployment status;
- identify integration deviations.

### 12.3 Participant Activities

Participant will:

- provide required infrastructure;
- maintain the Authorised Environment;
- provide authorised technical personnel;
- provide required network permissions;
- provide approved credentials;
- maintain Participant-controlled security;
- support baseline verification;
- resolve Participant-controlled integration issues.

### 12.4 Deliverables

- D3.1 Integration Record;
- D3.2 Deployment Boundary Record;
- D3.3 Baseline Verification Record;
- D3.4 Integration Findings Register;
- D3.5 Validation Readiness Decision.

### 12.5 Acceptance Criteria

Milestone 3 is accepted when:

- the approved Pilot boundary is established;
- baseline operation is tested;
- required evidence outputs are available;
- access controls are confirmed;
- integration deviations are documented;
- Provider issues a readiness decision.

Possible readiness decisions are:

- `READY`;
- `READY_WITH_CONDITIONS`;
- `NOT_READY`.

A `NOT_READY` result caused by Participant-controlled environment limitations does not by itself constitute failure by Provider.

### 12.6 Milestone Fee

**USD 300,000**

---

## 13. Milestone 4 — Validation and Evidence

### 13.1 Objective

Execute the approved scenario matrix and produce the agreed evidence.

### 13.2 Provider Activities

Provider will:

- prepare validation execution;
- execute authorised scenarios;
- observe approved outputs;
- collect agreed evidence;
- record scenario outcomes;
- document deviations;
- preserve evidence provenance;
- identify conditions affecting interpretation.

### 13.3 Participant Activities

Participant will:

- maintain environment availability;
- avoid unapproved changes;
- provide required personnel;
- support agreed scenario preparation;
- preserve Participant-side records;
- report external events affecting results;
- avoid interference with evidence collection.

### 13.4 Approved Scenario Matrix

| Scenario ID | Scenario | Preconditions | Expected Observable Result | Evidence |
|---|---|---|---|---|
| [SC-01] | [DESCRIPTION] | [CONDITIONS] | [RESULT] | [OUTPUT] |
| [SC-02] | [DESCRIPTION] | [CONDITIONS] | [RESULT] | [OUTPUT] |
| [SC-03] | [DESCRIPTION] | [CONDITIONS] | [RESULT] | [OUTPUT] |
| [SC-04] | [DESCRIPTION] | [CONDITIONS] | [RESULT] | [OUTPUT] |
| [SC-05] | [DESCRIPTION] | [CONDITIONS] | [RESULT] | [OUTPUT] |

Only scenarios approved in writing may be executed.

### 13.5 Deliverables

- D4.1 Scenario Execution Record;
- D4.2 Approved Evidence Package;
- D4.3 Deviation Register;
- D4.4 Preliminary Validation Summary;
- D4.5 Known Limitations Record.

### 13.6 Acceptance Criteria

Milestone 4 is accepted when:

- the approved executable scenarios are completed or appropriately classified;
- agreed evidence is produced;
- material deviations are documented;
- environmental limitations are documented;
- preliminary results are delivered.

A scenario may be classified as:

- `PASS`;
- `FAIL`;
- `BLOCKED`;
- `INCONCLUSIVE`;
- `NOT_EXECUTED`;
- `OUT_OF_SCOPE`.

The existence of a failed, blocked, or inconclusive scenario does not automatically mean that Provider failed to perform Milestone 4.

### 13.7 Milestone Fee

**USD 250,000**

---

## 14. Milestone 5 — Final Analysis and Closure

### 14.1 Objective

Analyse the Pilot results and deliver the final decision package.

### 14.2 Provider Activities

Provider will:

- analyse approved evidence;
- compare results with Acceptance Criteria;
- identify verified behaviours;
- identify limitations;
- document material risks;
- prepare the final recommendation;
- conduct a final findings session;
- provide agreed closure support.

### 14.3 Deliverables

- D5.1 Final Pilot Report;
- D5.2 Executive Engineering Summary;
- D5.3 Acceptance-Criteria Matrix;
- D5.4 Risk and Limitation Register;
- D5.5 Final Recommendation;
- D5.6 Closure Record.

### 14.4 Final Recommendation

The final recommendation will be one of:

- `GO`;
- `CONDITIONAL_GO`;
- `NO_GO`;
- `INCONCLUSIVE`.

### 14.5 Acceptance Criteria

Milestone 5 is accepted when:

- the final report is delivered;
- the agreed results are mapped to Acceptance Criteria;
- material limitations are documented;
- the final recommendation is stated;
- the findings session is completed or made available;
- closure materials are delivered.

Participant disagreement with a technically supported recommendation does not constitute rejection of the Deliverable.

### 14.6 Milestone Fee

**USD 100,000**

---

## 15. Commercial Summary

| Milestone | Amount | Payment Trigger |
|---|---:|---|
| M1 — Admission, reservation, and discovery | USD 150,000 | Signature and before engagement activation |
| M2 — Environment qualification and architecture | USD 200,000 | Before Milestone 2 begins |
| M3 — Integration and deployment | USD 300,000 | Before Milestone 3 begins |
| M4 — Validation and evidence | USD 250,000 | Before Milestone 4 begins |
| M5 — Final analysis and closure | USD 100,000 | Before unrestricted final report delivery |
| **Total** | **USD 1,000,000** | |

Fees exclude applicable taxes and approved expenses.

---

## 16. Payment Instructions

Invoices are due within **[10/15/30] calendar days**.

Payments must:

- use the currency stated on the invoice;
- originate from an approved payer;
- include the invoice reference;
- be made to the verified account stated on the invoice;
- satisfy applicable compliance checks.

Provider will not change payment instructions solely through an informal message.

Any change must be independently verified through the approved commercial contact.

---

## 17. Deliverable Review and Acceptance

### 17.1 Review Period

Participant has ten business days after delivery to:

- accept the Deliverable; or
- submit a valid written rejection.

### 17.2 Valid Rejection

A valid rejection must:

- identify the Deliverable;
- identify the unmet Acceptance Criterion;
- provide supporting evidence;
- remain within the agreed scope;
- be received during the review period.

### 17.3 Deemed Acceptance

A Deliverable is deemed accepted when:

- the review period expires without valid rejection;
- Participant begins the next milestone;
- Participant uses the Deliverable for its intended purpose;
- Participant publicly or internally relies on it as completed;
- Provider corrects a valid non-conformity.

### 17.4 Correction

Provider will have a reasonable opportunity to correct a valid non-conformity.

A new requirement is not a correction and requires Change Control.

---

## 18. Refund and Termination Schedule

### 18.1 General Rule

Fees are earned according to work performed, Deliverables produced, milestones accepted, capacity reserved, and commitments incurred.

There is no automatic full refund after work begins.

### 18.2 Before Pilot Activation

If Provider terminates before performing substantive work and before reserving material capacity, Participant may receive the amount paid less:

- compliance costs;
- banking charges;
- approved third-party costs;
- non-recoverable commitments.

### 18.3 Milestone 1

After discovery begins or engineering capacity is reserved:

- the completed portion is earned;
- the capacity-reservation portion is non-refundable;
- any unearned remainder is calculated by Provider in good faith according to documented work and commitments.

After Milestone 1 acceptance, its USD 150,000 fee is non-refundable.

### 18.4 Milestone 2

After Milestone 2 begins:

- completed qualification and architecture work is earned;
- approved external costs are non-refundable;
- any unearned prepaid remainder is subject to final reconciliation.

After Milestone 2 acceptance, its USD 200,000 fee is non-refundable.

### 18.5 Milestone 3

After integration resources are allocated or deployment begins:

- completed integration work is earned;
- reserved capacity is non-refundable;
- committed infrastructure and third-party costs are non-refundable;
- Participant-caused rework is payable.

After Milestone 3 acceptance, its USD 300,000 fee is non-refundable.

### 18.6 Milestone 4

After validation preparation or execution begins:

- validation work performed is earned;
- evidence-production work performed is earned;
- reserved execution capacity is non-refundable;
- completed scenarios remain payable regardless of outcome.

After Milestone 4 acceptance, its USD 250,000 fee is non-refundable.

### 18.7 Milestone 5

After final analysis begins:

- analysis and report-preparation work performed is earned;
- completed reporting work is non-refundable.

After Milestone 5 acceptance, its USD 100,000 fee is non-refundable.

### 18.8 Participant Termination for Convenience

If Participant terminates without an uncured material breach by Provider, Participant must pay:

- all accepted milestone Fees;
- work completed in the active milestone;
- work in progress;
- reserved-capacity charges;
- approved expenses;
- non-cancellable commitments;
- reasonable closure costs.

Provider will return any remaining refundable unearned prepaid balance after final reconciliation.

### 18.9 Provider Termination Without Participant Cause

If Provider terminates without Participant breach and cannot complete future Services:

- accepted milestones remain payable;
- completed work remains payable;
- approved expenses remain payable;
- unearned prepaid amounts for unperformed future work may be refunded.

### 18.10 Termination for Participant Breach

If Provider terminates because of Participant breach, misuse, unauthorised access, reverse engineering, non-payment, security violation, or legal prohibition:

- completed work remains payable;
- accepted milestone Fees remain non-refundable;
- work in progress remains payable;
- committed costs remain payable;
- Provider may apply prepaid amounts against amounts due;
- any remaining refund is governed by the Master Services Agreement.

### 18.11 Material Provider Breach

Participant must provide written notice describing the alleged breach and allow a **[15/30]-day** cure period where cure is possible.

If an uncured material breach prevents completion:

- completed conforming work remains payable;
- Participant may terminate the affected future scope;
- unearned prepaid amounts attributable to unperformed affected work may be refunded;
- additional remedies remain subject to the Master Services Agreement.

### 18.12 No Outcome-Based Refund

No refund is due solely because:

- the recommendation is `NO_GO`;
- the recommendation is `CONDITIONAL_GO`;
- the recommendation is `INCONCLUSIVE`;
- one or more scenarios fail;
- the environment is unsuitable;
- Participant changes its strategy;
- production deployment requires more work;
- Participant does not obtain internal funding or approval;
- an unspecified expectation is not achieved.

---

## 19. Participant Dependencies

Participant will provide:

| Dependency | Owner | Required Date | Status |
|---|---|---|---|
| Legal and organisational verification | Participant | [DATE] | Pending |
| Authorised technical personnel | Participant | [DATE] | Pending |
| Environment documentation | Participant | [DATE] | Pending |
| Network access | Participant | [DATE] | Pending |
| Identity and security access | Participant | [DATE] | Pending |
| Required infrastructure | Participant | [DATE] | Pending |
| Observability access | Participant | [DATE] | Pending |
| Evidence storage | Participant | [DATE] | Pending |
| Third-party approvals | Participant | [DATE] | Pending |
| Deliverable review personnel | Participant | [DATE] | Pending |

Failure to provide a dependency may result in:

- delay;
- rescheduling;
- additional cost;
- Change Order;
- suspension;
- classification of a scenario as `BLOCKED`;
- termination under the Master Services Agreement.

---

## 20. Provider Dependencies

Provider will provide:

| Dependency | Required Date | Status |
|---|---|---|
| Pilot technical lead | [DATE] | Pending |
| Approved evaluation boundary | [DATE] | Pending |
| Pilot Documentation | [DATE] | Pending |
| Scenario execution plan | [DATE] | Pending |
| Evidence plan | [DATE] | Pending |
| Reporting templates | [DATE] | Pending |

Provider obligations remain subject to:

- cleared payment;
- admission completion;
- Participant dependency completion;
- legal and compliance approval;
- absence of material security risk.

---

## 21. Security Requirements

Participant must:

1. restrict access to Authorised Personnel;
2. use individual identities;
3. use appropriate multi-factor authentication;
4. protect Pilot credentials;
5. maintain access records;
6. maintain supported systems;
7. avoid shared accounts;
8. report suspected compromise promptly;
9. prevent unauthorised copying;
10. prevent unauthorised recording;
11. prevent reverse engineering;
12. prevent access from unapproved regions;
13. revoke access when no longer required;
14. follow approved evidence-handling procedures;
15. cooperate with emergency suspension.

Provider may impose additional reasonable controls where required to protect the Pilot or Protected Technology.

---

## 22. Incident Notification

### 22.1 Participant Notification

Participant will notify Provider without undue delay after discovering:

- suspected credential compromise;
- unauthorised Pilot access;
- unauthorised disclosure;
- evidence tampering;
- security-control failure;
- unapproved environment change;
- legal or regulatory inquiry affecting the Pilot.

### 22.2 Provider Notification

Provider will notify Participant without undue delay after confirming an incident materially affecting Participant Confidential Information within Provider-controlled Pilot systems.

### 22.3 Notification Channel

Security notices must be sent to:

**Provider:** [SECURITY EMAIL]  
**Participant:** [SECURITY EMAIL]  

Incident notification does not constitute an admission of liability.

---

## 23. Data Handling

### 23.1 Approved Data

The Pilot may process only:

- [APPROVED DATA CATEGORY];
- [APPROVED DATA CATEGORY];
- synthetic or minimised test data;
- approved technical metadata;
- approved evidence records.

### 23.2 Prohibited Data

Participant must not provide:

- classified information;
- production credentials not required by the SOW;
- payment-card data;
- health data;
- biometric data;
- children’s data;
- government secrets;
- special-category personal data;
- data lacking lawful authorisation;

unless expressly approved in a signed schedule.

### 23.3 Retention

| Data Category | Retention Period | Deletion Method |
|---|---:|---|
| Pilot operational data | [PERIOD] | [METHOD] |
| Evidence Output | [PERIOD] | [METHOD] |
| Security records | [PERIOD] | [METHOD] |
| Final reports | [PERIOD] | [METHOD] |

Legal, security, backup, and dispute-preservation exceptions may apply.

---

## 24. Evidence Handling

Evidence Output will be:

- limited to approved categories;
- stored in approved locations;
- associated with relevant execution context;
- protected against unauthorised modification;
- disclosed only to authorised recipients;
- interpreted within documented limitations.

Participant may not:

- remove material context;
- represent partial evidence as a universal conclusion;
- alter results misleadingly;
- publish Evidence Output without approval;
- use Evidence Output to imply certification or endorsement.

---

## 25. Support

### 25.1 Included Support

The Pilot includes:

- [NUMBER] scheduled discovery sessions;
- [NUMBER] architecture sessions;
- [NUMBER] integration sessions;
- [NUMBER] validation-review sessions;
- one final findings session;
- up to [NUMBER] hours of post-Pilot clarification support.

### 25.2 Support Hours

Standard support window:

**[DAYS AND HOURS, TIME ZONE]**

### 25.3 Response Targets

| Priority | Description | Target Initial Response |
|---|---|---:|
| P1 | Pilot-blocking issue | [TIME] |
| P2 | Material degradation | [TIME] |
| P3 | Non-blocking technical issue | [TIME] |
| P4 | General question | [TIME] |

These are response targets, not production service-level guarantees.

### 25.4 Excluded Support

Support does not include:

- Participant production operations;
- Participant application development;
- unrelated infrastructure administration;
- 24/7 monitoring;
- remediation outside the Pilot;
- work caused by unapproved changes.

---

## 26. Change Control

A Change Order is required for material changes to:

- legal entity;
- use case;
- Authorised Environment;
- regions;
- workloads;
- scope;
- schedule;
- scenarios;
- Acceptance Criteria;
- evidence requirements;
- Deliverables;
- support level;
- data categories;
- security requirements.

Each Change Order must identify:

- requested change;
- reason;
- scope effect;
- schedule effect;
- commercial effect;
- security effect;
- revised responsibilities;
- authorised signatures.

No changed work begins before written approval.

---

## 27. Pilot Suspension

Provider may suspend Pilot activity where reasonably necessary because of:

- security risk;
- legal prohibition;
- sanctions concern;
- non-payment;
- unauthorised access;
- reverse engineering;
- credential sharing;
- unapproved testing;
- evidence tampering;
- Participant dependency failure;
- material environment change;
- risk to Protected Technology.

Where practical, Provider will identify:

- reason for suspension;
- required remediation;
- conditions for restoration;
- schedule impact.

Emergency suspension may occur without advance notice.

---

## 28. Public Communications

Neither Party may publicly disclose without prior written approval:

- the existence of the Pilot;
- Participant’s name;
- Provider’s non-public role;
- commercial value;
- results;
- screenshots;
- reports;
- Evidence Output;
- architecture;
- limitations;
- security findings.

Any approved public communication must distinguish the Pilot from:

- certification;
- production deployment;
- ownership;
- partnership;
- endorsement;
- regulatory approval.

---

## 29. Intellectual Property Confirmation

Participant confirms that:

- VRP remains Provider Protected Technology;
- the Pilot does not transfer ownership;
- payment does not grant source-code rights;
- payment does not grant reproduction rights;
- payment does not grant derivative-development rights;
- payment does not grant redistribution rights;
- payment does not grant permanent production rights;
- no right is granted by implication.

Participant retains ownership of Participant Data and Participant Background Technology.

Deliverable rights remain subject to the Master Services Agreement.

---

## 30. Pilot Closure

At closure:

1. Pilot access will be revoked or adjusted;
2. temporary credentials will be disabled;
3. Pilot Materials will be returned or destroyed as required;
4. final invoices will be reconciled;
5. approved refunds, if any, will be calculated;
6. evidence retention will follow this SOW;
7. the final report will be delivered subject to payment;
8. the Parties will record the final recommendation;
9. no production rights will continue unless separately agreed.

---

## 31. Post-Pilot Options

Following closure, the Parties may separately discuss:

- remediation;
- extended validation;
- additional scenarios;
- production-readiness assessment;
- limited production deployment;
- commercial licensing;
- dedicated support;
- strategic collaboration.

Neither Party is obligated to proceed.

No future capacity, price, exclusivity, or availability is guaranteed by this SOW.

---

## 32. Success Matrix

Before signature, the Parties must complete the following matrix.

| Criterion ID | Criterion | Measurement | Required Result | Evidence | Owner |
|---|---|---|---|---|---|
| AC-01 | [CRITERION] | [METHOD] | [THRESHOLD] | [OUTPUT] | [OWNER] |
| AC-02 | [CRITERION] | [METHOD] | [THRESHOLD] | [OUTPUT] | [OWNER] |
| AC-03 | [CRITERION] | [METHOD] | [THRESHOLD] | [OUTPUT] | [OWNER] |
| AC-04 | [CRITERION] | [METHOD] | [THRESHOLD] | [OUTPUT] | [OWNER] |
| AC-05 | [CRITERION] | [METHOD] | [THRESHOLD] | [OUTPUT] | [OWNER] |

No unstated expectation becomes an Acceptance Criterion.

---

## 33. Risk Register

| Risk ID | Risk | Owner | Probability | Impact | Mitigation |
|---|---|---|---|---|---|
| R-01 | Participant environment delay | Participant | [LEVEL] | [LEVEL] | [ACTION] |
| R-02 | Third-party dependency failure | [OWNER] | [LEVEL] | [LEVEL] | [ACTION] |
| R-03 | Access approval delay | Participant | [LEVEL] | [LEVEL] | [ACTION] |
| R-04 | Material scope change | Joint | [LEVEL] | [LEVEL] | [ACTION] |
| R-05 | Evidence limitation | Joint | [LEVEL] | [LEVEL] | [ACTION] |
| R-06 | Security suspension | Joint | [LEVEL] | [LEVEL] | [ACTION] |

The risk register documents known risks and does not transfer responsibility unless expressly stated.

---

## 34. Assumptions

This SOW assumes:

- Participant information is accurate;
- the use case is lawful;
- required access can be provided;
- the environment remains materially stable;
- Participant personnel are available;
- required infrastructure is operational;
- third-party services remain available;
- agreed data may be processed lawfully;
- no prohibited jurisdiction is involved;
- payments are received on time;
- no material security incident prevents performance.

If an assumption becomes false, Provider may require a Change Order, suspend affected work, or exercise contractual termination rights.

---

## 35. Special Terms

The following participant-specific terms apply:

> [INSERT SPECIAL TERMS OR STATE “NONE.”]

No special term changes ownership of Protected Technology unless it expressly identifies the affected right and is approved by Provider’s authorised legal representative.

---

## 36. SOW Completion Checklist

Before signature, confirm that:

- [ ] all legal entities are identified;
- [ ] all placeholders are completed;
- [ ] the Authorised Environment is defined;
- [ ] Authorised Personnel are identified;
- [ ] scope is approved;
- [ ] exclusions are approved;
- [ ] scenarios are defined;
- [ ] Acceptance Criteria are measurable;
- [ ] evidence requirements are defined;
- [ ] data categories are approved;
- [ ] payment schedule is approved;
- [ ] refund treatment is approved;
- [ ] tax treatment is reviewed;
- [ ] governing law is confirmed in the MSA;
- [ ] security requirements are approved;
- [ ] required legal review is complete;
- [ ] both signatories have authority.

---

## 37. Signatures

By signing this SOW, the Parties agree to its terms and confirm that it is governed by the VRP Pilot Master Services Agreement identified above.

### Provider

**Legal entity:** [VRP CONTRACTING ENTITY]  
**Name:** [AUTHORISED REPRESENTATIVE]  
**Title:** [TITLE]  
**Signature:** ______________________________  
**Date:** ______________________________  

### Participant

**Legal entity:** [PARTICIPANT LEGAL NAME]  
**Name:** [AUTHORISED REPRESENTATIVE]  
**Title:** [TITLE]  
**Signature:** ______________________________  
**Date:** ______________________________  

---

# Appendix A — Deliverable Register

| Deliverable | Description | Target Date | Review Period | Acceptance Status |
|---|---|---:|---:|---|
| D1.1 | Pilot Discovery Record | [DATE] | 10 business days | Pending |
| D1.2 | Confirmed Use-Case Description | [DATE] | 10 business days | Pending |
| D1.3 | Initial Scope and Boundary Record | [DATE] | 10 business days | Pending |
| D1.4 | Preliminary Risk and Dependency Register | [DATE] | 10 business days | Pending |
| D1.5 | Initial Scenario Matrix | [DATE] | 10 business days | Pending |
| D2.1 | Environment Qualification Report | [DATE] | 10 business days | Pending |
| D2.2 | Pilot Architecture Summary | [DATE] | 10 business days | Pending |
| D2.3 | Responsibility Assignment Matrix | [DATE] | 10 business days | Pending |
| D2.4 | Final Scenario Matrix | [DATE] | 10 business days | Pending |
| D2.5 | Final Acceptance Criteria | [DATE] | 10 business days | Pending |
| D2.6 | Evidence Collection Plan | [DATE] | 10 business days | Pending |
| D3.1 | Integration Record | [DATE] | 10 business days | Pending |
| D3.2 | Deployment Boundary Record | [DATE] | 10 business days | Pending |
| D3.3 | Baseline Verification Record | [DATE] | 10 business days | Pending |
| D3.4 | Integration Findings Register | [DATE] | 10 business days | Pending |
| D3.5 | Validation Readiness Decision | [DATE] | 10 business days | Pending |
| D4.1 | Scenario Execution Record | [DATE] | 10 business days | Pending |
| D4.2 | Approved Evidence Package | [DATE] | 10 business days | Pending |
| D4.3 | Deviation Register | [DATE] | 10 business days | Pending |
| D4.4 | Preliminary Validation Summary | [DATE] | 10 business days | Pending |
| D4.5 | Known Limitations Record | [DATE] | 10 business days | Pending |
| D5.1 | Final Pilot Report | [DATE] | 10 business days | Pending |
| D5.2 | Executive Engineering Summary | [DATE] | 10 business days | Pending |
| D5.3 | Acceptance-Criteria Matrix | [DATE] | 10 business days | Pending |
| D5.4 | Risk and Limitation Register | [DATE] | 10 business days | Pending |
| D5.5 | Final Recommendation | [DATE] | 10 business days | Pending |
| D5.6 | Closure Record | [DATE] | 10 business days | Pending |

---

# Appendix B — Change Order Template

**Change Order reference:** [NUMBER]  
**Requested by:** [PARTY]  
**Request date:** [DATE]  

## Requested Change

[DESCRIPTION]

## Reason

[DESCRIPTION]

## Scope Impact

[DESCRIPTION]

## Schedule Impact

[DESCRIPTION]

## Commercial Impact

[AMOUNT OR NONE]

## Security and Data Impact

[DESCRIPTION]

## Approval

### Provider

Name: ______________________________  
Title: ______________________________  
Signature: __________________________  
Date: ______________________________  

### Participant

Name: ______________________________  
Title: ______________________________  
Signature: __________________________  
Date: ______________________________  

---

# Appendix C — Final Pilot Decision

**Pilot reference:** [REFERENCE]  
**Decision date:** [DATE]  

## Final Recommendation

Select one:

- [ ] `GO`
- [ ] `CONDITIONAL_GO`
- [ ] `NO_GO`
- [ ] `INCONCLUSIVE`

## Evidence Basis

[SUMMARY]

## Verified Capabilities

[SUMMARY]

## Known Limitations

[SUMMARY]

## Required Conditions

[SUMMARY]

## Recommended Next Step

[SUMMARY]

## Approval

### Provider Technical Lead

Name: ______________________________  
Signature: __________________________  
Date: ______________________________  

### Participant Technical Lead

Name: ______________________________  
Signature: __________________________  
Date: ______________________________  

---

## Final Statement

This SOW defines a controlled USD 1,000,000 engineering evaluation.

The Participant receives defined integration, validation, evidence, analysis, and reporting services.

The Participant does not purchase VRP itself.

The Participant does not receive the protected implementation.

The Pilot exists to produce a bounded and evidence-based decision under agreed conditions.

**Continuity requires verification.**