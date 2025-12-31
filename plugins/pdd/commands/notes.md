# /pdd:notes

Create a NOTES file capturing discoveries and decisions from the current session.

## Usage

```
/pdd:notes [focus]
```

## Arguments

- `focus` (optional): Specific aspect to focus on (e.g., "debugging session", "design decision")

## Environment Variables

- `PDD_WORKSPACE_DIR`: Base directory for PLAN/NOTES (default: `.claude/pdd`)
- `PDD_LOCALE`: Output language - `en` or `ja` (default: `en`)

## Behavior

1. Get current branch name via `git branch --show-current`
2. Generate timestamp via `date +%Y%m%d_%H%M%S`
3. Create: `{PDD_WORKSPACE_DIR}/{branch}/NOTES_{timestamp}.md`

## Purpose

NOTES capture what was discovered during implementation that wasn't anticipated in PLAN:

- Unexpected issues and how they were resolved
- Technical decisions made during implementation
- Insights that should be preserved for future sessions
- Deviations from the original plan and why

## Instructions

1. Review the current conversation for significant discoveries
2. Extract key findings, decisions, and solutions
3. Write concise, factual notes
4. Use h2 headings with content directly below (avoid deep nesting)
5. Include relevant links or references within each section

NOTES are meant to bridge sessions. Focus on information that would be lost when the conversation ends and would be valuable to resume work later.
