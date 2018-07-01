#!/usr/bin/env bash

# Script to create the rpm package

# Precondition: Install rpm if not yet installed: brew install rpm

rpmbuild ../rpm/sailfish-os-patch-jolla-email-readability.spec
