#!/usr/bin/env bash
set -e
# shellcheck source=./scripts/common.bash
source "$(dirname "$0")/common.bash"
source "$(dirname "$0")/utils.sh"

###########################################################
# GitHub CLI Login
###########################################################
log "Check GitHub auth status"
if ! gh auth status; then
    log 'Login with GitHub CLI'
    gh auth login
fi
