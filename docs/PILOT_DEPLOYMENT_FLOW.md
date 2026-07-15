VRP Pilot Deployment Flow

Purpose

This document defines the standard deployment sequence for a VRP pilot environment.

The deployment flow is designed to ensure that every pilot is:

- scoped before activation;
- reproducible;
- isolated from unrelated systems;
- attributable to a specific configuration;
- validated through externally observable behavior;
- supported by integrity-verifiable evidence;
- closed without leaving uncontrolled access or runtime state.

This document describes the public operational boundary only.

It does not expose:

- protected runtime algorithms;
- internal authority calculations;
- recovery mathematics;
- private source code;
- proprietary decision logic;
- protected runtime memory structures;
- private cryptographic material.

---

Deployment Principles

Every pilot deployment must preserve the following principles:

1. No runtime activation before scope approval.
2. No execution before environment validation.
3. No accepted result without supporting evidence.
4. No configuration change without a new recorded configuration identity.
5. No silent downgrade when authentication, integrity, or authorization fails.
6. No mixing of results produced by incompatible runtime or configuration versions.
7. No final acceptance before evidence validation.
8. No pilot closure without access revocation and artifact archival.

---

Logical Deployment Boundary

Participant Application
        |
        v
Participant Integration Layer
        |
        v
Public Pilot Boundary
        |
        v
Protected VRP Runtime
        |
        v
Evidence Export Boundary
        |
        v
Independent Validation
        |
        v
Final Pilot Report

The participant interacts only with documented integration interfaces.

The protected runtime remains outside the participant trust boundary.

Validation is based on exported behavior, evidence, integrity metadata, and final verdicts.

---

Deployment Phases

The standard deployment consists of ten phases:

Phase 1  — Pilot Scope Confirmation
Phase 2  — Environment Preparation
Phase 3  — Access Provisioning
Phase 4  — Toolkit Installation
Phase 5  — Configuration
Phase 6  — Pre-Deployment Validation
Phase 7  — Runtime Activation
Phase 8  — Scenario Execution
Phase 9  — Evidence Validation
Phase 10 — Acceptance and Closure

A mandatory phase must not be skipped.

A failed mandatory phase blocks transition to the next deployment state.

---

Phase 1 — Pilot Scope Confirmation

Objective

Define what will be deployed, where it will run, what will be evaluated, and which activities remain outside the pilot boundary.

Required Scope Information

The following information must be recorded:

PILOT_ID=
PARTICIPANT=
PILOT_OWNER=
TECHNICAL_CONTACT=
ENVIRONMENT_ID=
DEPLOYMENT_MODEL=
TARGET_APPLICATION=
START_DATE=
TARGET_END_DATE=
TEST_SCOPE=
OUT_OF_SCOPE=
ACCEPTANCE_CRITERIA=
EVIDENCE_RETENTION_POLICY=
ROLLBACK_REQUIREMENTS=

Scope Questions

The deployment owner must confirm:

- Which application or service is being evaluated?
- Which runtime environment will be used?
- Is the environment isolated from production?
- Which transport paths are included?
- Which failure scenarios are authorized?
- Which data categories may be processed?
- Which evidence may leave the environment?
- Which conditions define pilot success?
- Which conditions require pilot termination?
- Who may approve deviations from the test plan?

Out-of-Scope Examples

The following should be explicitly marked as out of scope unless separately approved:

- unrestricted production traffic;
- unrelated participant infrastructure;
- third-party infrastructure;
- destructive denial-of-service testing;
- reverse engineering;
- protected runtime inspection;
- unauthorized fuzzing;
- public disclosure of private pilot artifacts;
- regulatory certification;
- claims beyond the executed test matrix.

Exit Criteria

Phase 1 is complete when:

PILOT_SCOPE_DEFINED=YES
ACCEPTANCE_CRITERIA_DEFINED=YES
OUT_OF_SCOPE_DEFINED=YES
PILOT_OWNER_ASSIGNED=YES
TECHNICAL_CONTACT_ASSIGNED=YES

