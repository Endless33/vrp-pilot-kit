VRP Pilot Pre-Deployment Checklist

Purpose

This checklist verifies that the participant environment, access boundary, configuration, toolkit, and evidence paths are ready before the protected VRP runtime is activated.

The checklist must be completed before any mandatory pilot scenario begins.

A failed blocking item prevents deployment from continuing.

---

Checklist Status

PILOT_ID=
ENVIRONMENT_ID=
CHECKLIST_VERSION=1
CHECKLIST_STARTED_AT=
CHECKLIST_COMPLETED_AT=
COMPLETED_BY=
REVIEWED_BY=
OVERALL_RESULT=

Permitted overall results:

PASSED
PASSED_WITH_WARNINGS
FAILED
INCOMPLETE

---

1. Pilot Scope

1.1 Pilot Identity

- [ ] "PILOT_ID" is assigned.
- [ ] Participant organization is recorded.
- [ ] Pilot owner is assigned.
- [ ] Participant technical contact is assigned.
- [ ] Pilot operator is assigned.
- [ ] Validator responsibility is assigned.
- [ ] Environment identifier is assigned.
- [ ] Pilot start date is recorded.
- [ ] Target completion date is recorded.

Record:

PILOT_ID=
PARTICIPANT=
PILOT_OWNER=
TECHNICAL_CONTACT=
PILOT_OPERATOR=
VALIDATOR=
ENVIRONMENT_ID=
START_DATE=
TARGET_END_DATE=

---

1.2 Scope Definition

- [ ] Pilot objective is documented.
- [ ] Included scope is documented.
- [ ] Excluded scope is documented.
- [ ] Approved deployment model is documented.
- [ ] Approved application or service is identified.
- [ ] Approved network boundaries are identified.
- [ ] Approved failure scenarios are listed.
- [ ] Prohibited activities are acknowledged.
- [ ] Public disclosure rules are acknowledged.

Record:

PILOT_OBJECTIVE=
IN_SCOPE=
OUT_OF_SCOPE=
DEPLOYMENT_MODEL=
TARGET_APPLICATION=
APPROVED_SCENARIOS=

---

1.3 Acceptance Criteria

- [ ] Mandatory acceptance criteria are defined.
- [ ] Optional acceptance criteria are defined.
- [ ] Each criterion has an explicit result condition.
- [ ] Required evidence for each criterion is defined.
- [ ] Failure conditions are defined.
- [ ] Inconclusive conditions are defined.
- [ ] Final verdict values are agreed.

Expected verdict values:

PASSED
PASSED_WITH_LIMITATIONS
FAILED
INCONCLUSIVE

Result:

SCOPE_AND_ACCEPTANCE_READY=

---

2. Environment Readiness

2.1 Host Identification

- [ ] Target hostname is recorded.
- [ ] Operating system is supported.
- [ ] Operating system version is recorded.
- [ ] Kernel version is recorded where applicable.
- [ ] CPU architecture is supported.
- [ ] CPU capacity is sufficient.
- [ ] Memory capacity is sufficient.
- [ ] Disk capacity is sufficient.
- [ ] Virtualization or container runtime is documented.
- [ ] System time is synchronized.

Record:

HOSTNAME=
OPERATING_SYSTEM=
OPERATING_SYSTEM_VERSION=
KERNEL_VERSION=
CPU_ARCHITECTURE=
CPU_COUNT=
MEMORY_TOTAL=
DISK_SPACE_AVAILABLE=
VIRTUALIZATION=
CONTAINER_RUNTIME=
TIME_SYNCHRONIZED=

---

2.2 Host Security

- [ ] Administrative access is restricted.
- [ ] Unnecessary accounts are disabled or removed.
- [ ] Required security updates are installed.
- [ ] Host firewall is enabled where applicable.
- [ ] Only required services are exposed.
- [ ] Malware protection is enabled where appropriate.
- [ ] Log access is restricted.
- [ ] Pilot files are stored in approved locations.
- [ ] The host is not known to be compromised.
- [ ] Production access from the pilot host is bounded.

Result:

HOST_SECURITY_READY=

---

2.3 Directory Preparation

Required directories are prepared.

Example layout:

/opt/vrp-pilot/
├── bin/
├── config/
├── evidence/
├── logs/
├── reports/
├── runtime/
└── tmp/

Checklist:

