VRP Pilot Support

Purpose

This document defines the support model for a VRP pilot.

The objective is to make pilot support:

- bounded;
- attributable;
- operationally clear;
- compatible with the protected runtime boundary;
- responsive to blocking failures;
- resistant to undocumented scope expansion;
- focused on reproducible evidence and validated outcomes.

Support exists to help the participant deploy, operate, validate, and close the approved pilot.

Support does not provide unrestricted access to the protected VRP runtime or its internal implementation.

---

Support Principles

The VRP pilot support model follows these principles:

1. Support is limited to the approved pilot scope.
2. Every support request must be attributable to a pilot and environment.
3. Blocking issues receive priority over informational requests.
4. Reproducible evidence is preferred over informal descriptions.
5. Protected runtime internals remain outside the participant support boundary.
6. Security-sensitive information must not be shared through public channels.
7. Configuration changes must remain auditable.
8. Support actions must not silently alter acceptance criteria.
9. Pilot results remain valid only when support interventions are documented.
10. Emergency actions must preserve evidence where possible.

---

Support Scope

Support may cover:

- pilot onboarding;
- environment readiness;
- toolkit installation;
- configuration validation;
- health-check failures;
- deployment flow questions;
- runtime activation failures;
- approved scenario execution;
- evidence collection;
- evidence validation;
- report generation;
- final acceptance review;
- pilot closure;
- security incident coordination;
- interpretation of public validation outputs.

Support does not automatically include:

- unrestricted architecture consulting;
- participant application redesign;
- participant production operations;
- unrelated network troubleshooting;
- third-party product support;
- custom runtime development;
- reverse engineering;
- protected algorithm disclosure;
- access to private source code;
- regulatory certification;
- emergency production support outside the pilot agreement.

---

Support Boundary

The support boundary is divided into three layers.

Participant-Controlled Environment
            |
            v
Public Pilot Support Boundary
            |
            v
Protected Runtime Operations

Participant-Controlled Environment

The participant remains responsible for:

- local infrastructure;
- host operating systems;
- firewall policy;
- routing configuration;
- participant credentials;
- participant application behavior;
- local monitoring;
- third-party dependencies;
- failure-injection safety.

Public Pilot Support Boundary

Support may inspect:

- public configuration;
- health-check output;
- validator output;
- redacted logs;
- execution identifiers;
- scenario results;
- evidence manifests;
- integrity hashes;
- deployment summaries;
- final reports.

Protected Runtime Operations

Protected runtime support remains limited to authorized operators.

The participant must not expect support to expose:

- protected runtime source code;
- internal decision traces;
- private algorithms;
- internal authority calculations;
- secret material;
- runtime memory;
- proprietary recovery state;
- protected implementation details.

---

Support Roles

Pilot Owner

Responsible for:

- approving the support model;
- approving escalations;
- approving scope changes;
- resolving business-level blockers;
- approving the final verdict;
- approving pilot closure.

Participant Technical Contact

Responsible for:

- submitting support requests;
- providing accurate environment information;
- preserving relevant logs;
- reproducing participant-side failures;
- coordinating local infrastructure changes;
- confirming remediation results.

Pilot Operator

Responsible for:

- protected runtime operational review;
- runtime identity verification;
- authorization state;
- runtime activation failures;
- protected runtime incidents;
- evidence export readiness;
- runtime shutdown.

Validator

Responsible for:

- evidence validation questions;
- integrity failures;
- manifest mismatches;
- duplicate detection;
- altered artifact rejection;
- validation result interpretation.

---

Support Channels

Support channels should be classified by sensitivity.

Public Channel

Suitable for:

- repository usage questions;
- public documentation clarification;
- non-sensitive installation issues;
- generic validator behavior;
- public release information.

Do not use a public channel for:

- credentials;
- private environment details;
- participant data;
- unredacted logs;
- protected runtime artifacts;
- active security incidents;
- vulnerability details;
- private evidence packages.