Final phase result:

SCOPE_CONFIRMATION=PASSED

---

Phase 2 — Environment Preparation

Objective

Prepare a controlled host and network environment for the pilot.

Minimum Host Requirements

The target host should provide:

- supported operating system;
- synchronized system time;
- sufficient CPU and memory;
- sufficient disk space;
- restricted administrative access;
- required network interfaces;
- controlled firewall configuration;
- dedicated evidence storage;
- documented rollback capability.

Recommended Directory Layout

/opt/vrp-pilot/
├── bin/
├── config/
├── evidence/
├── logs/
├── reports/
├── runtime/
└── tmp/

An alternative layout may be used.

The actual paths must be recorded in the deployment summary.

Recommended Environment Record

HOSTNAME=
OPERATING_SYSTEM=
OPERATING_SYSTEM_VERSION=
CPU_ARCHITECTURE=
CPU_COUNT=
MEMORY_TOTAL=
DISK_SPACE_AVAILABLE=
TIME_SYNCHRONIZED=
VIRTUALIZATION=
CONTAINER_RUNTIME=
PUBLIC_NETWORK_EXPOSURE=

Network Preparation

The participant should document:

CLIENT_NETWORK=
SERVER_NETWORK=
TEST_SUBNET=
ALLOWED_PORTS=
TRANSPORT_PROTOCOLS=
NAT_BOUNDARIES=
FIREWALL_RULES=
ROUTING_DEPENDENCIES=
PROXY_DEPENDENCIES=
FAILURE_INJECTION_POINTS=

Isolation Requirements

Where practical, the pilot should use:

- a dedicated VM;
- a dedicated cloud project;
- an isolated VLAN;
- a network namespace;
- a dedicated test subnet;
- separate pilot credentials;
- explicit firewall allowlists.

Failure injection must not affect unrelated systems.

Environment Checks

Before continuing, verify:

OPERATING_SYSTEM=SUPPORTED
SYSTEM_TIME=SYNCHRONIZED
CPU_CAPACITY=SUFFICIENT
MEMORY_CAPACITY=SUFFICIENT
DISK_CAPACITY=SUFFICIENT
NETWORK_CONNECTIVITY=AVAILABLE
EVIDENCE_DIRECTORY=WRITABLE
ROLLBACK_PATH=AVAILABLE

Exit Criteria

Phase 2 is complete when:

HOST_READY=YES
NETWORK_READY=YES
DIRECTORIES_READY=YES
ISOLATION_CONFIRMED=YES
ROLLBACK_DEFINED=YES

Final phase result:

ENVIRONMENT_PREPARATION=PASSED

---

Phase 3 — Access Provisioning

Objective

Provision the identities, credentials, certificates, and permissions required by the pilot.

Possible Identities

Depending on deployment architecture, the pilot may require:

- participant operator identity;
- pilot service identity;
- validator identity;
- evidence collector identity;
- protected runtime identity;
- reporting identity.

Credential Rules

Credentials must be:

- specific to the pilot;
- limited to required operations;
- stored outside the repository;
- revocable;
- rotated after suspected exposure;
- protected from logs and shell history;
- associated with an expiration time where supported.

Credentials must not appear in:

- Markdown files;
- screenshots;
- source code;
- configuration examples;
- repository history;
- test reports;
- public evidence bundles.

Provisioning Metadata

Only non-secret metadata should be recorded:

PILOT_ID=
ENVIRONMENT_ID=
SERVICE_ID=
VALIDATOR_ID=
CERTIFICATE_ID=
AUTHORIZATION_VALID_FROM=
AUTHORIZATION_VALID_UNTIL=
CREDENTIAL_STORAGE_METHOD=

Required Verification

SERVICE_IDENTITY=VERIFIED
VALIDATOR_IDENTITY=VERIFIED
RUNTIME_IDENTITY=VERIFIED
AUTHORIZATION=ACTIVE
CERTIFICATE_CHAIN=VALID
CREDENTIAL_EXPIRATION=VALID

