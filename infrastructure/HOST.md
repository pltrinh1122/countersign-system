# Host record (countersign-system)

This system's host, as observed. It is the *operating* profile's record (dyad-system #175): the
core's declared kernel lives in `dyad/infrastructure/INFRASTRUCTURE.md`; this system's own operating
rows in `infrastructure/INFRASTRUCTURE.md`; what the host must provide at session start below.
Re-observe on a new host or container; the newest observation wins.

## Runtime
- Claude Code on the web: an ephemeral cloud container, reclaimed after inactivity. Nothing
  installed in it survives; the durable form of a host setting is the environment's setup script
  (Operator-side, claude.ai environment settings) or the ops script below.
- OS: Ubuntu 24.04.4 LTS, Linux 6.18.44 (observed 2026-09-25).

## Kernel (Rule-14 property 2), observed 2026-09-25
| component | pin (core manifest) | observed here | how it is found |
|-----------|---------------------|---------------|-----------------|
| Claude Code | observed, not pinned | 2.1.282 | the harness |
| Git | observed | 2.43.0 | `PATH` |
| Python | 3.12+ | 3.13.12 (`/usr/bin/python3.13`); default `python3` is 3.11.15, below the pin | `dyad/bin/dyad-python` resolves the first conforming interpreter on `PATH` (`python3.13`, `python3.12`, `python3`) |
| pydantic | 2.13.5 | absent from the resolved interpreter | the venv below |

## Python environment (the venv definition)
- Definition: `infrastructure/python/requirements.txt` — `pydantic==2.13.5`, equal to the core's pin.
- Built by: `infrastructure/ops/2-h1-kernel-setup.sh` into `.venv/` at the repo root (untracked,
  `.gitignore`), with the interpreter `dyad-python` resolves.
- Used by: putting `.venv/bin` first on `PATH` (the setup script, or the environment's setup script);
  `dyad-python` then resolves the venv's `python3.13`, so nothing in the core changes.

## What a session must find present
1. `claude`, `git` on `PATH`.
2. An interpreter satisfying the pin (`dyad/bin/dyad-python -c 'import sys; print(sys.version)'`).
3. `pydantic==2.13.5` importable by that interpreter once a plan first imports it.
4. `git config core.hooksPath dyad/hooks` set in the checkout.
