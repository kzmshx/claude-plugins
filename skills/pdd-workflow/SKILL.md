# PDD Workflow

Plan-Driven Development workflow for AI-assisted development.

## When to use

Use this workflow when:

- Starting implementation of a new feature or task
- Working on bug fixes that require investigation
- Performing refactoring or technical improvements
- Any task that benefits from upfront planning

## Workflow

### Before Implementation

1. Check if the user is on a feature branch (not main/master)
2. Check if PLAN.md exists at `{PDD_WORKSPACE_DIR}/{branch}/PLAN.md`
   - Default: `.claude/pdd/{branch}/PLAN.md`
3. If PLAN.md does not exist, suggest: "Would you like to create a plan first? Run `/pdd:plan`"
4. If PLAN.md exists, read it to understand the context and tasks

### During Implementation

1. Follow the tasks outlined in PLAN.md
2. When encountering unexpected issues or making unplanned decisions, note them mentally
3. At natural breakpoints (completing a subtask, solving a difficult problem), suggest: "Would you like to capture these findings? Run `/pdd:notes`"

### Suggesting NOTES

Suggest creating NOTES when:

- An unexpected issue was discovered and resolved
- A technical decision was made that wasn't in the plan
- The approach deviated from the original plan
- Significant debugging or investigation was performed
- The session is about to end with important context

## Environment Variables

- `PDD_WORKSPACE_DIR`: Base directory (default: `.claude/pdd`)
- `PDD_LOCALE`: Output language - `en` or `ja` (default: `en`)

## Philosophy

- PLAN is a hypothesis created through discussion
- Implementation reveals unknowns
- NOTES preserve discoveries across sessions
- Human decides timing; AI executes