Private Pilot Channel

Suitable for:

- participant-specific deployment questions;
- environment details;
- redacted logs;
- evidence references;
- configuration review;
- timeline coordination;
- acceptance review;
- operational incidents.

Security Channel

Required for:

- leaked credentials;
- suspected runtime compromise;
- unauthorized access;
- evidence tampering;
- vulnerability reports;
- participant data exposure;
- suspected reverse engineering;
- private runtime artifact exposure.

Security incidents must not be reported through public channels.

---

Support Request Requirements

Every support request should include:

PILOT_ID=
ENVIRONMENT_ID=
REQUEST_ID=
REQUESTED_AT=
REQUESTED_BY=
SUPPORT_CATEGORY=
CURRENT_PHASE=
SEVERITY=
SUMMARY=

Where relevant, include:

EXECUTION_ID=
SCENARIO_ID=
CONFIGURATION_SHA256=
RUNTIME_RELEASE_ID=
PILOT_KIT_VERSION=
VALIDATOR_VERSION=

The request should describe:

- what operation was attempted;
- what result was expected;
- what result was observed;
- whether the issue is reproducible;
- whether the pilot is blocked;
- whether evidence was preserved;
- what changed before the issue appeared.

---

Support Categories

Permitted support categories:

ONBOARDING
ENVIRONMENT
ACCESS
INSTALLATION
CONFIGURATION
HEALTH_CHECK
RUNTIME_ACTIVATION
SCENARIO_EXECUTION
NETWORK
EVIDENCE_COLLECTION
EVIDENCE_VALIDATION
REPORT_GENERATION
SECURITY
CLOSURE
OTHER

Use the narrowest applicable category.

---

Severity Levels

SEV-1 — Critical

Use when:

- protected runtime integrity may be compromised;
- participant data may be exposed;
- pilot credentials are leaked;
- evidence integrity is compromised;
- unauthorized access is detected;
- the environment is unsafe;
- the pilot must stop immediately.

Expected handling:

PILOT_EXECUTION=STOPPED
EVIDENCE_PRESERVATION=REQUIRED
ESCALATION=IMMEDIATE

SEV-2 — Blocking

Use when:

- a mandatory pilot phase cannot continue;
- runtime activation fails;
- required evidence cannot be produced;
- validator rejects required artifacts;
- mandatory scenarios cannot be executed;
- configuration validation fails with no known workaround.

Expected handling:

PILOT_STATUS=BLOCKED
ESCALATION=HIGH

SEV-3 — Degraded

Use when:

- a non-mandatory feature is unavailable;
- warnings affect interpretation;
- a scenario is delayed but alternatives remain;
- tooling behavior is degraded;
- a workaround exists.

Expected handling:

PILOT_STATUS=DEGRADED
ESCALATION=NORMAL

SEV-4 — Informational

Use for:

- documentation questions;
- clarification requests;
- non-blocking guidance;
- report formatting;
- schedule coordination;
- public tooling questions.

Expected handling:

PILOT_STATUS=ACTIVE
ESCALATION=NONE

---

Support Request Template

REQUEST_ID=
PILOT_ID=
ENVIRONMENT_ID=
REQUESTED_AT=
REQUESTED_BY=
SUPPORT_CATEGORY=
SEVERITY=
CURRENT_PHASE=
EXECUTION_ID=
SCENARIO_ID=
CONFIGURATION_SHA256=
RUNTIME_RELEASE_ID=
SUMMARY=
EXPECTED_RESULT=
OBSERVED_RESULT=
REPRODUCIBLE=
PILOT_BLOCKED=
EVIDENCE_PRESERVED=
RECENT_CHANGES=
ATTACHMENTS=

---

Evidence Required for Support

Depending on the issue, support may require:

- health-check output;
- validator output;
- deployment summary;
- environment summary;
- redacted runtime logs;
- configuration hash;
- toolkit version;
- runtime release identifier;
- execution identifier;
- scenario identifier;
- evidence manifest;
- file hashes;
- failure timeline;
- screenshots with sensitive data removed.

