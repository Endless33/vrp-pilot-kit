# VRP Pilot Statement of Work — Public Template

## Public Template Notice

This document is a public, non-binding Statement of Work template provided for informational purposes.

It illustrates how a participant-specific VRP Pilot may be structured.

It is not:

- a commercial offer;
- a quotation;
- a binding Statement of Work;
- a price commitment;
- a capacity reservation;
- a warranty;
- an acceptance of any applicant;
- a grant of access to VRP;
- a replacement for negotiated legal agreements.

All participant identities, commercial amounts, dates, environments, responsibilities, Deliverables, Acceptance Criteria, security requirements, refund terms, and liability provisions must be completed and negotiated privately.

A binding Statement of Work exists only when a final participant-specific version has been reviewed and signed by authorised representatives of the identified legal entities.

---

# STATEMENT OF WORK TEMPLATE

**SOW reference:** [SOW Reference]  
**Effective date:** [Effective Date]  
**Pilot start date:** [Pilot Start Date]  
**Target completion date:** [Target Completion Date]  

This Statement of Work (“SOW”) is proposed under a Master Services Agreement between:

**[Provider Legal Entity]** (“Provider”);

and

**[Participant Legal Entity]** (“Participant”).

Capitalised terms not defined in this SOW should have the meanings assigned in the applicable Master Services Agreement.

---

## 1. Engagement Summary

Provider will perform a controlled, limited, non-production VRP Pilot for Participant.

The Pilot will evaluate agreed continuity, recovery, state-admission, and evidence behaviour within an approved environment and under participant-specific technical, operational, commercial, legal, and security conditions.

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

**Legal entity:** [Participant Legal Entity]  
**Registration number:** [Registration Number]  
**Registered address:** [Registered Address]  
**Country of incorporation:** [Country]  
**VAT or tax number:** [Tax Number]  
**Ultimate parent entity:** [Parent Entity or Not Applicable]  
**Authorised signatory:** [Authorised Signatory]  
**Executive sponsor:** [Executive Sponsor]  
**Technical lead:** [Technical Lead]  
**Security lead:** [Security Lead]  
**Commercial contact:** [Commercial Contact]  
**Legal contact:** [Legal Contact]  

---

## 3. Provider Information

**Legal entity:** [Provider Legal Entity]  
**Registration number:** [Registration Number]  
**Registered address:** [Registered Address]  
**Country of incorporation:** [Country]  
**VAT or tax number:** [Tax Number]  
**Authorised signatory:** [Authorised Signatory]  
**Lead architect:** [Lead Architect Name]  
**Technical contact:** [Technical Contact]  
**Security contact:** [Security Contact]  
**Commercial contact:** [Commercial Contact]  
**Legal contact:** [Legal Contact]  

---

## 4. Pilot Objective

The primary objective is to determine whether the approved VRP evaluation capability can satisfy defined Pilot Acceptance Criteria under agreed conditions.

### 4.1 Continuity Problem

Participant’s target continuity problem:

> [Describe the specific operational or network continuity problem.]

### 4.2 Target Workload

Approved workload:

> [Describe the application, service, traffic class, or control flow.]

### 4.3 Intended Decision

The Pilot is intended to support the following decision:

> [Describe the technical, operational, or production-readiness decision.]

### 4.4 Required Evidence

Participant requires the following evidence categories:

- [Evidence Category];
- [Evidence Category];
- [Evidence Category];
- [Final Report Requirement].

### 4.5 Explicit Non-Objectives

The Pilot is not intended to:

- prove universal suitability;
- guarantee uninterrupted operation;
- replace Participant risk management;
- provide regulatory certification;
- disclose Protected Technology;
- establish production service levels;
- guarantee a predetermined result.

---

## 5. Authorised Environment

The Pilot is limited to the environment defined in the final signed SOW.

### 5.1 Infrastructure

| Component | Approved Description |
|---|---|
| Cloud or facility | [Provider or Location] |
| Account or tenancy | [Identifier] |
| Regions | [Approved Regions] |
| Compute environment | [Description] |
| Operating systems | [Description] |
| Network boundary | [Description] |
| Participant application | [Description] |
| Observability systems | [Description] |
| Evidence storage | [Description] |

