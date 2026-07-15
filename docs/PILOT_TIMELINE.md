VRP Pilot Timeline

Purpose

This document defines the recommended timeline structure for a VRP pilot.

The timeline is intended to make the pilot:

- operationally bounded;
- attributable to specific milestones;
- reviewable over time;
- resistant to silent scope drift;
- explicit about dependencies, blockers, and acceptance gates;
- reproducible across different participant environments.

The timeline does not expose protected runtime implementation details.

It defines only the public operational sequence used to prepare, execute, validate, and close a pilot.

---

Timeline Principles

Every pilot timeline should preserve the following principles:

1. Each phase has a clear owner.
2. Each milestone has an explicit entry condition.
3. Each milestone has an explicit exit condition.
4. Blocking dependencies are identified before execution begins.
5. Configuration changes create a new validation boundary.
6. Runtime upgrades create a new execution group.
7. Delays and deviations are recorded.
8. Final acceptance is based on validated evidence, not schedule completion alone.
9. The pilot may stop early if a blocking security, integrity, or environment condition is detected.
10. A pilot is not complete until closure actions are recorded.

---

Default Pilot Duration

A standard pilot may be organized across four weeks.

Week 0 — Scope and Preparation
Week 1 — Deployment and Baseline Validation
Week 2 — Failure and Recovery Evaluation
Week 3 — Evidence Validation and Final Acceptance

A shorter or longer schedule may be used.

The actual duration must be documented in the pilot scope.

Example:

PILOT_DURATION_MODEL=STANDARD_FOUR_WEEK

Other permitted values:

ACCELERATED
STANDARD_FOUR_WEEK
EXTENDED
CUSTOM

---

Week 0 — Scope and Preparation

Objective

Define the pilot boundary and prepare the participant environment before any protected runtime activation.

Activities

Recommended activities:

- confirm pilot owner;
- confirm participant technical contact;
- define pilot objective;
- define included scope;
- define excluded scope;
- define acceptance criteria;
- confirm deployment model;
- confirm host requirements;
- confirm network requirements;
- confirm data handling restrictions;
- confirm evidence retention requirements;
- define rollback procedure;
- define support contacts;
- approve the initial test plan.

Required Outputs

PILOT_ID=
PARTICIPANT=
PILOT_OWNER=
TECHNICAL_CONTACT=
ENVIRONMENT_ID=
DEPLOYMENT_MODEL=
TEST_SCOPE=
OUT_OF_SCOPE=
ACCEPTANCE_CRITERIA=
START_DATE=
TARGET_END_DATE=

Entry Criteria

Week 0 may begin when:

PILOT_REQUEST=APPROVED
PARTICIPANT_CONTACT=CONFIRMED

Exit Criteria

Week 0 is complete when:

SCOPE_CONFIRMATION=PASSED
ENVIRONMENT_REQUIREMENTS=CONFIRMED
ACCEPTANCE_CRITERIA=APPROVED
TEST_PLAN=APPROVED
ROLLBACK_PLAN=DEFINED
SUPPORT_CONTACTS=CONFIRMED

Week 0 Milestone

MILESTONE_W0=READY_FOR_ENVIRONMENT_PREPARATION

---

Week 1 — Deployment and Baseline Validation

Objective

Prepare the environment, install the approved toolkit, validate configuration, activate the runtime, and establish a baseline.

Day 1 — Environment Preparation

Recommended activities:

- verify operating system;
- verify system time synchronization;
- verify CPU and memory availability;
- verify disk capacity;
- prepare required directories;
- review network topology;
- apply required firewall rules;
- verify environment isolation;
- confirm rollback path.

Expected result:

ENVIRONMENT_PREPARATION=PASSED

Blocking conditions:

- unsupported operating system;
- insufficient resources;
- inaccessible evidence path;
- uncontrolled public exposure;
- rollback unavailable;
- failure injection may affect unrelated systems.

---

Day 2 — Access Provisioning

Recommended activities:

- provision participant operator identity;
- provision pilot service identity;
- provision validator identity;
- install certificates where required;
- confirm authorization validity;
- verify credential storage;
- confirm credential expiration;
- confirm revocation path.

Expected result:

ACCESS_PROVISIONING=PASSED

Blocking conditions:

