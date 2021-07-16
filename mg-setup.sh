#!/usr/local/env bash

mkdir -p ~/.mg.d/

cat <<EOF > ~/.mg
make-backup-files
backup-to-home-directory
EOF