### 5.2 Authorised Locations

The Pilot may operate only in:

- [Authorised Location];
- [Authorised Location];
- [Authorised Location].

### 5.3 Authorised Workloads

The Pilot may process only:

- [Authorised Workload];
- [Authorised Workload];
- [Authorised Workload].

### 5.4 Excluded Environments

Unless expressly approved in the final SOW, the Pilot must not be deployed into:

- Participant production systems;
- safety-critical systems;
- medical systems;
- weapons systems;
- classified environments;
- environments containing prohibited data;
- third-party systems lacking authorisation;
- unapproved jurisdictions;
- environments outside the agreed Pilot boundary.

### 5.5 Environment Changes

Participant must notify Provider before making a material change to:

- topology;
- identity systems;
- network policy;
- workloads;
- hosting provider;
- region;
- security controls;
- observability;
- evidence storage;
- access model.

Provider may require requalification or a Change Order.

---

## 6. Authorised Personnel

Only personnel approved in the final SOW may access Pilot Materials or participate directly in Pilot operations.

| Name | Organisation | Role | Access Level | Approval Status |
|---|---|---|---|---|
| [Name] | [Entity] | [Role] | [Access Level] | [Status] |
| [Name] | [Entity] | [Role] | [Access Level] | [Status] |
| [Name] | [Entity] | [Role] | [Access Level] | [Status] |

Participant must notify Provider when an Authorised Person:

- changes role;
- no longer requires access;
- leaves Participant;
- is suspected of credential compromise;
- becomes subject to a relevant legal or security restriction.

Access may not be transferred or shared.

---

## 7. Pilot Scope

### 7.1 Potentially Included Activities

A participant-specific Pilot may include:

- participant qualification;
- technical discovery;
- environment review;
- Pilot-boundary definition;
- responsibility mapping;
- risk assessment;
- dependency assessment;
- scenario planning;
- Acceptance Criteria definition;
- evidence planning;
- controlled integration;
- baseline verification;
- controlled validation;
- evidence collection;
- findings analysis;
- final reporting;
- closure support.

Only activities expressly included in the signed SOW are required.

### 7.2 Potential Behaviour Categories

Subject to the final scope and technical feasibility, the Pilot may evaluate:

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

These categories describe observable evaluation objectives.

They do not disclose protected implementation mechanisms.

### 7.3 Out-of-Scope Activities

Unless expressly added through a signed Change Order, the Pilot excludes:

- production deployment;
- source-code access;
- transfer of Protected Technology;
- reverse engineering;
- unrestricted binary access;
- participant-directed internal security testing;
- external certification;
- regulatory certification;
- Participant infrastructure remediation;
- unrelated application development;
- unrelated network redesign;
- migration of production data;
- continuous production support;
- production service levels;
- source-code escrow;
- exclusivity;
- resale;
- sublicensing;
- permanent access;
- white-label deployment;
- public benchmark publication.

---

## 8. Protected Technology Boundary

Participant acknowledges that evaluation does not require access to Protected Technology.

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

Provider may use:

- controlled access;
- hosted components;
- isolated components;
- supervised execution;
- compiled components;
- remote operation;
- restricted interfaces;
- time-limited credentials.

Participant receives only approved interfaces, Deliverables, and Evidence Output.

---

## 9. Pilot Schedule

The final Pilot duration must be negotiated privately.

| Phase | Estimated Period | Target Dates |
|---|---:|---|
| Admission completion | [Duration] | [Dates] |
| Discovery and scope confirmation | [Duration] | [Dates] |
| Environment qualification | [Duration] | [Dates] |
| Integration and deployment | [Duration] | [Dates] |
| Controlled validation | [Duration] | [Dates] |
| Analysis and reporting | [Duration] | [Dates] |
| Closure support | [Duration] | [Dates] |

Dates may depend on:

- timely payment;
- Participant access;
- Participant personnel availability;
- environment readiness;
- third-party availability;
- security approval;
- Deliverable review;
- absence of material scope changes.

---

## 10. Milestone 1 — Admission and Discovery

### 10.1 Objective

Complete required admission checks, confirm the use case, reserve agreed engineering capacity, and establish the detailed Pilot scope.