- missing authorization;
- expired authorization;
- invalid certificate;
- unverified runtime identity;
- plaintext secrets stored in repository files;
- credentials shared across unrelated pilots.

---

Day 3 — Toolkit Installation

Recommended activities:

- obtain the approved repository or release;
- verify repository origin;
- record release or commit;
- verify checksums;
- review scripts;
- install required tools;
- record dependency versions;
- confirm that no unapproved modifications are present.

Expected result:

TOOLKIT_INSTALLATION=PASSED

Required record:

PILOT_KIT_VERSION=
PILOT_KIT_COMMIT=
VALIDATOR_VERSION=
REPORT_TOOL_VERSION=

---

Day 4 — Configuration and Health Check

Recommended activities:

- create participant-specific configuration;
- externalize secrets;
- verify output paths;
- validate scenario identifiers;
- record configuration version;
- calculate configuration hash;
- freeze the configuration;
- run the pilot health check;
- review warnings;
- remediate blocking failures.

Expected results:

CONFIGURATION=PASSED
PRE_DEPLOYMENT_VALIDATION=PASSED

Required record:

CONFIGURATION_VERSION=
CONFIGURATION_SHA256=
HEALTH_CHECK_RESULT=
WARNINGS_TOTAL=
BLOCKING_FAILURES=

---

Day 5 — Runtime Activation and Baseline

Recommended activities:

- verify runtime identity;
- verify authorization;
- initialize evidence output;
- initialize audit logging;
- start the public integration boundary;
- activate the protected runtime;
- execute readiness checks;
- run baseline connectivity;
- record baseline evidence;
- confirm validator access.

Expected results:

RUNTIME_ACTIVATION=PASSED
BASELINE_SCENARIO=PASSED

Baseline evidence should include:

- execution identifier;
- scenario identifier;
- start and end timestamps;
- runtime release identifier;
- configuration hash;
- observed result;
- verdict;
- integrity metadata.

---

Week 1 Exit Criteria

Week 1 is complete when:

ENVIRONMENT_PREPARATION=PASSED
ACCESS_PROVISIONING=PASSED
TOOLKIT_INSTALLATION=PASSED
CONFIGURATION=PASSED
PRE_DEPLOYMENT_VALIDATION=PASSED
RUNTIME_ACTIVATION=PASSED
BASELINE_SCENARIO=PASSED

Week 1 Milestone

MILESTONE_W1=BASELINE_VALIDATED

---

Week 2 — Failure and Recovery Evaluation

Objective

Execute the approved failure, migration, replay, duplicate, and recovery scenarios.

Each scenario must use a unique execution identifier.

Each scenario must produce an explicit result.

---

Day 6 — Transport Path Migration

Recommended activities:

- establish stable baseline traffic;
- record the active transport path;
- initiate an approved path transition;
- observe session behavior;
- record continuity indicators;
- collect scenario evidence;
- validate scenario output.

Expected result:

TRANSPORT_MIGRATION_SCENARIO=PASSED

Possible results:

PASSED
FAILED
INCONCLUSIVE
NOT_EXECUTED

---

Day 7 — Interface Loss

Recommended activities:

- establish stable traffic;
- remove or disable the approved interface;
- observe the public runtime response;
- restore or replace the transport path;
- record recovery behavior;
- collect evidence.

Expected result:

INTERFACE_LOSS_SCENARIO=PASSED

The scenario must remain within the approved network boundary.

---

Day 8 — Temporary Blackout

Recommended activities:

- establish stable session state;
- introduce a bounded transport blackout;
- record blackout start and end;
- restore connectivity;
- observe recovery;
- verify whether unauthorized session reset occurred;
- collect evidence;
- validate the result.

Expected result:

TEMPORARY_BLACKOUT_SCENARIO=PASSED

Required timing record:

BLACKOUT_STARTED_AT=
BLACKOUT_ENDED_AT=
BLACKOUT_DURATION=
RECOVERY_OBSERVED_AT=

---

Day 9 — NAT Rebinding or Path Identity Change

Recommended activities:

- establish a baseline flow;
- change the approved network address or path identity;
- preserve the application-level execution context;
- observe externally visible behavior;
- collect evidence;
- validate the scenario.

Expected result:

NAT_REBINDING_SCENARIO=PASSED

This scenario may be marked as not applicable when the deployment environment cannot reproduce NAT or path identity changes.