Support should not request:

- plaintext credentials;
- private keys;
- unrestricted packet payloads;
- participant secrets;
- protected runtime binaries outside approved handling;
- private source code;
- unrelated production data.

---

Log Handling

Logs submitted for support must be:

- relevant to the issue;
- time-bounded;
- redacted;
- attributable to an environment;
- attributable to an execution where possible;
- preserved with original timestamps.

Logs must not contain:

- passwords;
- tokens;
- private keys;
- recovery codes;
- unrelated participant data;
- protected implementation details;
- unrestricted payload content.

Recommended metadata:

LOG_SOURCE=
LOG_START_TIME=
LOG_END_TIME=
EXECUTION_ID=
REDACTION_APPLIED=
LOG_SHA256=

---

Configuration Support

Configuration support may verify:

- syntax;
- required fields;
- path validity;
- environment identity;
- pilot identity;
- approved scenario identifiers;
- public integration settings;
- secret references;
- evidence output settings;
- report output settings.

Support must not request secret values.

Configuration review should use:

- redacted configuration;
- configuration version;
- configuration hash;
- documented secret source names.

A configuration change proposed through support must result in:

1. a new configuration version;
2. a new configuration hash;
3. a recorded reason;
4. revalidation;
5. a new execution group where required.

---

Runtime Activation Support

When runtime activation fails, the support request should include:

RUNTIME_RELEASE_ID=
RUNTIME_INSTANCE_ID=
ACTIVATION_STARTED_AT=
ACTIVATION_FAILED_AT=
FAILED_STAGE=
AUTHORIZATION_STATE=
CERTIFICATE_STATE=
CONFIGURATION_SHA256=
HEALTH_CHECK_RESULT=

Support should verify:

- runtime identity;
- authorization state;
- certificate validity;
- configuration identity;
- environment identity;
- evidence path readiness;
- integration boundary availability.

Support must not recommend disabling:

- certificate verification;
- authorization checks;
- signature validation;
- replay protection;
- evidence integrity checks;
- runtime identity validation.

---

Scenario Execution Support

Scenario support should remain bounded by the approved test plan.

The request should include:

SCENARIO_ID=
EXECUTION_ID=
EXPECTED_RESULT=
OBSERVED_RESULT=
FAILURE_INJECTION=
FAILURE_STARTED_AT=
FAILURE_ENDED_AT=
SCENARIO_RESULT=

Support may help determine whether the scenario result is:

PASSED
FAILED
INCONCLUSIVE
NOT_EXECUTED

Support must not mark a scenario as passed without evidence.

A retry must use a new execution identifier.

---

Evidence Collection Support

Evidence collection support may verify:

- required directories;
- artifact naming;
- manifest completeness;
- execution references;
- configuration references;
- runtime version references;
- redaction state;
- archive creation;
- file hashes.

Recommended support record:

EVIDENCE_PACKAGE_ID=
ARTIFACT_COUNT=
MANIFEST_PRESENT=
HASHES_PRESENT=
REDACTION_COMPLETED=
COLLECTION_RESULT=

Possible collection results:

COMPLETED
INCOMPLETE
FAILED

---

Evidence Validation Support

When evidence validation fails, include:

EVIDENCE_PACKAGE_ID=
EVIDENCE_PACKAGE_SHA256=
VALIDATOR_VERSION=
VALIDATION_RESULT=
FAILED_ARTIFACT=
FAILURE_REASON=

Common validation failures include:

- missing artifact;
- hash mismatch;
- invalid manifest;
- unknown execution identifier;
- configuration mismatch;
- runtime version mismatch;
- duplicate evidence;
- altered artifact;
- unsupported schema;
- incomplete mandatory scenario coverage.

Validation failures must not be bypassed manually without a documented exception and a new validation result.

---