### 10.2 Potential Provider Activities

Provider may:

- verify engagement information;
- review Participant’s use case;
- conduct discovery sessions;
- identify dependencies;
- document preliminary risks;
- define the initial scope;
- prepare a responsibility model;
- prepare an initial scenario matrix.

### 10.3 Potential Participant Activities

Participant may be required to:

- provide accurate corporate information;
- identify authorised contacts;
- describe the target environment;
- identify objectives;
- identify legal constraints;
- provide dependency information;
- attend discovery sessions;
- review scope materials.

### 10.4 Example Deliverables

- Pilot Discovery Record;
- Confirmed Use-Case Description;
- Initial Scope and Boundary Record;
- Preliminary Risk and Dependency Register;
- Initial Scenario Matrix.

### 10.5 Example Acceptance Criteria

Milestone 1 may be accepted when:

- the Participant entity is confirmed;
- authorised contacts are confirmed;
- the use case is documented;
- the proposed environment is described;
- material dependencies are identified;
- the initial scope is delivered;
- the initial scenario matrix is delivered.

### 10.6 Commercial Field

**Milestone fee:** [Amount USD]  
**Payment trigger:** [Payment Trigger]  
**Refund treatment:** [Participant-Specific Refund Treatment]  

---

## 11. Milestone 2 — Environment Qualification and Pilot Architecture

### 11.1 Objective

Determine whether the proposed environment is suitable and define the participant-specific Pilot architecture.

### 11.2 Potential Provider Activities

Provider may:

- evaluate the proposed environment;
- identify integration boundaries;
- define access requirements;
- define evidence boundaries;
- define responsibilities;
- document environmental blockers;
- prepare a Pilot Architecture Summary;
- finalise Acceptance Criteria.

### 11.3 Potential Participant Activities

Participant may be required to:

- provide environment documentation;
- provide lawful access;
- identify system owners;
- provide network constraints;
- provide security constraints;
- confirm data restrictions;
- review the proposed architecture;
- resolve Participant-controlled blockers.

### 11.4 Example Deliverables

- Environment Qualification Report;
- Pilot Architecture Summary;
- Responsibility Assignment Matrix;
- Final Scenario Matrix;
- Final Acceptance Criteria;
- Evidence Collection Plan.

### 11.5 Example Acceptance Criteria

Milestone 2 may be accepted when:

- the Authorised Environment is documented;
- required access is defined;
- the deployment boundary is defined;
- responsibilities are assigned;
- scenarios are approved;
- evidence requirements are defined;
- known blockers are documented.

A conclusion that the environment requires modification may be a valid Milestone 2 result.

### 11.6 Commercial Field

**Milestone fee:** [Amount USD]  
**Payment trigger:** [Payment Trigger]  
**Refund treatment:** [Participant-Specific Refund Treatment]  

---

## 12. Milestone 3 — Controlled Integration

### 12.1 Objective

Establish the approved Pilot boundary and verify baseline operation.

### 12.2 Potential Provider Activities

Provider may:

- prepare approved Pilot components;
- support controlled integration;
- configure the approved evaluation boundary;
- verify baseline connectivity;
- verify approved access paths;
- verify Evidence Output availability;
- document deployment status;
- identify integration deviations.

### 12.3 Potential Participant Activities

Participant may be required to:

- provide infrastructure;
- maintain the Authorised Environment;
- provide authorised personnel;
- provide network permissions;
- provide approved credentials;
- maintain Participant-controlled security;
- support baseline verification;
- resolve Participant-controlled issues.

### 12.4 Example Deliverables

- Integration Record;
- Deployment Boundary Record;
- Baseline Verification Record;
- Integration Findings Register;
- Validation Readiness Decision.

### 12.5 Example Acceptance Criteria

Milestone 3 may be accepted when:

- the approved boundary is established;
- baseline operation is tested;
- required Evidence Output is available;
- access controls are confirmed;
- integration deviations are documented;
- a readiness decision is issued.

Possible readiness decisions:

- `READY`;
- `READY_WITH_CONDITIONS`;
- `NOT_READY`.

A `NOT_READY` result caused by Participant-controlled limitations does not automatically represent failure by Provider.