- [ ] Binary directory exists.
- [ ] Configuration directory exists.
- [ ] Evidence directory exists.
- [ ] Log directory exists.
- [ ] Report directory exists.
- [ ] Runtime directory exists.
- [ ] Temporary directory exists.
- [ ] Required directories are writable by approved identities.
- [ ] Directory ownership is correct.
- [ ] Directory permissions follow least privilege.
- [ ] Temporary paths do not expose secrets.
- [ ] Evidence storage has sufficient capacity.

Record:

PILOT_ROOT_DIRECTORY=
BINARY_DIRECTORY=
CONFIGURATION_DIRECTORY=
EVIDENCE_DIRECTORY=
LOG_DIRECTORY=
REPORT_DIRECTORY=
RUNTIME_DIRECTORY=
TEMPORARY_DIRECTORY=

Result:

DIRECTORY_PREPARATION_READY=

---

3. Network Readiness

3.1 Network Topology

- [ ] Client network is identified.
- [ ] Server network is identified.
- [ ] Test subnet is identified.
- [ ] NAT boundaries are documented.
- [ ] Routing dependencies are documented.
- [ ] Proxy dependencies are documented.
- [ ] Required transport protocols are documented.
- [ ] Required endpoints are documented.
- [ ] Failure-injection points are documented.
- [ ] Public network exposure is documented.

Record:

CLIENT_NETWORK=
SERVER_NETWORK=
TEST_SUBNET=
NAT_BOUNDARIES=
ROUTING_DEPENDENCIES=
PROXY_DEPENDENCIES=
TRANSPORT_PROTOCOLS=
REQUIRED_ENDPOINTS=
FAILURE_INJECTION_POINTS=
PUBLIC_NETWORK_EXPOSURE=

---

3.2 Firewall and Port Validation

- [ ] Required inbound ports are approved.
- [ ] Required outbound ports are approved.
- [ ] Unnecessary ports are blocked.
- [ ] Firewall rules are attributable to the pilot.
- [ ] Temporary firewall rules are documented.
- [ ] Firewall rollback steps are documented.
- [ ] No unrestricted administrative access is exposed.
- [ ] Protected runtime endpoints are not publicly exposed without approval.

Record:

ALLOWED_INBOUND_PORTS=
ALLOWED_OUTBOUND_PORTS=
TEMPORARY_FIREWALL_RULES=
FIREWALL_ROLLBACK_PLAN=

Result:

FIREWALL_VALIDATION_READY=

---

3.3 Connectivity Checks

- [ ] Required DNS resolution succeeds.
- [ ] Required endpoint reachability succeeds.
- [ ] Certificate endpoints are reachable where required.
- [ ] Validator endpoint is reachable where required.
- [ ] Evidence destination is reachable where required.
- [ ] Baseline latency is recorded.
- [ ] Packet loss is within the expected baseline range.
- [ ] MTU constraints are documented.
- [ ] Network path is stable before testing begins.

Record:

DNS_RESOLUTION=
RUNTIME_ENDPOINT_REACHABLE=
VALIDATOR_ENDPOINT_REACHABLE=
EVIDENCE_DESTINATION_REACHABLE=
BASELINE_LATENCY=
BASELINE_PACKET_LOSS=
MTU=

Result:

NETWORK_CONNECTIVITY_READY=

---

3.4 Isolation Validation

- [ ] Pilot traffic is isolated where practical.
- [ ] Failure injection cannot affect unrelated systems.
- [ ] Third-party systems are outside the injection boundary.
- [ ] Production systems are protected from test traffic.
- [ ] Dedicated VLAN, VM, subnet, namespace, or equivalent isolation is used where applicable.
- [ ] Unrestricted routing through the pilot environment is not possible.
- [ ] Outbound access is restricted where appropriate.

Result:

NETWORK_ISOLATION_READY=

---

4. Access and Identity

4.1 Required Identities

- [ ] Participant operator identity exists.
- [ ] Pilot service identity exists.
- [ ] Validator identity exists.
- [ ] Evidence collector identity exists where required.
- [ ] Protected runtime identity is known.
- [ ] Reporting identity exists where required.
- [ ] Each identity is attributable to a role.
- [ ] Shared identities are avoided where practical.

Record:

PARTICIPANT_OPERATOR_ID=
PILOT_SERVICE_ID=
VALIDATOR_ID=
EVIDENCE_COLLECTOR_ID=
RUNTIME_IDENTITY=
REPORTING_ID=

---

4.2 Authorization

