#!/usr/bin/env bash

# Script to create tar of source (patch files) for rpm

tar -zcvf sailfish-os-patch-jolla-email-readability-0.1.tar.gz ../patch
echo "Created tar from patch files: sailfish-os-patch-jolla-email-readability-0.1.tar.gz"

mv sailfish-os-patch-jolla-email-readability-0.1.tar.gz /Users/kay/rpmbuild/SOURCES
echo "Moved tar to: /Users/kay/rpmbuild/SOURCES"