### 12.6 Commercial Field

**Milestone fee:** [Amount USD]  
**Payment trigger:** [Payment Trigger]  
**Refund treatment:** [Participant-Specific Refund Treatment]  

---

## 13. Milestone 4 — Validation and Evidence

### 13.1 Objective

Execute the approved scenario matrix and produce agreed Evidence Output.

### 13.2 Potential Provider Activities

Provider may:

- prepare validation execution;
- execute authorised scenarios;
- observe approved outputs;
- collect agreed evidence;
- record scenario outcomes;
- document deviations;
- preserve evidence context;
- identify interpretation limitations.

### 13.3 Potential Participant Activities

Participant may be required to:

- maintain environment availability;
- avoid unapproved changes;
- provide required personnel;
- support scenario preparation;
- preserve Participant-side records;
- report external events affecting results;
- avoid interfering with evidence collection.

### 13.4 Scenario Matrix Template

| Scenario ID | Scenario | Preconditions | Expected Observable Result | Evidence |
|---|---|---|---|---|
| [SC-01] | [Description] | [Conditions] | [Expected Result] | [Evidence] |
| [SC-02] | [Description] | [Conditions] | [Expected Result] | [Evidence] |
| [SC-03] | [Description] | [Conditions] | [Expected Result] | [Evidence] |
| [SC-04] | [Description] | [Conditions] | [Expected Result] | [Evidence] |
| [SC-05] | [Description] | [Conditions] | [Expected Result] | [Evidence] |

Only scenarios approved in writing may be executed.

### 13.5 Example Deliverables

- Scenario Execution Record;
- Approved Evidence Package;
- Deviation Register;
- Preliminary Validation Summary;
- Known Limitations Record.

### 13.6 Example Acceptance Criteria

Milestone 4 may be accepted when:

- approved executable scenarios are completed or classified;
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

A failed, blocked, or inconclusive scenario does not automatically mean that Provider failed to perform the agreed validation work.

### 13.7 Commercial Field

**Milestone fee:** [Amount USD]  
**Payment trigger:** [Payment Trigger]  
**Refund treatment:** [Participant-Specific Refund Treatment]  

---

## 14. Milestone 5 — Final Analysis and Closure

### 14.1 Objective

Analyse the Pilot results and produce a final decision package.

### 14.2 Potential Provider Activities

Provider may:

- analyse approved evidence;
- compare results with Acceptance Criteria;
- identify verified behaviours;
- identify limitations;
- document material risks;
- prepare a final recommendation;
- conduct a findings session;
- provide agreed closure support.

### 14.3 Example Deliverables

- Final Pilot Report;
- Executive Engineering Summary;
- Acceptance Criteria Matrix;
- Risk and Limitation Register;
- Final Recommendation;
- Closure Record.

### 14.4 Final Recommendation

The recommendation may be:

- `GO`;
- `CONDITIONAL_GO`;
- `NO_GO`;
- `INCONCLUSIVE`.

### 14.5 Example Acceptance Criteria

Milestone 5 may be accepted when:

- the final report is delivered;
- results are mapped to Acceptance Criteria;
- material limitations are documented;
- the recommendation is stated;
- the findings session is completed or made available;
- closure materials are delivered.

Participant disagreement with a technically supported recommendation does not automatically constitute rejection.

### 14.6 Commercial Field

**Milestone fee:** [Amount USD]  
**Payment trigger:** [Payment Trigger]  
**Refund treatment:** [Participant-Specific Refund Treatment]  

---

## 15. Commercial Summary Template

This public template does not establish a Pilot price.

| Milestone | Amount | Payment Trigger |
|---|---:|---|
| Admission and discovery | [Amount USD] | [Payment Trigger] |
| Environment qualification | [Amount USD] | [Payment Trigger] |
| Controlled integration | [Amount USD] | [Payment Trigger] |
| Validation and evidence | [Amount USD] | [Payment Trigger] |
| Final analysis and closure | [Amount USD] | [Payment Trigger] |
| **Total** | **[Total Amount USD]** | |

Fees, taxes, expenses, payment timing, and currency must be negotiated privately.

---

## 16. Payment Terms Template

The private signed SOW should define:

- invoice schedule;
- payment currency;
- payment deadlines;
- approved payer;
- banking verification;
- applicable taxes;
- withholding obligations;
- reimbursable expenses;
- invoice-dispute procedure;
- consequences of late payment.

Provider should not change payment instructions solely through an informal message.

Any change should be independently verified through an approved commercial contact.

---

## 17. Deliverable Review

### 17.1 Review Period

**Review period:** [Number of Business Days]

### 17.2 Valid Rejection

A valid rejection should:

- identify the Deliverable;
- identify the unmet Acceptance Criterion;
- provide supporting evidence;
- remain within the agreed scope;
- be submitted during the review period.

### 17.3 Deemed Acceptance

The final SOW may provide that a Deliverable is accepted when:

- the review period expires without valid rejection;
- Participant begins a later milestone;
- Participant uses the Deliverable;
- Participant relies on it as completed;
- Provider corrects a valid non-conformity.

### 17.4 Correction

Provider should receive a reasonable opportunity to correct a valid non-conformity.

A newly introduced requirement requires Change Control.

---

## 18. Refund and Termination Template

### 18.1 Participant-Specific Treatment

All refund rights must be defined privately.

This public template creates no refund entitlement.

### 18.2 Potential Commercial Categories

The final SOW should distinguish:

- accepted milestone Fees;
- completed work;
- work in progress;
- reserved engineering capacity;
- approved expenses;
- third-party costs;
- non-cancellable commitments;
- unearned prepaid balances.

### 18.3 Participant Termination for Convenience

The private SOW may require Participant to pay:

- accepted milestone Fees;
- completed work;
- work in progress;
- reserved-capacity charges;
- approved expenses;
- non-cancellable commitments;
- closure costs.

Any remaining refundable balance should be determined through contractual reconciliation.

### 18.4 Provider Termination Without Participant Cause

The private SOW may provide that:

- accepted milestones remain payable;
- completed work remains payable;
- approved expenses remain payable;
- unearned prepaid amounts for unperformed future work may be refundable.

### 18.5 Participant Breach

The private SOW should address termination involving:

- non-payment;
- unauthorised access;
- reverse engineering;
- credential sharing;
- security violation;
- evidence tampering;
- confidentiality breach;
- legal prohibition.

### 18.6 Provider Breach

The private SOW should define:

- notice;
- evidence required;
- cure period;
- correction rights;
- termination rights;
- refund treatment;
- applicable liability limitations.

### 18.7 No Outcome-Based Refund

Unless expressly agreed otherwise, no refund should arise solely because:

- the final recommendation is `NO_GO`;
- the final recommendation is `CONDITIONAL_GO`;
- the final recommendation is `INCONCLUSIVE`;
- a scenario fails;
- the environment proves unsuitable;
- Participant changes strategy;
- production deployment requires more work;
- an unstated expectation is not achieved.

---

## 19. Participant Dependencies

| Dependency | Owner | Required Date | Status |
|---|---|---|---|
| Legal-entity verification | Participant | [Date] | [Status] |
| Authorised personnel | Participant | [Date] | [Status] |
| Environment documentation | Participant | [Date] | [Status] |
| Network access | Participant | [Date] | [Status] |
| Security access | Participant | [Date] | [Status] |
| Required infrastructure | Participant | [Date] | [Status] |
| Observability access | Participant | [Date] | [Status] |
| Evidence storage | Participant | [Date] | [Status] |
| Third-party approvals | Participant | [Date] | [Status] |
| Deliverable reviewers | Participant | [Date] | [Status] |

Failure to provide a dependency may result in:

- delay;
- rescheduling;
- additional cost;
- Change Order;
- suspension;
- scenario classification as `BLOCKED`;
- termination under the final agreements.

---

## 20. Provider Dependencies

| Dependency | Required Date | Status |
|---|---|---|
| Pilot technical lead | [Date] | [Status] |
| Approved evaluation boundary | [Date] | [Status] |
| Pilot Documentation | [Date] | [Status] |
| Scenario execution plan | [Date] | [Status] |
| Evidence plan | [Date] | [Status] |
| Reporting templates | [Date] | [Status] |

Provider obligations remain subject to:

- cleared payment;
- admission completion;
- Participant dependency completion;
- legal approval;
- compliance approval;
- absence of material security risk.

---

## 21. Security Requirements

The final SOW may require Participant to:

1. restrict access to Authorised Personnel;
2. use individual identities;
3. use appropriate multi-factor authentication;
4. protect credentials;
5. maintain access records;
6. maintain supported systems;
7. avoid shared accounts;
8. report suspected compromise;
9. prevent unauthorised copying;
10. prevent unauthorised recording;
11. prevent reverse engineering;
12. prevent access from unapproved locations;
13. revoke unnecessary access;
14. follow evidence-handling procedures;
15. cooperate with emergency suspension.

Participant-specific security controls must be negotiated privately.

---

## 22. Incident Notification

### 22.1 Participant Notification

Participant should notify Provider after discovering:

- suspected credential compromise;
- unauthorised access;
- unauthorised disclosure;
- evidence tampering;
- security-control failure;
- unapproved environment change;
- a relevant legal or regulatory inquiry.

### 22.2 Provider Notification

Provider should notify Participant after confirming an incident materially affecting Participant Confidential Information within Provider-controlled Pilot systems.

### 22.3 Private Notification Channels

**Provider security contact:** [Private Security Contact]  
**Participant security contact:** [Private Security Contact]  

Personal contact details should not appear in this public template.

---

## 23. Data Handling

### 23.1 Approved Data Template

The Pilot may process only data categories approved in the final SOW:

- [Approved Data Category];
- [Approved Data Category];
- synthetic or minimised test data;
- approved technical metadata;
- approved evidence records.

### 23.2 Prohibited Data

Unless expressly approved under a signed schedule, Participant must not provide:

- classified information;
- unnecessary production credentials;
- payment-card data;
- health data;
- biometric data;
- children’s data;
- government secrets;
- special-category personal data;
- data lacking lawful authorisation.

### 23.3 Retention Template

| Data Category | Retention Period | Deletion Method |
|---|---:|---|
| Pilot operational data | [Period] | [Method] |
| Evidence Output | [Period] | [Method] |
| Security records | [Period] | [Method] |
| Final reports | [Period] | [Method] |

Legal, security, backup, and dispute-preservation exceptions may apply.

---

## 24. Evidence Handling

Evidence Output should be:

- limited to approved categories;
- stored in approved locations;
- associated with appropriate context;
- protected against unauthorised modification;
- disclosed only to authorised recipients;
- interpreted within documented limitations.

Participant should not:

- remove material context;
- present partial evidence as a universal conclusion;
- alter results misleadingly;
- publish Evidence Output without approval;
- imply certification or endorsement.

---

## 25. Support Template

### 25.1 Included Support

The private SOW should define:

- discovery sessions;
- architecture sessions;
- integration sessions;
- validation-review sessions;
- final findings session;
- post-Pilot clarification hours.

### 25.2 Support Window

**Support days:** [Days]  
**Support hours:** [Hours]  
**Time zone:** [Time Zone]  

### 25.3 Response Targets

| Priority | Description | Target Initial Response |
|---|---|---:|
| P1 | Pilot-blocking issue | [Target] |
| P2 | Material degradation | [Target] |
| P3 | Non-blocking issue | [Target] |
| P4 | General question | [Target] |

Response targets are not production service-level guarantees unless expressly stated otherwise.

---

## 26. Change Control

A Change Order may be required for changes to:

- legal entity;
- use case;
- Authorised Environment;
- regions;
- workloads;
- scope;
- schedule;
- scenarios;
- Acceptance Criteria;
- Evidence Output;
- Deliverables;
- support;
- data categories;
- security requirements.

A Change Order should identify:

- requested change;
- reason;
- scope effect;
- schedule effect;
- commercial effect;
- security effect;
- required approvals.

No changed work begins before approval.

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

Where practical, the private procedure should identify:

- the reason;
- required remediation;
- restoration conditions;
- schedule impact.

Emergency suspension may occur without advance notice.

---

## 28. Public Communications

Without prior written approval, neither Party should publicly disclose:

- the existence of a participant-specific Pilot;
- Participant’s identity;
- private commercial terms;
- Pilot results;
- screenshots;
- reports;
- Evidence Output;
- Participant-specific architecture;
- limitations;
- security findings.

An approved public statement should distinguish the Pilot from:

- certification;
- production deployment;
- ownership;
- partnership;
- endorsement;
- regulatory approval.

---

## 29. Intellectual Property Confirmation

The private SOW should confirm that:

- VRP remains Protected Technology;
- the Pilot does not transfer ownership;
- payment does not grant source-code rights;
- payment does not grant reproduction rights;
- payment does not grant derivative-development rights;
- payment does not grant redistribution rights;
- payment does not grant permanent production rights;
- no right is granted by implication.

Participant retains its Participant Data and Participant Background Technology.

---

## 30. Pilot Closure

At closure, the Parties may be required to:

1. revoke or adjust Pilot access;
2. disable temporary credentials;
3. return or destroy Pilot Materials;
4. reconcile invoices;
5. calculate approved refunds, if any;
6. apply evidence-retention requirements;
7. deliver final paid Deliverables;
8. record the final recommendation;
9. confirm that no production rights continue unless separately agreed.

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

No future capacity, price, exclusivity, or availability is guaranteed.

---

## 32. Acceptance Criteria Matrix

The final SOW should contain measurable criteria.

| Criterion ID | Criterion | Measurement | Required Result | Evidence | Owner |
|---|---|---|---|---|---|
| [AC-01] | [Criterion] | [Method] | [Threshold] | [Evidence] | [Owner] |
| [AC-02] | [Criterion] | [Method] | [Threshold] | [Evidence] | [Owner] |
| [AC-03] | [Criterion] | [Method] | [Threshold] | [Evidence] | [Owner] |
| [AC-04] | [Criterion] | [Method] | [Threshold] | [Evidence] | [Owner] |
| [AC-05] | [Criterion] | [Method] | [Threshold] | [Evidence] | [Owner] |

No unstated expectation becomes an Acceptance Criterion.

---

## 33. Risk Register Template

| Risk ID | Risk | Owner | Probability | Impact | Mitigation |
|---|---|---|---|---|---|
| [R-01] | Participant environment delay | Participant | [Level] | [Level] | [Action] |
| [R-02] | Third-party dependency failure | [Owner] | [Level] | [Level] | [Action] |
| [R-03] | Access approval delay | Participant | [Level] | [Level] | [Action] |
| [R-04] | Material scope change | Joint | [Level] | [Level] | [Action] |
| [R-05] | Evidence limitation | Joint | [Level] | [Level] | [Action] |
| [R-06] | Security suspension | Joint | [Level] | [Level] | [Action] |

The risk register does not transfer responsibility unless the signed agreement expressly states otherwise.

---

## 34. Assumptions Template

The final SOW may assume that:

- Participant information is accurate;
- the approved use case is lawful;
- required access can be provided;
- the environment remains materially stable;
- Participant personnel remain available;
- required infrastructure remains operational;
- third-party services remain available;
- approved data may be processed lawfully;
- no prohibited jurisdiction is involved;
- payments are received on time;
- no material security incident prevents performance.

If an assumption becomes false, Provider may require a Change Order, suspend work, or exercise contractual rights.

---

## 35. Special Terms

Participant-specific special terms:

> [Insert negotiated special terms or state “None.”]

No special term transfers Protected Technology unless it expressly identifies the relevant rights and is approved by an authorised Provider representative.

---

## 36. Completion Checklist

Before a private SOW is signed, the Parties should confirm:

- [ ] legal entities are identified;
- [ ] all placeholders are completed;
- [ ] Authorised Environment is defined;
- [ ] Authorised Personnel are identified;
- [ ] scope is approved;
- [ ] exclusions are approved;
- [ ] scenarios are defined;
- [ ] Acceptance Criteria are measurable;
- [ ] evidence requirements are defined;
- [ ] data categories are approved;
- [ ] commercial amounts are approved;
- [ ] payment schedule is approved;
- [ ] refund treatment is approved;
- [ ] tax treatment is reviewed;
- [ ] security requirements are approved;
- [ ] legal review is complete;
- [ ] signatories have authority.

---

## 37. Signature Template

