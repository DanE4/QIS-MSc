#!/usr/bin/env bash
set -euo pipefail

if [[ ! -d quartz ]]; then
  echo "Missing quartz submodule. Run: git submodule update --init --recursive"
  exit 1
fi

cp -f quartz.config.ts quartz.layout.ts quartz/
mkdir -p quartz/content
rsync -a --delete content/ quartz/content/