Blocking Conditions

Deployment must stop when:

- authorization is missing;
- authorization has expired;
- certificate validation fails;
- runtime identity does not match;
- required secrets are unavailable;
- credentials are stored in an unapproved location.

Exit Criteria

Phase 3 is complete when:

IDENTITIES_PROVISIONED=YES
AUTHORIZATION_ACTIVE=YES
CERTIFICATES_VALID=YES
SECRETS_PROTECTED=YES

Final phase result:

ACCESS_PROVISIONING=PASSED

---

Phase 4 — Toolkit Installation

Objective

Install an approved version of the VRP Pilot Toolkit and verify its origin and integrity.

Installation Record

Record:

REPOSITORY=
RELEASE=
COMMIT=
SOURCE_LOCATION=
INSTALLATION_DATE=
INSTALLED_BY=

Source Verification

The toolkit must be obtained from an approved source.

The participant should verify:

- repository origin;
- selected branch, tag, or release;
- commit identity;
- provided checksums;
- release signatures where available.

Git Installation Example

git clone <approved-repository-url>
cd vrp-pilot-kit
git checkout <approved-tag-or-commit>

Packaged Release Example

sha256sum -c checksums.txt
tar -xf vrp-pilot-kit-<version>.tar.gz
cd vrp-pilot-kit-<version>

Expected Toolkit Components

The repository may contain:

cmd/pilot-health-check
cmd/pilot-validator
cmd/pilot-report
internal/pilotapi
internal/checks
internal/report
scripts/prepare_environment.sh
scripts/collect_evidence.sh

Some components may not yet exist in early public versions.

The deployment must use only components included in the approved release.

Script Review

Before execution, scripts must be reviewed for:

- required privileges;
- created directories;
- modified files;
- network access;
- evidence output paths;
- temporary file handling;
- cleanup behavior;
- possible secret exposure.

Installation Checks

REPOSITORY_ORIGIN=VERIFIED
RELEASE_ID=RECORDED
COMMIT_ID=RECORDED
TOOLKIT_HASH=VERIFIED
SCRIPTS_REVIEWED=YES
UNAPPROVED_MODIFICATIONS=NO

Exit Criteria

Phase 4 is complete when:

TOOLKIT_INSTALLED=YES
TOOLKIT_VERSION_VERIFIED=YES
TOOLKIT_INTEGRITY_VERIFIED=YES

Final phase result:

TOOLKIT_INSTALLATION=PASSED

---

Phase 5 — Configuration

Objective

Create a pilot-specific configuration that is attributable, reproducible, and free of embedded secrets.

Configuration Layers

Configuration should be separated into:

public integration configuration
participant environment configuration
secret references
scenario configuration
evidence export configuration
report configuration

Example Public Configuration

pilot_id: pilot-example-001
environment_id: lab-example-01
deployment_mode: isolated
validator_enabled: true
evidence_directory: /opt/vrp-pilot/evidence
report_directory: /opt/vrp-pilot/reports

Secret References

Secrets should be referenced indirectly:

credential_source: environment
certificate_source: file
private_key_source: secret_store

Secret values must not be embedded into the public configuration file.

Configuration Validation

The following checks should be performed:

CONFIGURATION_SYNTAX=VALID
MANDATORY_FIELDS=PRESENT
PILOT_ID=MATCHED
ENVIRONMENT_ID=MATCHED
SECRETS_EMBEDDED=NO
OUTPUT_PATHS=WRITABLE
NETWORK_TARGETS=APPROVED
SCENARIOS=APPROVED

Configuration Identity

The active configuration must have:

- a version;
- a cryptographic hash;
- an activation timestamp;
- an approval record.

Example:

CONFIGURATION_VERSION=1
CONFIGURATION_SHA256=
CONFIGURATION_APPROVED_AT=

Configuration Freeze

Once pre-deployment validation starts, the configuration must be treated as frozen.

Any change requires:

1. a new configuration version;
2. a new configuration hash;
3. a reason for the change;
4. a timeline record;
5. re-execution of mandatory health checks;
6. a new execution group where required.