- [ ] Pilot authorization is active.
- [ ] Authorization is scoped to the correct participant.
- [ ] Authorization is scoped to the correct environment.
- [ ] Authorization is scoped to permitted operations.
- [ ] Authorization validity period is recorded.
- [ ] Authorization expiration occurs after the expected pilot period.
- [ ] Revocation procedure is documented.
- [ ] Unauthorized operations are expected to fail closed.

Record:

AUTHORIZATION_ID=
AUTHORIZATION_VALID_FROM=
AUTHORIZATION_VALID_UNTIL=
AUTHORIZED_OPERATIONS=
REVOCATION_METHOD=

Result:

AUTHORIZATION_READY=

---

4.3 Credential Handling

- [ ] Credentials are stored outside the repository.
- [ ] Credentials are not present in Markdown files.
- [ ] Credentials are not present in scripts.
- [ ] Credentials are not present in example configuration.
- [ ] Credentials are not present in shell history.
- [ ] Credentials are not present in logs.
- [ ] Private keys are protected.
- [ ] Short-lived credentials are used where supported.
- [ ] Credential rotation procedure is documented.
- [ ] Credential exposure response is documented.

Record:

CREDENTIAL_STORAGE_METHOD=
PRIVATE_KEY_STORAGE_METHOD=
ROTATION_METHOD=
EXPOSURE_RESPONSE=

Result:

CREDENTIAL_HANDLING_READY=

---

4.4 Certificate Validation

Where certificates are used:

- [ ] Certificate chain is valid.
- [ ] Certificate is not expired.
- [ ] Certificate identity matches the expected service.
- [ ] Hostname or service identity validation is enabled.
- [ ] Certificate verification is not disabled.
- [ ] Private keys are not exportable without approval.
- [ ] Certificate rotation procedure is documented.
- [ ] Test certificates are clearly distinguished from production certificates.

Record:

CERTIFICATE_ID=
CERTIFICATE_VALID_FROM=
CERTIFICATE_VALID_UNTIL=
CERTIFICATE_IDENTITY=
CERTIFICATE_CHAIN_VALID=
HOSTNAME_VALIDATION_ENABLED=

Result:

CERTIFICATE_VALIDATION_READY=

---

5. Toolkit Installation

5.1 Source Verification

- [ ] Toolkit source is approved.
- [ ] Repository URL is recorded.
- [ ] Repository origin is verified.
- [ ] Release, tag, branch, or commit is recorded.
- [ ] Release checksums are verified where available.
- [ ] Release signatures are verified where available.
- [ ] No unofficial binary is used.
- [ ] No unreviewed fork is used.
- [ ] No unexplained local modification exists.

Record:

REPOSITORY=
RELEASE=
BRANCH=
COMMIT=
SOURCE_LOCATION=
CHECKSUM_VERIFICATION=
SIGNATURE_VERIFICATION=

Result:

TOOLKIT_SOURCE_VERIFIED=

---

5.2 Installed Components

Verify the required public components.

- [ ] Documentation is present.
- [ ] Checklists are present.
- [ ] Templates are present.
- [ ] Deployment examples are present where required.
- [ ] Evaluation materials are present where required.
- [ ] Scripts are present where required.
- [ ] Health-check tool is present when included in the release.
- [ ] Validator is present when included in the release.
- [ ] Report generator is present when included in the release.

Expected future components may include:

cmd/pilot-health-check
cmd/pilot-validator
cmd/pilot-report
internal/pilotapi
internal/checks
internal/report

Result:

REQUIRED_COMPONENTS_PRESENT=

---

5.3 Script Review

Before any script is executed:

- [ ] Script contents were reviewed.
- [ ] Required privileges are understood.
- [ ] Created directories are understood.
- [ ] Modified files are understood.
- [ ] Network calls are understood.
- [ ] Output paths are approved.
- [ ] Temporary file behavior is understood.
- [ ] Cleanup behavior is understood.
- [ ] Secret exposure risks were reviewed.
- [ ] Destructive operations are not present.
- [ ] Elevated privileges are justified where required.

Record:

SCRIPTS_REVIEWED_BY=
SCRIPTS_REVIEWED_AT=
ELEVATED_PRIVILEGES_REQUIRED=
SCRIPT_EXCEPTIONS=

Result:

SCRIPT_REVIEW_READY=

---

6. Configuration Readiness

6.1 Configuration Structure

