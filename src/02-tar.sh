#!/usr/bin/env bash

# Script to create tar of source (patch files) for rpm

# rpmbuild disallows having "." and ".." within archive. go to path and take only files
cd ../patch
tar -zcvf sailfish-os-patch-jolla-email-readability-0.1.tar.gz .

# return to src path
cd ../src
echo "Created tar from patch files: sailfish-os-patch-jolla-email-readability-0.1.tar.gz"

mv ../patch/sailfish-os-patch-jolla-email-readability-0.1.tar.gz /Users/kay/rpmbuild/SOURCES
echo "Moved tar to: /Users/kay/rpmbuild/SOURCES"
