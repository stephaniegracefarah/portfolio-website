# PRD template

A PRD I would actually finish. One to three pages. If a section takes more than a few sentences, the problem is probably not clear yet.

Copy this file, replace everything in [brackets], and delete any section that does not apply.

---

# [Project name]: PRD

**Owner:** [name]
**Status:** [Draft / Approved / Building / Shipped]
**Last updated:** [date]

## Changelog

Newest first. One line per change, with the reason. A PRD that changes silently is worse than one that never changed.

| Date | Change | Why |
|------|--------|-----|
| [date] | [What changed] | [What you learned that forced it] |

## 1. Problem

[Two or three sentences. Who has this problem, what they do about it today, and why that is not good enough. Write it so someone who has never met you understands it.]

## 2. Who it is for

[One paragraph. A specific person or a specific situation, not "users". If it is only for you, say so.]

## 3. What success looks like

[Two to four outcomes you could check. Prefer things you can observe ("I stop updating the spreadsheet by hand") over things you can only feel ("it feels better").]

## 4. Requirements

| ID | Requirement | Priority |
|----|-------------|----------|
| R1 | [A user can do the core thing in under a minute] | Must |
| R2 | [The requirement that will shape the most decisions] | Must |
| R3 | [Something useful you are deliberately leaving for later] | Later |

Priority is Must or Later. If everything is Must, nothing is.

## 5. Out of scope

[The most important section. List what you are explicitly not building, and one line on why. This is what stops the build from quietly growing past the problem.]

- [Thing you will not build]: [why]
- [Thing you will not build]: [why]

## 6. Open questions

| Question | Who decides | Needed by |
|----------|-------------|-----------|
| [Something you do not know yet] | [Name] | [Before which requirement] |

Move each one to the changelog when it is answered.

## 7. Risks and assumptions

- **Assumption:** [Something you are treating as true without proof]. *How I will find out:* [check]
- **Risk:** [What could make this fail]. *If it happens:* [what you will do]
