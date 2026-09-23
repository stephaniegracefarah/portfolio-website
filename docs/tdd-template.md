# Technical design doc template

The document I hold every implementation to, whether the builder is me, a teammate, or a coding agent. It carries its own change and status log, so a deviation from the plan gets written down with its reasoning right where the plan lives.

Copy this file, replace everything in [brackets], and delete any section that does not apply.

---

# [Project name]: Technical design

**Status:** [Draft / Approved / Building / Shipped]
**PRD:** [link]
**Last updated:** [date]

## Change and status log

Newest first. Every deviation from this document goes here, with the reason, before or as the code changes.

| Date | Change or status | Why |
|------|------------------|-----|
| [date] | [What changed, or which phase is now done] | [What forced it] |

## How to read this document

[Three or four lines for the person building. What is fixed (the invariants and the data model), what is flexible, and the rule for ambiguity: if this document does not answer a question, stop and ask instead of guessing.]

## 1. System overview

[Two or three sentences: the shape of the system and the constraint that drove it, for example "has to run for free on a static host".]

[Diagram or list of components and how they talk to each other.]

## 2. Tech stack

| Layer | Choice | Why |
|-------|--------|-----|
| [Frontend] | [Choice] | [One line] |
| [Backend / data] | [Choice] | [One line] |
| [Hosting] | [Choice] | [One line] |

## 3. Key decisions

One table per decision that had a real trade-off. Include the option you rejected and what it would have given you, so the reasoning survives.

### [Decision name]

| Option | Why it was attractive | Why I did not pick it |
|--------|-----------------------|-----------------------|
| [Option A] | [Its main advantage] | [The cost that ruled it out] |
| [Option B, chosen] | [Why it fit the requirements best] | [The trade-off I accepted] |

## 4. Data model

[Every table, collection, or file: its fields, types, and what each one means. Call out anything derived rather than stored, and where it is computed.]

## 5. Interfaces

[API endpoints, functions, or events: inputs, outputs, and who is allowed to call them. Note where credentials live and which components must never see them.]

## 6. Invariants

Things that must always be true, whatever else changes. A builder who breaks one has found a bug in the design or in the code, and should say so.

- [For example: totals are always computed from source rows, never stored]
- [For example: the browser never holds a service credential]

## 7. Edge cases

| Case | Expected behavior |
|------|-------------------|
| [Empty state, bad input, duplicate, timezone, partial failure] | [What should happen] |

## 8. Build plan

Small phases, each one shippable and each with a check that decides whether it is done.

| Phase | Scope | Done when |
|-------|-------|-----------|
| 1 | [Smallest thing that runs end to end] | [Acceptance criteria, including which tests pass] |
| 2 | [Next slice] | [Acceptance criteria] |

## 9. Tests

[Which behavior needs unit tests, which needs an integration check, and what is verified by hand. Nothing moves to the next phase until its tests pass.]

## 10. Review checklist

Before approving a phase:

- [ ] Every requirement touched by this phase is met
- [ ] Every invariant in section 6 still holds
- [ ] New behavior has tests, and they pass
- [ ] Anything that deviated from this document is in the log, with the reason
- [ ] No secrets in the repo, the browser, or the logs
- [ ] Failure modes from section 7 are handled, not just the happy path

## 11. Out of scope

[What this design deliberately does not cover, copied from the PRD, plus anything technical you are postponing.]