- [ ] Public integration configuration is separated.
- [ ] Participant environment configuration is separated.
- [ ] Secret references are separated from values.
- [ ] Scenario configuration is separated.
- [ ] Evidence export configuration is defined.
- [ ] Report configuration is defined.
- [ ] Configuration uses approved schema.
- [ ] Unsupported fields are absent.

Result:

CONFIGURATION_STRUCTURE_READY=

---

6.2 Configuration Validation

- [ ] Configuration syntax is valid.
- [ ] Mandatory fields are present.
- [ ] Pilot identifier matches.
- [ ] Environment identifier matches.
- [ ] Runtime identity reference matches.
- [ ] Output paths are writable.
- [ ] Network targets are approved.
- [ ] Scenario identifiers are approved.
- [ ] Secret values are not embedded.
- [ ] Placeholder values have been replaced where required.
- [ ] Unknown configuration fields are reviewed.
- [ ] Configuration warnings are documented.

Record:

CONFIGURATION_VERSION=
CONFIGURATION_PATH=
CONFIGURATION_VALIDATION_RESULT=
CONFIGURATION_WARNINGS=

Result:

CONFIGURATION_VALIDATION_READY=

---

6.3 Configuration Integrity

- [ ] Configuration hash is calculated.
- [ ] Configuration hash is recorded.
- [ ] Configuration approval is recorded.
- [ ] Configuration freeze time is recorded.
- [ ] Previous configuration versions are archived where applicable.
- [ ] Change-control process is documented.
- [ ] Any future change will create a new version and hash.
- [ ] Mandatory checks will be repeated after any change.

Record:

CONFIGURATION_VERSION=
CONFIGURATION_SHA256=
CONFIGURATION_APPROVED_AT=
CONFIGURATION_FROZEN_AT=

Result:

CONFIGURATION_INTEGRITY_READY=

---

7. Security Readiness

7.1 Security Boundary

- [ ] Participant environment boundary is documented.
- [ ] Public pilot integration boundary is documented.
- [ ] Protected runtime boundary is documented.
- [ ] Evidence export boundary is documented.
- [ ] Participant access does not expose protected runtime internals.
- [ ] Protected source code is not present in the public toolkit.
- [ ] Protected runtime memory is not externally accessible.
- [ ] Private cryptographic material is not exposed.
- [ ] Administrative access is restricted.

Result:

SECURITY_BOUNDARY_READY=

---

7.2 Fail-Closed Validation

The deployment is expected to reject:

- [ ] missing authorization;
- [ ] expired authorization;
- [ ] invalid signature;
- [ ] invalid certificate;
- [ ] certificate identity mismatch;
- [ ] corrupted configuration;
- [ ] unsupported protocol version;
- [ ] replayed request;
- [ ] duplicated execution identifier;
- [ ] malformed evidence;
- [ ] evidence hash mismatch;
- [ ] unexpected runtime identity;
- [ ] unauthorized environment;
- [ ] invalid deployment state.

Result:

FAIL_CLOSED_EXPECTATIONS_DEFINED=

---

7.3 Data Protection

- [ ] Synthetic or non-sensitive data will be used where possible.
- [ ] Production data use is explicitly approved where applicable.
- [ ] Data handling responsibilities are documented.
- [ ] Data retention is documented.
- [ ] Data deletion is documented.
- [ ] Packet payload capture is disabled unless required.
- [ ] Payload capture scope is minimized where required.
- [ ] Sensitive data will be redacted before reporting.
- [ ] Evidence export follows data-minimization principles.

Result:

DATA_PROTECTION_READY=

---

7.4 Security Incident Readiness

- [ ] Security contact is identified.
- [ ] Credential revocation procedure is known.
- [ ] Credential rotation procedure is known.
- [ ] Host isolation procedure is known.
- [ ] Evidence preservation procedure is known.
- [ ] Incident reporting channel is known.
- [ ] Affected execution identification is possible.
- [ ] Pilot suspension authority is assigned.
- [ ] Resume approval authority is assigned.

Record:

SECURITY_CONTACT=
SECURITY_CHANNEL=
PILOT_SUSPENSION_AUTHORITY=
RESUME_APPROVAL_AUTHORITY=

Result:

SECURITY_INCIDENT_READINESS=

---

8. Evidence Readiness

8.1 Evidence Directory

