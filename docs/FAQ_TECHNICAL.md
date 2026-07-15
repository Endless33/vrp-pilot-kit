# VRP Technical FAQ

## Purpose

This document answers common technical questions regarding the public VRP pilot.

The answers are intentionally limited to publicly documented behavior, integration contracts, validation procedures, and exported evidence.

Protected runtime implementation details are intentionally excluded.

---

# Frequently Asked Questions

## What is included in the public pilot?

The public pilot includes documentation describing:

- deployment guidance;
- integration boundaries;
- validation procedures;
- evidence formats;
- report templates;
- observable runtime behavior.

The public pilot does not include protected runtime implementation.

---

## Is the protected runtime source code included?

No.

The protected runtime implementation is outside the scope of the public pilot.

Participants evaluate observable behavior rather than internal implementation.

---

## Can the pilot be evaluated without access to runtime internals?

Yes.

The pilot is specifically designed so that engineering evaluation can be performed using exported evidence and documented validation procedures.

---

## What is exported during a pilot?

Typical exported artifacts include:

- deployment summaries;
- evidence bundles;
- validation reports;
- verification reports;
- engineering observations;
- final verdicts.

---

## Does exported evidence contain internal runtime state?

No.

Exported evidence intentionally excludes confidential runtime implementation details.

Only observable artifacts intended for independent validation are exported.

---

## Can the pilot be deployed on different infrastructure?

Yes.

The public deployment model is infrastructure-neutral.

Organizations may adapt the deployment guidance to their own environments provided that documented pilot requirements are satisfied.

---

## Can organizations modify the deployment examples?

Yes.

The example deployment materials are intended as reference documentation.

Participants may adapt them to their own operational environments.

---

## Is a specific operating system required?

No.

The public documentation does not require a specific operating system unless explicitly stated within pilot requirements.

---

## Is a specific cloud provider required?

No.

The public pilot is not tied to a specific infrastructure vendor.

---

## How is validation performed?

Validation is performed using documented procedures and exported evidence.

Independent reviewers evaluate observable artifacts rather than protected runtime implementation.

---

## How are engineering conclusions produced?

Engineering conclusions should be based upon:

- documented observations;
- exported evidence;
- verification results;
- reproducible validation.

Implementation visibility is not required.

---

## Can exported evidence be independently reviewed?

Yes.

Independent review is one of the primary objectives of the public pilot.

---

## What remains confidential?

The following remain outside the public pilot:

- protected runtime source code;
- proprietary algorithms;
- internal authority logic;
- confidential runtime state;
- recovery implementation;
- cryptographic implementation details.

---

## What determines the final pilot outcome?

The final outcome is determined by documented validation procedures, exported evidence, engineering review, and the recorded final verdict.

---

## Where can additional information be found?

Additional information is available throughout the public pilot documentation, including:

- deployment guidance;
- architecture overview;
- validation model;
- evidence model;
- trust model;
- report templates;
- operational assumptions.

---

## Summary

The public VRP pilot is designed to support meaningful engineering evaluation through documented interfaces, observable behavior, exported evidence, and independent validation while preserving the confidentiality of the protected runtime implementation.