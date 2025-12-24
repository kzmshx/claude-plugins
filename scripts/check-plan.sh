#!/bin/bash

# Check if PLAN.md exists for current branch
# Returns additional context for SessionStart hook

set -e

# Get current branch
BRANCH=$(git branch --show-current 2>/dev/null || echo "")

# Skip if not in git repo or on main/master
if [ -z "$BRANCH" ] || [ "$BRANCH" = "main" ] || [ "$BRANCH" = "master" ]; then
  exit 0
fi

# Determine workspace directory
WORKSPACE_DIR="${PDD_WORKSPACE_DIR:-.claude/pdd}"
PLAN_PATH="${WORKSPACE_DIR}/${BRANCH}/PLAN.md"

# Check if PLAN exists
if [ -f "$PLAN_PATH" ]; then
  echo '{"hookSpecificOutput":{"additionalContext":"PDD: PLAN.md exists at '"$PLAN_PATH"'. Read it to understand the current task context."}}'
else
  echo '{"hookSpecificOutput":{"additionalContext":"PDD: No PLAN.md found for branch '"$BRANCH"'. If starting implementation, consider running /pdd:plan first."}}'
fi
