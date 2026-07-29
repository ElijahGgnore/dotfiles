#!/bin/bash

PROFILE="$1"

cat > ~/.config/noctalia/profile.toml <<EOF
[include]
files = ["./profiles/$PROFILE.toml"]
EOF