---

Day 10 — Replay and Duplicate Rejection

Recommended activities:

- submit a valid operation;
- record the accepted execution identifier;
- resubmit the same operation;
- submit a stale operation;
- submit a conflicting operation using an existing identifier;
- verify that no second protected mutation is accepted;
- collect validator evidence.

Expected results:

DUPLICATE_REJECTION_SCENARIO=PASSED
REPLAY_REJECTION_SCENARIO=PASSED

The validator should distinguish between:

- new valid execution;
- retry;
- duplicate;
- replay;
- conflict.

---

Day 11 — Concurrency or Admission Scenario

When included in scope, recommended activities:

- prepare concurrent approved operations;
- submit them within the documented test window;
- record all execution identifiers;
- observe accepted and rejected outcomes;
- verify deterministic or bounded admission behavior through exported evidence;
- avoid inferring protected internal algorithms.

Expected result:

CONCURRENT_ADMISSION_SCENARIO=PASSED

This scenario may be excluded from small pilot deployments.

---

Day 12 — Evidence Export and Tamper Rejection

Recommended activities:

- export the evidence package;
- record the evidence package identifier;
- calculate integrity hashes;
- validate the original package;
- modify a copy of one artifact;
- submit the modified copy to the validator;
- confirm rejection;
- preserve both validation outputs.

Expected results:

EVIDENCE_EXPORT_SCENARIO=PASSED
EVIDENCE_TAMPER_REJECTION=PASSED

Required records:

EVIDENCE_PACKAGE_ID=
ORIGINAL_PACKAGE_SHA256=
ORIGINAL_VALIDATION_RESULT=
MODIFIED_ARTIFACT=
MODIFIED_VALIDATION_RESULT=

---

Week 2 Exit Criteria

Week 2 is complete when:

- all mandatory scenarios were executed;
- each scenario has an explicit result;
- all claimed results have evidence references;
- failed scenarios are documented;
- inconclusive scenarios are documented;
- no execution identifier was reused;
- configuration drift did not invalidate the results;
- security incidents were recorded.

Expected summary:

MANDATORY_SCENARIOS_EXECUTED=YES
SCENARIO_RESULTS_RECORDED=YES
EVIDENCE_PRESENT_FOR_CLAIMS=YES

Week 2 Milestone

MILESTONE_W2=SCENARIO_EXECUTION_COMPLETED

---

Week 3 — Evidence Validation and Final Acceptance

Objective

Freeze the evidence package, validate its integrity, generate the final report, assign the final verdict, and close the deployment.

---

Day 13 — Evidence Collection

Recommended activities:

- stop new scenario execution;
- collect execution manifests;
- collect scenario results;
- collect health-check output;
- collect configuration hash;
- collect runtime and toolkit version records;
- collect failure-injection records;
- collect integrity metadata;
- remove unrelated logs;
- apply evidence redaction;
- create the evidence package.

Expected result:

EVIDENCE_COLLECTION=COMPLETED

Required record:

EVIDENCE_PACKAGE_ID=
EVIDENCE_CREATED_AT=
EVIDENCE_ARTIFACT_COUNT=

---

Day 14 — Evidence Validation

Recommended activities:

- verify required artifacts;
- verify file hashes;
- verify execution identifiers;
- verify configuration consistency;
- verify runtime version consistency;
- verify scenario coverage;
- detect duplicate evidence;
- reject modified evidence;
- produce validator output.

Expected result:

EVIDENCE_VALIDATION=PASSED

Possible results:

EVIDENCE_VALIDATION=FAILED
EVIDENCE_VALIDATION=INCOMPLETE
EVIDENCE_VALIDATION=REJECTED

A non-passing validation result blocks final acceptance.

---

Day 15 — Evidence Freeze

Recommended activities:

- calculate the final evidence package hash;
- record validator version;
- freeze the accepted package;
- prevent further modification;
- archive the validation output;
- record the freeze timestamp.

Expected result:

EVIDENCE_FREEZE=COMPLETED

Required record:

EVIDENCE_PACKAGE_SHA256=
EVIDENCE_FREEZE_TIME=
VALIDATOR_VERSION=

---

Day 16 — Final Report Generation

Recommended activities:

