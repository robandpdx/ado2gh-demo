#!/bin/bash

if [ "$LOCK_SOURCE_REPO" = "true" ]; then
    LOCK_SOURCE_REPO_FLAG="--lock-ado-repo"
else
    LOCK_SOURCE_REPO_FLAG=""
fi

# Generate a script for all repositories in a project with all options
gh ado2gh generate-script \
    --ado-org $SOURCE_ORG \
    --ado-team-project $SOURCE_REPO \
    --github-org $TARGET_ORG \
    --all $LOCK_SOURCE_REPO_FLAG