Exit Criteria

Phase 5 is complete when:

CONFIGURATION_VALID=YES
CONFIGURATION_HASH_RECORDED=YES
SECRETS_EXTERNALIZED=YES
CONFIGURATION_FROZEN=YES

Final phase result:

CONFIGURATION=PASSED

---

Phase 6 — Pre-Deployment Validation

Objective

Confirm that the environment can safely activate and operate the pilot runtime.

Required Checks

The pre-deployment validation should verify:

- host readiness;
- system time;
- available resources;
- network reachability;
- identity validity;
- certificate validity;
- authorization state;
- configuration integrity;
- required directories;
- required ports;
- evidence output path;
- report output path;
- rollback readiness.

Health Check Command

When the command is available:

go run ./cmd/pilot-health-check \
  --config ./config/pilot.yaml

Packaged binary form:

./bin/pilot-health-check \
  --config ./config/pilot.yaml

Expected Output

PILOT_HEALTH_CHECK=PASSED

Other valid states:

PILOT_HEALTH_CHECK=PASSED_WITH_WARNINGS
PILOT_HEALTH_CHECK=FAILED

Blocking Failures

The runtime must not be activated when any of the following is present:

- invalid runtime identity;
- invalid participant identity;
- expired authorization;
- invalid certificate;
- unsupported operating system;
- missing mandatory configuration;
- insufficient disk space;
- inaccessible evidence directory;
- unresolved critical security issue;
- unapproved network destination;
- rollback unavailable.

Warning Handling

Warnings must be:

- reviewed;
- attributed to a known cause;
- accepted by the deployment owner;
- included in the final report when relevant.

Exit Criteria

Phase 6 is complete when:

HEALTH_CHECK=PASSED
BLOCKING_FAILURES=0
WARNINGS_REVIEWED=YES
DEPLOYMENT_OWNER_APPROVAL=YES

Final phase result:

PRE_DEPLOYMENT_VALIDATION=PASSED

---

Phase 7 — Runtime Activation

Objective

Activate the protected runtime through the approved boundary and confirm operational readiness.

Activation Sequence

1. Load approved configuration
2. Verify configuration hash
3. Verify runtime identity
4. Verify authorization
5. Initialize evidence output
6. Initialize audit logging
7. Start public integration boundary
8. Start protected runtime
9. Perform readiness probe
10. Record activation event

Runtime Metadata

Record only non-sensitive runtime metadata:

RUNTIME_RELEASE_ID=
RUNTIME_INSTANCE_ID=
RUNTIME_START_TIME=
PUBLIC_CONTRACT_VERSION=

Readiness Checks

RUNTIME_STATE=READY
INTEGRATION_BOUNDARY=AVAILABLE
AUTHORIZATION_STATE=VALID
VALIDATOR_CONNECTION=AVAILABLE
EVIDENCE_EXPORT=AVAILABLE
AUDIT_LOGGING=ACTIVE

Activation Failure

If activation fails:

1. stop the activation process;
2. preserve logs;
3. preserve partial evidence;
4. identify the failed stage;
5. verify configuration;
6. verify credentials and certificates;
7. do not disable security controls;
8. retry only after the cause is understood.

Exit Criteria

Phase 7 is complete when:

RUNTIME_IDENTITY_VERIFIED=YES
RUNTIME_READY=YES
INTEGRATION_BOUNDARY_READY=YES
EVIDENCE_EXPORT_READY=YES
ACTIVATION_RECORDED=YES

Final phase result:

RUNTIME_ACTIVATION=PASSED

---

Phase 8 — Scenario Execution

Objective

Execute the approved pilot test plan and produce attributable, reproducible results.

Execution Identity

Every execution must have:

EXECUTION_ID=
SCENARIO_ID=
EXECUTION_GROUP_ID=
START_TIME=
END_TIME=
CONFIGURATION_SHA256=
RUNTIME_RELEASE_ID=
OPERATOR_ID=
EXPECTED_RESULT=
OBSERVED_RESULT=