Report Support

Report support may help with:

- template completion;
- evidence references;
- acceptance criteria mapping;
- limitation wording;
- deviation recording;
- incident recording;
- verdict consistency;
- integrity hash placement.

Support must not:

- remove failed results;
- hide incidents;
- hide limitations;
- convert inconclusive results into passed results;
- claim unsupported properties;
- expand the validated scope.

The final report must remain attributable to validated evidence.

---

Security Incident Support

A security incident includes:

- credential exposure;
- unauthorized access;
- evidence tampering;
- runtime identity mismatch;
- protected artifact exposure;
- participant data exposure;
- unapproved runtime modification;
- suspected reverse engineering;
- compromise of a pilot host.

Immediate actions:

1. Stop affected pilot operations
2. Preserve relevant evidence
3. Isolate affected systems
4. Revoke or rotate credentials
5. Record incident timestamps
6. Identify affected executions
7. Notify the designated security contact
8. Determine result validity impact
9. Resume only after explicit approval

Required incident record:

INCIDENT_ID=
PILOT_ID=
DETECTED_AT=
REPORTED_AT=
SEVERITY=
AFFECTED_COMPONENTS=
AFFECTED_EXECUTIONS=
CONTAINMENT_ACTION=
CREDENTIAL_ROTATION=
RESULT_VALIDITY_IMPACT=
STATUS=

---

Escalation Flow

The standard escalation flow is:

Participant Technical Contact
            |
            v
Pilot Support
            |
            v
Pilot Operator or Validator
            |
            v
Pilot Owner
            |
            v
Security or Executive Escalation

Escalation should occur when:

- severity increases;
- the issue blocks a mandatory phase;
- the issue affects evidence integrity;
- the issue affects protected runtime integrity;
- scope approval is required;
- a security exception is requested;
- the final verdict may change;
- pilot termination is being considered.

---

Escalation Record

ESCALATION_ID=
REQUEST_ID=
ESCALATED_AT=
ESCALATED_BY=
ESCALATED_TO=
REASON=
DECISION_REQUIRED=
DECISION=
DECIDED_AT=

---

Support Response States

Every support request should have one current state.

OPEN
ACKNOWLEDGED
INVESTIGATING
WAITING_FOR_PARTICIPANT
WAITING_FOR_OPERATOR
WAITING_FOR_VALIDATOR
BLOCKED
RESOLVED
CLOSED
REJECTED

A request must not be marked as resolved until:

- the issue is understood;
- the remediation is documented;
- the participant confirms the result where applicable;
- affected tests are re-run where required;
- evidence validity is reassessed.

---

Workaround Policy

A workaround may be accepted only when:

- it does not weaken required security controls;
- it does not bypass evidence validation;
- it does not alter protected runtime behavior;
- it is documented;
- it is approved by the responsible owner;
- its impact is included in the final report.

A workaround must not include:

- disabling certificate validation;
- bypassing authorization;
- ignoring hash mismatches;
- reusing execution identifiers;
- editing evidence after validation;
- hiding failed scenarios;
- replacing mandatory checks with informal observation.

---

Support and Configuration Drift

Support actions may cause configuration drift.

Any support action that changes:

- configuration;
- runtime version;
- toolkit version;
- network topology;
- environment identity;
- scenario parameters;
- evidence policy;

must be recorded.

Required change record:

SUPPORT_CHANGE_ID=
REQUEST_ID=
CHANGE_DESCRIPTION=
PREVIOUS_STATE=
NEW_STATE=
APPROVED_BY=
CONFIGURATION_SHA256=
NEW_EXECUTION_GROUP_REQUIRED=

---

Support and Result Validity

Support intervention may affect result validity.

A result may require re-execution when support changes:

- active configuration;
- runtime release;
- network topology;
- authorization;
- participant application behavior;
- failure-injection method;
- evidence collection behavior.

Validity determination:

RESULT_VALIDITY=UNCHANGED
RESULT_VALIDITY=REQUIRES_RETEST
RESULT_VALIDITY=INVALIDATED
RESULT_VALIDITY=INCONCLUSIVE

---

Support Windows

The pilot agreement should define:

SUPPORT_START_DATE=
SUPPORT_END_DATE=
SUPPORT_TIMEZONE=
SUPPORTED_DAYS=
SUPPORTED_HOURS=
AFTER_HOURS_SUPPORT=
EMERGENCY_CONTACT_METHOD=

Support availability must not be assumed outside the documented window.

Emergency support may require a separate agreement.

---

Response Targets

Response targets should be documented by severity.

Example:

Severity| Initial acknowledgement| Update cadence| Target handling
SEV-1| As defined by pilot agreement| Frequent until contained| Immediate containment
SEV-2| As defined by pilot agreement| Regular until unblocked| Restore mandatory flow
SEV-3| Normal support window| As needed| Workaround or remediation
SEV-4| Normal support window| As needed| Clarification or guidance

These targets are operational goals, not guarantees, unless explicitly included in a signed agreement.

---

Participant Responsibilities

The participant must:

- provide accurate environment information;
- maintain secure local infrastructure;
- preserve logs and evidence;
- avoid unapproved modifications;
- report incidents promptly;
- use new execution identifiers for retries;
- follow the approved test plan;
- protect credentials;
- redact sensitive information;
- verify local changes before resuming;
- confirm support resolutions.

The participant must not:

- bypass security checks;
- alter validated evidence;
- reuse expired credentials;
- run unapproved destructive tests;
- publish private artifacts;
- expose protected runtime components;
- claim unsupported pilot results.

---

Pilot Operator Responsibilities

The pilot operator must:

- preserve the protected runtime boundary;
- verify runtime identity;
- maintain authorization controls;
- avoid exposing private implementation details;
- investigate protected runtime failures;
- coordinate evidence export;
- document operator interventions;
- stop runtime operations when integrity cannot be established.

---

Validator Responsibilities

The validator must:

- apply documented validation rules;
- reject malformed evidence;
- reject altered evidence;
- detect duplicate evidence;
- verify execution consistency;
- verify configuration references;
- verify integrity hashes;
- provide explicit validation results;
- avoid inferring unsupported runtime behavior.

---

Support Closure

A support request may be closed when:

ROOT_CAUSE_IDENTIFIED=YES
REMEDIATION_DOCUMENTED=YES
PARTICIPANT_CONFIRMED=YES
RETEST_COMPLETED=
EVIDENCE_VALIDITY_REASSESSED=YES
FINAL_STATUS=RESOLVED

If the issue cannot be resolved:

FINAL_STATUS=UNRESOLVED

The request must then document:

- remaining impact;
- affected scenarios;
- affected acceptance criteria;
- whether the pilot may continue;
- whether the final verdict is affected.

---

Pilot Support Completion

Pilot support is complete when:

- all blocking requests are resolved or formally accepted;
- all security incidents are closed or documented;
- final evidence is validated;
- the final report is complete;
- temporary access is revoked;
- support closure is recorded.

Final support state:

PILOT_SUPPORT=COMPLETED
OPEN_BLOCKING_REQUESTS=0
OPEN_CRITICAL_INCIDENTS=0
PILOT_CLOSURE=COMPLETED

---

Final Support Principle

The VRP pilot support model follows one primary rule:

«Support may clarify, validate, and restore the approved pilot flow, but it must not weaken the protected runtime boundary or convert unsupported claims into accepted results.»

Support exists to preserve:

- operational clarity;
- evidence integrity;
- security boundaries;
- reproducibility;
- bounded conclusions;
- participant accountability.

Final support boundary:

PUBLIC_SUPPORT_BOUNDARY=AVAILABLE
PROTECTED_IMPLEMENTATION_ACCESS=DENIED
EVIDENCE_BASED_RESOLUTION=REQUIRED