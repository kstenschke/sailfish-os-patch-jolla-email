#!/usr/bin/env bash

# Script to create the unified diff for the patch

diff -u -r original modified > ../patch/unified_diff.patch

echo "Please update file paths manually in patch/unified_diff.patch before commit/releasing"