- [ ] Evidence directory exists.
- [ ] Evidence directory is writable.
- [ ] Evidence directory is access-restricted.
- [ ] Evidence directory has sufficient capacity.
- [ ] Evidence directory is outside temporary cleanup scope.
- [ ] Evidence directory path is recorded.
- [ ] Evidence archive destination is known.

Record:

EVIDENCE_DIRECTORY=
EVIDENCE_ARCHIVE_DESTINATION=
EVIDENCE_CAPACITY=

Result:

EVIDENCE_DIRECTORY_READY=

---

8.2 Evidence Structure

The expected evidence layout is defined.

Example:

evidence/
├── environment/
├── manifests/
├── scenarios/
├── logs/
├── hashes/
├── validator/
└── exports/

Checklist:

- [ ] Environment evidence path is defined.
- [ ] Manifest path is defined.
- [ ] Scenario evidence path is defined.
- [ ] Log path is defined.
- [ ] Hash path is defined.
- [ ] Validator output path is defined.
- [ ] Export path is defined.
- [ ] Naming conventions are documented.
- [ ] Execution identifiers are part of artifact attribution.

Result:

EVIDENCE_STRUCTURE_READY=

---

8.3 Evidence Integrity

- [ ] Hash algorithm is defined.
- [ ] Manifest format is defined.
- [ ] Execution identifier format is defined.
- [ ] Evidence package identifier format is defined.
- [ ] Validator version will be recorded.
- [ ] Evidence freeze procedure is defined.
- [ ] Modified evidence will be rejected.
- [ ] Duplicate evidence will not be counted twice.
- [ ] Original and redacted artifacts are distinguishable.
- [ ] Evidence provenance can be preserved.

Record:

HASH_ALGORITHM=SHA256
MANIFEST_FORMAT=
EXECUTION_ID_FORMAT=
EVIDENCE_PACKAGE_ID_FORMAT=

Result:

EVIDENCE_INTEGRITY_READY=

---

8.4 Evidence Redaction

- [ ] Credential redaction is defined.
- [ ] Token redaction is defined.
- [ ] Private key exclusion is defined.
- [ ] Internal hostname redaction is defined where required.
- [ ] Private address redaction is defined where required.
- [ ] Personal data redaction is defined.
- [ ] Packet payload redaction is defined.
- [ ] Protected runtime internal data is excluded.
- [ ] Participant proprietary data is excluded where unrelated.
- [ ] Redaction does not alter verdict meaning.

Result:

EVIDENCE_REDACTION_READY=

---

9. Logging and Audit

9.1 Audit Events

The following events can be recorded:

- [ ] deployment initialization;
- [ ] configuration validation;
- [ ] authorization success;
- [ ] authorization rejection;
- [ ] runtime activation;
- [ ] scenario execution start;
- [ ] scenario execution completion;
- [ ] evidence collection;
- [ ] evidence validation;
- [ ] integrity failure;
- [ ] operator intervention;
- [ ] configuration change;
- [ ] pilot suspension;
- [ ] final acceptance;
- [ ] pilot closure.

Result:

AUDIT_EVENTS_READY=

---

9.2 Log Security

- [ ] Logs use synchronized timestamps.
- [ ] Logs do not contain plaintext secrets.
- [ ] Log access is restricted.
- [ ] Log retention is defined.
- [ ] Log deletion is defined.
- [ ] Log redaction process is defined.
- [ ] Logs can be associated with execution identifiers.
- [ ] Logs can be associated with environment identifiers.

Record:

LOG_RETENTION_PERIOD=
LOG_DELETION_METHOD=
LOG_REDACTION_METHOD=

Result:

LOG_SECURITY_READY=

---

10. Health Check Readiness

10.1 Health Check Tool

Where the health-check tool is available:

- [ ] Tool version is recorded.
- [ ] Tool source is verified.
- [ ] Configuration path is known.
- [ ] Required privileges are known.
- [ ] Expected output format is known.
- [ ] Failure states are understood.
- [ ] Warning states are understood.
- [ ] Output destination is defined.

Record:

HEALTH_CHECK_VERSION=
HEALTH_CHECK_COMMAND=
HEALTH_CHECK_OUTPUT_PATH=

Example command:

go run ./cmd/pilot-health-check \
  --config ./config/pilot.yaml

---

10.2 Mandatory Health Checks

The health check must validate:

- [ ] operating system support;
- [ ] system time synchronization;
- [ ] resource capacity;
- [ ] network connectivity;
- [ ] directory permissions;
- [ ] configuration syntax;
- [ ] configuration identity;
- [ ] authorization state;
- [ ] certificate state;
- [ ] evidence path readiness;
- [ ] report path readiness;
- [ ] rollback readiness.

