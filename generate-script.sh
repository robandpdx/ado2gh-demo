#!/bin/bash

# Generate a script for all repositories in a project with all options
gh ado2gh generate-script \
    --ado-org $SOURCE_ORG \
    --ado-team-project $SOURCE_REPO \
    --github-org $TARGET_ORG \
    --all