This signature section is illustrative only.

No public or incomplete copy creates a binding engagement.

### Provider

**Legal entity:** [Provider Legal Entity]  
**Name:** [Authorised Representative]  
**Title:** [Title]  
**Signature:** ______________________________  
**Date:** ______________________________  

### Participant

**Legal entity:** [Participant Legal Entity]  
**Name:** [Authorised Representative]  
**Title:** [Title]  
**Signature:** ______________________________  
**Date:** ______________________________  

---

# Appendix A — Deliverable Register Template

| Deliverable | Description | Target Date | Review Period | Status |
|---|---|---:|---:|---|
| [D1.1] | Pilot Discovery Record | [Date] | [Period] | [Status] |
| [D1.2] | Confirmed Use-Case Description | [Date] | [Period] | [Status] |
| [D1.3] | Initial Scope and Boundary Record | [Date] | [Period] | [Status] |
| [D1.4] | Risk and Dependency Register | [Date] | [Period] | [Status] |
| [D1.5] | Initial Scenario Matrix | [Date] | [Period] | [Status] |
| [D2.1] | Environment Qualification Report | [Date] | [Period] | [Status] |
| [D2.2] | Pilot Architecture Summary | [Date] | [Period] | [Status] |
| [D2.3] | Responsibility Assignment Matrix | [Date] | [Period] | [Status] |
| [D2.4] | Final Scenario Matrix | [Date] | [Period] | [Status] |
| [D2.5] | Final Acceptance Criteria | [Date] | [Period] | [Status] |
| [D2.6] | Evidence Collection Plan | [Date] | [Period] | [Status] |
| [D3.1] | Integration Record | [Date] | [Period] | [Status] |
| [D3.2] | Deployment Boundary Record | [Date] | [Period] | [Status] |
| [D3.3] | Baseline Verification Record | [Date] | [Period] | [Status] |
| [D3.4] | Integration Findings Register | [Date] | [Period] | [Status] |
| [D3.5] | Validation Readiness Decision | [Date] | [Period] | [Status] |
| [D4.1] | Scenario Execution Record | [Date] | [Period] | [Status] |
| [D4.2] | Approved Evidence Package | [Date] | [Period] | [Status] |
| [D4.3] | Deviation Register | [Date] | [Period] | [Status] |
| [D4.4] | Preliminary Validation Summary | [Date] | [Period] | [Status] |
| [D4.5] | Known Limitations Record | [Date] | [Period] | [Status] |
| [D5.1] | Final Pilot Report | [Date] | [Period] | [Status] |
| [D5.2] | Executive Engineering Summary | [Date] | [Period] | [Status] |
| [D5.3] | Acceptance Criteria Matrix | [Date] | [Period] | [Status] |
| [D5.4] | Risk and Limitation Register | [Date] | [Period] | [Status] |
| [D5.5] | Final Recommendation | [Date] | [Period] | [Status] |
| [D5.6] | Closure Record | [Date] | [Period] | [Status] |

---

# Appendix B — Change Order Template

**Change Order reference:** [Reference]  
**Requested by:** [Party]  
**Request date:** [Date]  

## Requested Change

[Description]

## Reason

[Description]

## Scope Impact

[Description]

## Schedule Impact

[Description]

## Commercial Impact

[Amount or “None”]

## Security and Data Impact

[Description]

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

# Appendix C — Final Pilot Decision Template

**Pilot reference:** [Reference]  
**Decision date:** [Date]  

## Final Recommendation

Select one:

- [ ] `GO`
- [ ] `CONDITIONAL_GO`
- [ ] `NO_GO`
- [ ] `INCONCLUSIVE`

## Evidence Basis

[Summary]

## Verified Capabilities

[Summary]

## Known Limitations

[Summary]

## Required Conditions

[Summary]

## Recommended Next Step

[Summary]

## Technical Review

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

## Final Statement

This public template illustrates how a controlled VRP Pilot may be structured.

It establishes no price.

It reserves no capacity.

It accepts no participant.

It transfers no Protected Technology.

Every actual Pilot requires private qualification, participant-specific agreements, measurable Acceptance Criteria, and authorised signatures.

**Continuity requires verification.**