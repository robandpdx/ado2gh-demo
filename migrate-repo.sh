#!/bin/bash

if [ "$LOCK_SOURCE_REPO" = "true" ]; then
    LOCK_SOURCE_REPO_FLAG="lock-ado-repo"
    gh ado2gh lock-ado-repo \
        --ado-org $SOURCE_ORG \
        --ado-team-project $SOURCE_TEAM_PROJECT \
        --ado-repo $SOURCE_REPO
fi

gh ado2gh migrate-repo \
    --ado-org $SOURCE_ORG \
    --ado-team-project $SOURCE_TEAM_PROJECT \
    --ado-repo $SOURCE_REPO \
    --github-org $TARGET_ORG \
    --github-repo $TARGET_REPO