Expected result:

PILOT_HEALTH_CHECK=PASSED

Allowed non-final states:

PILOT_HEALTH_CHECK=PASSED_WITH_WARNINGS
PILOT_HEALTH_CHECK=FAILED

---

10.3 Health Check Result

HEALTH_CHECK_STARTED_AT=
HEALTH_CHECK_COMPLETED_AT=
HEALTH_CHECK_RESULT=
WARNINGS_TOTAL=
BLOCKING_FAILURES_TOTAL=
OUTPUT_SHA256=

- [ ] Blocking failures equal zero.
- [ ] Warnings were reviewed.
- [ ] Warnings were accepted or remediated.
- [ ] Health-check output was preserved.
- [ ] Health-check output hash was recorded.

Result:

HEALTH_CHECK_READY=

---

11. Rollback Readiness

11.1 Rollback Plan

- [ ] Runtime stop procedure is documented.
- [ ] Previous configuration can be restored.
- [ ] Previous toolkit version can be restored.
- [ ] Temporary credentials can be revoked.
- [ ] Temporary firewall rules can be removed.
- [ ] Temporary accounts can be removed.
- [ ] Partial evidence can be preserved.
- [ ] Failed execution can be marked explicitly.
- [ ] New execution identifiers will be used after rollback.
- [ ] Manual review path is defined.

Record:

ROLLBACK_OWNER=
ROLLBACK_PROCEDURE=
PREVIOUS_CONFIGURATION_PATH=
PREVIOUS_TOOLKIT_VERSION=

Result:

ROLLBACK_READY=

---

12. Support Readiness

12.1 Support Contacts

- [ ] Pilot support contact is known.
- [ ] Participant technical contact is known.
- [ ] Pilot operator contact is known.
- [ ] Validator contact is known.
- [ ] Security contact is known.
- [ ] Escalation path is documented.
- [ ] Support timezone is documented.
- [ ] Support window is documented.
- [ ] Emergency contact method is documented where applicable.

Record:

SUPPORT_CONTACT=
PARTICIPANT_CONTACT=
PILOT_OPERATOR_CONTACT=
VALIDATOR_CONTACT=
SECURITY_CONTACT=
SUPPORT_TIMEZONE=
SUPPORT_WINDOW=
EMERGENCY_CONTACT_METHOD=

Result:

SUPPORT_READINESS=

---

12.2 Support Evidence

The participant can provide:

- [ ] health-check output;
- [ ] configuration hash;
- [ ] toolkit version;
- [ ] runtime release identifier;
- [ ] execution identifier;
- [ ] scenario identifier;
- [ ] redacted logs;
- [ ] evidence manifest;
- [ ] validator output;
- [ ] failure timeline.

Result:

SUPPORT_EVIDENCE_READY=

---

13. Test Execution Readiness

13.1 Scenario Plan

- [ ] Baseline scenario is defined.
- [ ] Transport migration scenario is defined where applicable.
- [ ] Interface loss scenario is defined where applicable.
- [ ] Temporary blackout scenario is defined where applicable.
- [ ] NAT rebinding scenario is defined where applicable.
- [ ] Replay scenario is defined.
- [ ] Duplicate scenario is defined.
- [ ] Concurrency scenario is defined where applicable.
- [ ] Evidence export scenario is defined.
- [ ] Evidence tamper rejection scenario is defined.
- [ ] Final stability scenario is defined where applicable.

Result:

SCENARIO_PLAN_READY=

---

13.2 Scenario Attribution

Each scenario will include:

- [ ] unique execution identifier;
- [ ] scenario identifier;
- [ ] execution group identifier;
- [ ] start timestamp;
- [ ] end timestamp;
- [ ] configuration hash;
- [ ] runtime release identifier;
- [ ] operator identity;
- [ ] expected result;
- [ ] observed result;
- [ ] explicit verdict;
- [ ] evidence references.

Result:

SCENARIO_ATTRIBUTION_READY=

---

13.3 Retry Rules

- [ ] A failed execution identifier will not be reused.
- [ ] An interrupted execution identifier will not be reused.
- [ ] A retry will use a new execution identifier.
- [ ] Partial evidence will be preserved.
- [ ] Retry reason will be recorded.
- [ ] Configuration changes will create a new execution group where required.
- [ ] Runtime upgrades will create a new execution group.

