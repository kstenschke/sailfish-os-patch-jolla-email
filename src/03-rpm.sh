#!/usr/bin/env bash

# Script to create the rpm package

# Precondition: Install rpm if not yet. (mac: brew install rpm)

rpmbuild -bb ../rpm/sailfish-os-patch-jolla-email-readability.spec

echo ""
echo "RPM files in /Users/kay/rpmbuild/RPMS are:"
ls -al /Users/kay/rpmbuild/RPMS
