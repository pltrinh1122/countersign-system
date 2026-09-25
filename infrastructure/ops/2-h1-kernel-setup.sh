#!/usr/bin/env bash
# d-work: #2
# class: reversible
# undo: rm -rf .venv
# change-log: infrastructure/CHANGELOG.md row "#2 H1"
# postcondition: .venv/ exists at the repo root, built with the interpreter dyad-python resolves, and imports pydantic 2.13.5
# destructive: none
set -euo pipefail
git rev-parse --short HEAD; sha256sum "$0"
cd "$(git rev-parse --show-toplevel)"

postcondition() {
  [[ -x .venv/bin/python ]] && .venv/bin/python -c 'import sys, pydantic; sys.exit(0 if sys.version_info[:2] >= (3, 12) and pydantic.VERSION == "2.13.5" else 1)'
}
postcondition && { echo "already satisfied"; exit 0; }

set -x
PY=$(dyad/bin/dyad-python -c 'import sys; print(sys.executable)')
[[ -x .venv/bin/python ]] || "$PY" -m venv .venv
.venv/bin/python -m pip install --quiet -r infrastructure/python/requirements.txt
set +x

postcondition || { echo "postcondition failed"; exit 1; }
echo "kernel: $(claude --version 2>/dev/null | head -1 || echo 'claude not on PATH'); $(git --version); $(.venv/bin/python --version); pydantic $(.venv/bin/python -c 'import pydantic; print(pydantic.VERSION)')"
echo "to use it: export PATH=\"$(pwd)/.venv/bin:\$PATH\""
echo "done"
