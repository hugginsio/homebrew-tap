#!/usr/bin/env bash

cat >README.md <<EOF
# homebrew-tap

Homebrew Formulae by @hugginsio, powered by @goreleaser.

## Available Formulae

EOF

for file in Formula/*; do
	if [ -f "$file" ]; then
		echo "- \`brew install hugginsio/tap/$(basename $file .rb)\`" >>README.md
	fi
done