Result:

RETRY_POLICY_READY=

---

14. Final Blocking Review

The deployment must not continue when any of the following is true:

- [ ] Pilot scope is undefined.
- [ ] Acceptance criteria are undefined.
- [ ] Environment identity is missing.
- [ ] Operating system is unsupported.
- [ ] System time is not synchronized.
- [ ] Resources are insufficient.
- [ ] Evidence directory is unavailable.
- [ ] Rollback path is unavailable.
- [ ] Authorization is missing or expired.
- [ ] Certificate validation fails.
- [ ] Runtime identity cannot be verified.
- [ ] Configuration is invalid.
- [ ] Configuration hash is missing.
- [ ] Secrets are embedded in repository files.
- [ ] Network targets are unapproved.
- [ ] Failure injection may affect unrelated systems.
- [ ] Health check failed.
- [ ] Critical security issue remains unresolved.
- [ ] Support contacts are unavailable for a mandatory supported pilot.
- [ ] Required evidence cannot be produced.

Blocking review result:

BLOCKING_FAILURES_TOTAL=
BLOCKING_REVIEW_RESULT=

Expected result:

BLOCKING_REVIEW_RESULT=PASSED

---

15. Warning Review

Record all non-blocking warnings.

Warning ID| Category| Description| Impact| Accepted by
| | | | 

Possible warning categories:

ENVIRONMENT_WARNING
NETWORK_WARNING
CONFIGURATION_WARNING
SECURITY_WARNING
TOOLKIT_WARNING
EVIDENCE_WARNING
SUPPORT_WARNING
TIMELINE_WARNING

Checklist:

- [ ] Every warning has an owner.
- [ ] Every warning has an impact statement.
- [ ] Every warning has an acceptance or remediation decision.
- [ ] Relevant warnings will appear in the final report.
- [ ] No warning hides a blocking failure.

Warning review result:

WARNINGS_TOTAL=
WARNINGS_ACCEPTED=
WARNINGS_REMEDIATED=
WARNING_REVIEW_RESULT=

---

16. Final Approval

Participant Technical Contact

NAME=
ROLE=
APPROVAL=
DATE=

Pilot Operator

NAME=
ROLE=
APPROVAL=
DATE=

Pilot Owner

NAME=
ROLE=
APPROVAL=
DATE=

Validator

NAME=
ROLE=
READINESS_CONFIRMATION=
DATE=

---

17. Final Checklist Result

The pre-deployment checklist may pass only when:

SCOPE_AND_ACCEPTANCE_READY=YES
HOST_SECURITY_READY=YES
DIRECTORY_PREPARATION_READY=YES
NETWORK_CONNECTIVITY_READY=YES
NETWORK_ISOLATION_READY=YES
AUTHORIZATION_READY=YES
CREDENTIAL_HANDLING_READY=YES
CERTIFICATE_VALIDATION_READY=YES
TOOLKIT_SOURCE_VERIFIED=YES
REQUIRED_COMPONENTS_PRESENT=YES
CONFIGURATION_VALIDATION_READY=YES
CONFIGURATION_INTEGRITY_READY=YES
SECURITY_BOUNDARY_READY=YES
DATA_PROTECTION_READY=YES
EVIDENCE_DIRECTORY_READY=YES
EVIDENCE_INTEGRITY_READY=YES
AUDIT_EVENTS_READY=YES
HEALTH_CHECK_READY=YES
ROLLBACK_READY=YES
SUPPORT_READINESS=YES
SCENARIO_PLAN_READY=YES
BLOCKING_FAILURES_TOTAL=0

Final result:

PRE_DEPLOYMENT_CHECKLIST=PASSED

Possible non-final results:

PRE_DEPLOYMENT_CHECKLIST=PASSED_WITH_WARNINGS
PRE_DEPLOYMENT_CHECKLIST=FAILED
PRE_DEPLOYMENT_CHECKLIST=INCOMPLETE

---

Final Principle

No pilot runtime should be activated because the environment appears ready.

Activation should occur only when readiness is documented, attributable, reviewable, and supported by explicit checks.

Final readiness state:

ENVIRONMENT_READY=YES
AUTHORIZATION_READY=YES
CONFIGURATION_READY=YES
EVIDENCE_BOUNDARY_READY=YES
RUNTIME_ACTIVATION_AUTHORIZED=YES