- populate the pilot report template;
- summarize deployment state;
- summarize scenario results;
- include evidence references;
- document incidents;
- document deviations;
- document limitations;
- evaluate acceptance criteria;
- prepare the final verdict rationale.

Expected result:

PILOT_REPORT=COMPLETED

The report must not claim more than the evidence demonstrates.

---

Day 17 — Acceptance Review

Recommended activities:

- review mandatory acceptance criteria;
- review evidence validation result;
- review unresolved incidents;
- review security findings;
- review limitations;
- review deviations;
- approve or reject the final verdict.

Permitted final verdicts:

FINAL_VERDICT=PASSED
FINAL_VERDICT=PASSED_WITH_LIMITATIONS
FINAL_VERDICT=FAILED
FINAL_VERDICT=INCONCLUSIVE

Expected result:

FINAL_VERDICT_APPROVED=YES

---

Day 18 — Closure

Recommended activities:

- stop pilot runtime components;
- revoke temporary credentials;
- remove temporary accounts;
- remove temporary firewall rules;
- archive validated evidence;
- archive the final report;
- remove temporary files;
- record closure time;
- confirm that no protected runtime artifact remains outside the approved location.

Expected result:

PILOT_CLOSURE=COMPLETED

Required record:

RUNTIME_STOPPED=
TEMPORARY_CREDENTIALS_REVOKED=
TEMPORARY_ACCOUNTS_REMOVED=
TEMPORARY_FIREWALL_RULES_REMOVED=
EVIDENCE_ARCHIVED=
FINAL_REPORT_ARCHIVED=
CLOSURE_TIME=

---

Week 3 Exit Criteria

Week 3 is complete when:

EVIDENCE_COLLECTION=COMPLETED
EVIDENCE_VALIDATION=PASSED
EVIDENCE_FREEZE=COMPLETED
PILOT_REPORT=COMPLETED
FINAL_VERDICT_APPROVED=YES
PILOT_CLOSURE=COMPLETED

Week 3 Milestone

MILESTONE_W3=PILOT_COMPLETED

---

Accelerated Pilot Timeline

An accelerated pilot may be completed in five working days when:

- the environment is already prepared;
- access is already provisioned;
- deployment scope is narrow;
- the runtime version is fixed;
- the configuration is simple;
- the test matrix is limited;
- support personnel are available;
- evidence validation can be completed immediately.

Example accelerated flow:

Day 1 — Scope, environment, access
Day 2 — Installation, configuration, health check
Day 3 — Baseline and failure scenarios
Day 4 — Evidence collection and validation
Day 5 — Final report, verdict, closure

An accelerated pilot must not skip:

- identity verification;
- authorization verification;
- configuration hash recording;
- health checks;
- evidence validation;
- final closure.

---

Extended Pilot Timeline

An extended pilot may be used when the evaluation includes:

- long-duration stability testing;
- multiple locations;
- multiple runtime instances;
- multiple network providers;
- multiple application integrations;
- production-adjacent environments;
- repeated failure cycles;
- capacity testing;
- staged rollout;
- independent external validation.

An extended pilot should preserve the same phase boundaries.

Additional execution groups should be used when:

- configuration changes;
- runtime version changes;
- topology changes;
- environment classification changes;
- acceptance criteria change.

---

Timeline State Record

The pilot should maintain a current timeline state.

PILOT_ID=
CURRENT_PHASE=
CURRENT_MILESTONE=
CURRENT_OWNER=
CURRENT_STATUS=
LAST_UPDATED_AT=
NEXT_REQUIRED_ACTION=
BLOCKERS=

Permitted status values:

NOT_STARTED
IN_PROGRESS
BLOCKED
COMPLETED
CANCELLED

---

Milestone Record Template

Each milestone should use the following structure:

MILESTONE_ID=
MILESTONE_NAME=
OWNER=
PLANNED_DATE=
ACTUAL_DATE=
STATUS=
ENTRY_CRITERIA=
EXIT_CRITERIA=
DEPENDENCIES=
BLOCKERS=
EVIDENCE_REFERENCE=
NOTES=

---

Delay Handling

A delay must be recorded when:

- a milestone misses its planned date;
- a blocking dependency is unavailable;
- the environment becomes invalid;
- authorization expires;
- configuration changes;
- a runtime upgrade is required;
- evidence is incomplete;
- a security incident occurs;
- participant approval is delayed.