Scenario Categories

The pilot may include:

- baseline connectivity;
- transport path migration;
- interface loss;
- temporary blackout;
- NAT rebinding;
- delayed packet delivery;
- packet reordering;
- duplicate delivery;
- replay attempts;
- concurrent mutation attempts;
- runtime restart;
- evidence export;
- evidence tamper rejection;
- report generation.

Only approved scenarios may be executed.

Recommended Execution Order

1. Baseline connectivity
2. Stable traffic observation
3. Controlled path migration
4. Temporary transport interruption
5. Recovery observation
6. Duplicate rejection
7. Replay rejection
8. Evidence export
9. Evidence tamper rejection
10. Final stability verification

Scenario Result

Every scenario must produce one explicit state:

SCENARIO_RESULT=PASSED
SCENARIO_RESULT=FAILED
SCENARIO_RESULT=INCONCLUSIVE
SCENARIO_RESULT=NOT_EXECUTED

Evidence Requirement

A scenario must not be marked as passed unless evidence includes:

- execution identity;
- scenario identity;
- timestamps;
- relevant observations;
- expected result;
- observed result;
- verdict source;
- integrity metadata.

Interrupted Execution

If an execution is interrupted:

1. stop the current scenario;
2. preserve partial output;
3. record the interruption;
4. mark the execution as incomplete or failed;
5. create a new execution identifier before retrying.

The same execution identifier must not be reused for a new run.

Exit Criteria

Phase 8 is complete when:

MANDATORY_SCENARIOS_EXECUTED=YES
EACH_SCENARIO_HAS_RESULT=YES
EVIDENCE_PRESENT_FOR_CLAIMS=YES
UNAPPROVED_SCENARIOS_EXECUTED=NO

Final phase result:

PILOT_EXECUTION=COMPLETED

---

Phase 9 — Evidence Validation

Objective

Collect pilot artifacts and verify that the evidence package is complete, internally consistent, and unchanged.

Evidence Package Contents

The evidence package may include:

environment summary
deployment summary
configuration hash
health-check output
execution manifests
scenario results
runtime verdicts
failure-injection records
event counters
integrity hashes
validator output
report inputs

Recommended Evidence Layout

evidence/
├── environment/
├── manifests/
├── scenarios/
├── logs/
├── hashes/
├── validator/
└── exports/

Evidence Collection Command

When available:

./scripts/collect_evidence.sh

Validator Command

When available:

go run ./cmd/pilot-validator \
  --evidence ./evidence \
  --output ./reports/validation-result.json

Packaged binary form:

./bin/pilot-validator \
  --evidence ./evidence \
  --output ./reports/validation-result.json

Validator Responsibilities

The validator should verify:

- required artifacts are present;
- file hashes match;
- execution identifiers are consistent;
- configuration hashes match;
- runtime version references are consistent;
- timestamps are plausible;
- mandatory scenarios are represented;
- duplicate evidence is not counted twice;
- altered evidence is rejected;
- final verdicts are attributable to specific executions.

Evidence Validation Result

EVIDENCE_VALIDATION=PASSED

Possible failure states:

EVIDENCE_VALIDATION=FAILED
EVIDENCE_VALIDATION=INCOMPLETE
EVIDENCE_VALIDATION=REJECTED

Evidence Freeze

After successful validation, record:

EVIDENCE_PACKAGE_ID=
EVIDENCE_PACKAGE_SHA256=
EVIDENCE_FREEZE_TIME=
VALIDATOR_VERSION=

The accepted package must not be modified after freezing.

A modified package requires a new package identifier and a new validation result.

Exit Criteria

Phase 9 is complete when:

EVIDENCE_PACKAGE_COMPLETE=YES
EVIDENCE_HASH_VERIFIED=YES
EXECUTION_CONSISTENCY_VERIFIED=YES
EVIDENCE_FROZEN=YES

Final phase result:

EVIDENCE_VALIDATION=PASSED

---

Phase 10 — Acceptance and Closure

