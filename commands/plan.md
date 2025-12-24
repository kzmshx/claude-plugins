# /pdd:plan

Create or continue a PLAN.md for the current branch.

## Usage

```
/pdd:plan [description]
```

## Environment Variables

- `PDD_WORKSPACE_DIR`: Base directory for PLAN/NOTES (default: `.claude/pdd`)
- `PDD_LOCALE`: Output language - `en` or `ja` (default: `en`)

## Behavior

1. Get current branch name via `git branch --show-current`
2. Resolve path: `{PDD_WORKSPACE_DIR}/{branch}/PLAN.md`
3. If PLAN.md exists, read and continue editing
4. If not, create through discussion with user

## Instructions

PLAN.md is created collaboratively through discussion, not by filling a fixed template.

1. Ask what the user wants to accomplish
2. Clarify goals, constraints, and approach through conversation
3. Write PLAN.md reflecting the discussion
4. Review with user before starting implementation

Structure depends on the task. Adapt sections to fit the work:

- Feature: Overview, Background, Goal, Design, Tasks
- Bug fix: Problem, Cause, Solution, Tasks
- Research: Question, Scope, Method
- Refactor: Current State, Target State, Approach

Do not start implementation until user approves the plan.