Delay record:

DELAY_ID=
AFFECTED_MILESTONE=
DELAY_STARTED_AT=
REASON=
OWNER=
IMPACT=
REVISED_TARGET_DATE=

A schedule delay does not automatically invalidate technical results.

A delay that changes the environment, runtime, configuration, or test scope may require revalidation.

---

Blocker Handling

Common blocker categories:

SCOPE_BLOCKER
ENVIRONMENT_BLOCKER
ACCESS_BLOCKER
SECURITY_BLOCKER
CONFIGURATION_BLOCKER
RUNTIME_BLOCKER
NETWORK_BLOCKER
EVIDENCE_BLOCKER
VALIDATION_BLOCKER
APPROVAL_BLOCKER

Blocker record:

BLOCKER_ID=
BLOCKER_CATEGORY=
DESCRIPTION=
DETECTED_AT=
OWNER=
RESOLUTION=
RESOLVED_AT=
AFFECTED_EXECUTIONS=

A blocking condition must not be bypassed through an undocumented exception.

---

Configuration Change Impact

A configuration change during the timeline requires:

1. stop affected execution;
2. preserve existing evidence;
3. create a new configuration version;
4. calculate a new configuration hash;
5. record the change;
6. repeat mandatory health checks;
7. create a new execution group;
8. update the timeline.

Required record:

CHANGE_ID=
PREVIOUS_CONFIGURATION_SHA256=
NEW_CONFIGURATION_SHA256=
CHANGE_APPROVED_AT=
NEW_EXECUTION_GROUP_ID=

---

Runtime Upgrade Impact

A runtime upgrade requires:

1. stop active scenarios;
2. freeze current evidence;
3. record the previous runtime release;
4. install the approved new release;
5. verify runtime identity;
6. repeat health checks;
7. repeat mandatory baseline scenarios;
8. create a new execution group;
9. update the timeline.

Required record:

UPGRADE_ID=
PREVIOUS_RUNTIME_RELEASE_ID=
NEW_RUNTIME_RELEASE_ID=
UPGRADE_COMPLETED_AT=
NEW_EXECUTION_GROUP_ID=

Results from different runtime releases must remain distinguishable.

---

Early Termination

A pilot may terminate early when:

- a critical security incident occurs;
- protected runtime integrity cannot be established;
- authorization is revoked;
- the environment becomes unsafe;
- required evidence cannot be produced;
- the participant requests termination;
- mandatory acceptance criteria fail with no approved remediation path;
- prohibited activity is detected.

Early termination record:

TERMINATION_ID=
TERMINATED_AT=
TERMINATION_REASON=
CURRENT_PHASE=
AFFECTED_EXECUTIONS=
EVIDENCE_PRESERVED=
CREDENTIALS_REVOKED=
RUNTIME_STOPPED=

Final result:

PILOT_STATUS=TERMINATED

Early termination does not remove the requirement to preserve relevant evidence and revoke temporary access.

---

Timeline Responsibility Matrix

Pilot Owner

Responsible for:

- approving the timeline;
- approving milestone changes;
- resolving scope blockers;
- approving deviations;
- approving the final verdict;
- approving closure.

Participant Engineer

Responsible for:

- environment preparation;
- participant-side deployment;
- network readiness;
- local failure injection;
- participant-side evidence preservation;
- reporting infrastructure blockers.

Pilot Operator

Responsible for:

- protected runtime activation;
- runtime identity verification;
- authorization state;
- runtime incident handling;
- evidence export readiness;
- protected runtime shutdown.

Validator

Responsible for:

- evidence validation scheduling;
- integrity checks;
- execution consistency checks;
- modified artifact rejection;
- final validation output.

---

Timeline Completion Criteria

The timeline is complete only when all required milestones have explicit results.

MILESTONE_W0=READY_FOR_ENVIRONMENT_PREPARATION
MILESTONE_W1=BASELINE_VALIDATED
MILESTONE_W2=SCENARIO_EXECUTION_COMPLETED
MILESTONE_W3=PILOT_COMPLETED

Final timeline state:

PILOT_TIMELINE=COMPLETED
FINAL_VERDICT_APPROVED=YES
PILOT_CLOSURE=COMPLETED

A pilot that reaches the planned end date without validated evidence and closure must not be described as completed.