Objective

Generate the final pilot report, assign a bounded verdict, archive accepted evidence, and remove temporary access.

Final Report Contents

The final report should include:

- pilot identifier;
- participant;
- deployment environment;
- toolkit version;
- runtime release identifier;
- configuration hash;
- execution group identifiers;
- executed scenarios;
- scenario results;
- evidence package identifier;
- evidence package hash;
- incidents;
- deviations;
- unresolved limitations;
- final verdict.

Final Verdict Values

FINAL_VERDICT=PASSED
FINAL_VERDICT=PASSED_WITH_LIMITATIONS
FINAL_VERDICT=FAILED
FINAL_VERDICT=INCONCLUSIVE

The final verdict must remain bounded by:

- the tested runtime release;
- the active configuration;
- the executed scenarios;
- the pilot environment;
- the available evidence;
- the pilot time window.

Acceptance Checks

MANDATORY_SCENARIOS_COMPLETED=YES
EVIDENCE_VALIDATION=PASSED
CRITICAL_INCIDENTS_RESOLVED=YES
DEVIATIONS_DOCUMENTED=YES
LIMITATIONS_DOCUMENTED=YES
FINAL_REPORT_COMPLETE=YES
FINAL_ACCEPTANCE_CHECKLIST_COMPLETE=YES

Closure Sequence

1. Stop new executions
2. Stop pilot runtime components
3. Freeze final logs
4. Archive accepted evidence
5. Generate final report
6. Revoke temporary credentials
7. Remove temporary firewall rules
8. Remove temporary accounts
9. Remove temporary files
10. Record closure time

Closure Record

PILOT_ID=
CLOSURE_TIME=
FINAL_VERDICT=
RUNTIME_STOPPED=
CREDENTIALS_REVOKED=
EVIDENCE_ARCHIVED=
TEMPORARY_FILES_REMOVED=
FINAL_REPORT_PATH=

Exit Criteria

Phase 10 is complete when:

FINAL_VERDICT_APPROVED=YES
FINAL_REPORT_ARCHIVED=YES
TEMPORARY_ACCESS_REVOKED=YES
RUNTIME_STOPPED=YES
CLOSURE_RECORDED=YES

Final phase result:

PILOT_CLOSURE=COMPLETED

---

Deployment State Machine

The pilot deployment must behave as a strict state machine.

UNINITIALIZED
      |
      v
SCOPE_CONFIRMED
      |
      v
ENVIRONMENT_READY
      |
      v
ACCESS_PROVISIONED
      |
      v
TOOLKIT_INSTALLED
      |
      v
CONFIGURATION_VALIDATED
      |
      v
PRE_DEPLOYMENT_PASSED
      |
      v
RUNTIME_ACTIVE
      |
      v
PILOT_EXECUTING
      |
      v
EVIDENCE_VALIDATED
      |
      v
PILOT_CLOSED

Invalid Transition Examples

The following transition must be rejected:

UNINITIALIZED -> RUNTIME_ACTIVE

The following transition must be rejected:

CONFIGURATION_VALIDATED -> PILOT_EXECUTING

when pre-deployment validation has not passed.

The following transition requires a new execution group:

EVIDENCE_VALIDATED -> PILOT_EXECUTING

The following transition requires revalidation:

RUNTIME_ACTIVE -> CONFIGURATION_VALIDATED

---

Failure Handling

Failure Categories

SCOPE_FAILURE
ENVIRONMENT_FAILURE
ACCESS_FAILURE
CONFIGURATION_FAILURE
RUNTIME_FAILURE
NETWORK_FAILURE
SCENARIO_FAILURE
EVIDENCE_FAILURE
VALIDATION_FAILURE
SECURITY_FAILURE

Failure Response

1. Stop new scenario execution
2. Preserve current logs
3. Preserve current evidence
4. Record current deployment state
5. Identify the failure category
6. Stop affected runtime components
7. Revoke compromised credentials where required
8. Restore the last approved state
9. Re-run mandatory checks
10. Resume only after approval

