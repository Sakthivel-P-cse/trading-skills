#!/bin/sh
mkdir -p "$HOME/.codex/skills"
for skill in "$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)"/skills/*; do ln -s "$skill" "$HOME/.codex/skills/$(basename "$skill")" || exit; done
