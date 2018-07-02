#!/usr/bin/env bash

# Create unified diff file
#diff -ur src/original src/modified > ./patch/unified_diff.patch

# Correct paths in diff file
#grep -rli 'src\/original\/' * | xargs -I@ sed -i '' 's/src\/original\//\//g' @
#grep -rli ' src\/modified\/' * | xargs -I@ sed -i '' 's/ src\/modified\//.orig \//g' @

# Create tar.xz from patch files
# Note: rpmbuild disallows having "." and ".." within archive...
# ... change into path of patch files, and take only files
cd ./patch
tar -cJf ../sailfish-os-patch-jolla-email-readability-0.1.tar.xz .

# Return to root path
cd ../

# Move tar into rpmbuild/SOURCES
mv ./sailfish-os-patch-jolla-email-readability-0.1.tar.xz ~/rpmbuild/SOURCES

# Copy spec into rpmbuild/SPECS
#cp rpm/sailfish-os-patch-jolla-email-readability.spec ~/rpmbuild/SPECS

# Create the rpm package
# (Precondition: rpm must be installed. (mac: brew install rpm))
#rpmbuild -ba ~/rpmbuild/SPECS/sailfish-os-patch-jolla-email-readability.spec
rpmbuild -ba ./rpm/sailfish-os-patch-jolla-email-readability.spec