Failure Result

FAILURE_HANDLING=COMPLETED

or:

FAILURE_HANDLING=REQUIRES_MANUAL_REVIEW

---

Rollback Flow

Rollback must return the deployment to a known state.

Rollback Sequence

1. Stop active execution
2. Freeze partial evidence
3. Stop runtime components
4. Restore approved configuration
5. Restore approved toolkit version
6. Verify identities
7. Verify authorization
8. Re-run health checks
9. Assign a new execution group
10. Record rollback result

Rollback Record

ROLLBACK_ID=
ROLLBACK_REASON=
PREVIOUS_STATE=
RESTORED_STATE=
CONFIGURATION_SHA256=
TOOLKIT_VERSION=
RUNTIME_RELEASE_ID=
ROLLBACK_TIME=

Rollback Result

ROLLBACK=COMPLETED

or:

ROLLBACK=FAILED

A failed rollback requires manual review.

---

Configuration Change Flow

A configuration change must follow this sequence:

CHANGE_REQUESTED
      |
      v
CHANGE_REVIEWED
      |
      v
CHANGE_APPROVED
      |
      v
NEW_CONFIGURATION_CREATED
      |
      v
NEW_CONFIGURATION_HASHED
      |
      v
PRE_DEPLOYMENT_REVALIDATED
      |
      v
NEW_EXECUTION_GROUP_STARTED

The previous configuration must remain archived.

Results produced under different configuration hashes must remain distinguishable.

---

Runtime Upgrade Flow

A runtime upgrade requires:

1. Stop active scenario execution
2. Freeze current evidence package
3. Record current runtime release
4. Install the approved new runtime release
5. Verify runtime identity
6. Re-run health checks
7. Re-run mandatory baseline scenarios
8. Start a new execution group
9. Record the upgrade in the final report

Pre-upgrade and post-upgrade results must not be merged without explicit justification.

---

Deployment Roles

Pilot Owner

Responsible for:

- scope approval;
- acceptance criteria;
- deviation approval;
- final verdict approval;
- pilot closure.

Participant Engineer

Responsible for:

- participant environment preparation;
- participant network configuration;
- application integration;
- failure injection;
- local evidence handling;
- participant-side rollback.

Pilot Operator

Responsible for:

- protected runtime activation;
- runtime identity verification;
- authorization status;
- evidence export boundary;
- protected component shutdown;
- runtime incident investigation.

Validator

Responsible for:

- evidence integrity checks;
- execution consistency checks;
- configuration identity checks;
- duplicate detection;
- altered artifact rejection;
- final validation output.

---

Minimal Valid Deployment

A small isolated pilot must still perform the following steps:

1. Confirm pilot scope
2. Prepare the host
3. Prepare the network
4. Provision identities
5. Install the approved toolkit
6. Create the pilot configuration
7. Record the configuration hash
8. Run the health check
9. Activate the runtime
10. Run the baseline scenario
11. Run at least one approved failure scenario
12. Collect evidence
13. Validate evidence
14. Generate the final report
15. Stop the runtime
16. Revoke temporary access
17. Archive accepted artifacts

A minimal pilot must not skip:

- identity verification;
- authorization verification;
- configuration validation;
- health checks;
- evidence validation;
- final closure.

---

Deployment Completion Criteria

The deployment is complete only when:

SCOPE_CONFIRMATION=PASSED
ENVIRONMENT_PREPARATION=PASSED
ACCESS_PROVISIONING=PASSED
TOOLKIT_INSTALLATION=PASSED
CONFIGURATION=PASSED
PRE_DEPLOYMENT_VALIDATION=PASSED
RUNTIME_ACTIVATION=PASSED
PILOT_EXECUTION=COMPLETED
EVIDENCE_VALIDATION=PASSED
PILOT_CLOSURE=COMPLETED

Final deployment verdict:

PILOT_DEPLOYMENT_FLOW=COMPLETED

A deployment that produced runtime output but did not complete evidence validation and closure must not be described as a completed pilot.