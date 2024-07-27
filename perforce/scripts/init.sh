#!/bin/bash

# Setup directories
mkdir -p "$P4ROOT"
mkdir -p "$P4DEPOTS"
mkdir -p "$P4CKP"

# Restore checkpoint if symlink latest exists
if [ -L "$P4CKP/latest" ]; then
  echo "Restoring checkpoint..."
  /opt/scripts/restore.sh
  rm "$P4CKP/latest"
else
  echo "Create empty or start existing server..."
  /opt/scripts/setup.sh
fi

p4 login <<EOF
$P4PASSWD
EOF

echo "Perforce Server starting..."
until p4 info -s 2> /dev/null; do sleep 1; done
echo "Perforce Server [RUNNING]"

## Remove all triggers
echo "Triggers:" | p4 triggers -i
