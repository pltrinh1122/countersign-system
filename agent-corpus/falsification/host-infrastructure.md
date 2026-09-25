# Falsification record — countersign-system's host infrastructure (d-work #2)

**Claims (Operator, row #2):** `zones` is a type in the architecture schema with the enum {agent, craft,
preferences, infra}, defined via pydantic (revision 1); without a host-infrastructure definition
countersign cannot start operating (revision 2); `infrastructure/` is technically a venv definition;
authoring and operating are separate and need two infrastructures. The last two were falsified in
pltrinh1122/dyad-system d-work dyad-system-175 (its plan file, S1–S6 and P1–P6) and are summarised here.

| # | Attack | Result | Survivor |
|---|--------|--------|----------|
| A1 | `zones` is a type in the Countersign schema | Refuted | The core schema's 14 `$defs` hold no zone; `rules/schema.md` F5 keeps zone a profile-only extension. |
| A2 | …or a type anywhere | Refuted | Zones are data: `dyad/guards/infra/containment.py`'s table, Rule-1's. |
| A3 | the enum is {agent, craft, preferences, infra} | Refuted then, true now | Refuted on core 0.9.1 (five zones, `workstation` included); true since core 0.10.0 with `host-zone: infra` (this d-work, PR 3). |
| A4 | …scoped to the zones in use | Survives | Only those four were ever inhabited here. |
| A5 | the schema is defined via pydantic | Refuted | Hand-written JSON Schema 2020-12, validated by stdlib code. |
| A6 | pydantic is in use | Refuted as fact, survives as intent | A kernel row, now importable through the venv this d-work defines. |
| B1 | countersign cannot operate without its own host definition | Refuted | Row #1 ran end to end on the borrowed core manifest. |
| B2 | the definition it ran on was its own | Refuted | It was dyad-system's; fixed at the source by dyad-system-175 (core keeps kernel + authoring rows). |
| B3 | the frame points at a host record here | Refuted then, fixed | `infrastructure/HOST.md` is the host record the frame's host reference now resolves to via `host-path`. |
| B4 | every kernel component is present | Refuted for pydantic | Present once `infrastructure/ops/2-h1-kernel-setup.sh` builds `.venv/`. |
| B5 | "can't start" holds for pydantic specifically | Survives, scoped | Only for pydantic-defined schema, which nothing imports yet. |
| B6 | the host is durable | Refuted | Ephemeral container; the durable form is the setup script, recorded in `HOST.md`. |
| V1 | `infrastructure/` is a venv | Refuted | A venv is generated and never tracked (`.venv/` is ignored). |
| V2 | …a venv definition | Survives for the Python slice | `infrastructure/python/requirements.txt` is exactly that, one file among the host records. |
| V3 | …all of it | Refuted | Claude Code, Git, the container, run-books, the change log are not a venv. |
| V4 | no venv definition existed | Refuted | The pins were declared in the core manifest; the executable form is new here. |
| V5 | the system ran in a venv | Refuted | `dyad-python` resolved system interpreters; the venv is found through `PATH`, no core change. |
| S/P | authoring vs operating need two infrastructures | Survives as one kernel, two profiles | See dyad-system plan dyad-system-175, revision 2; implemented there (core 0.10.0), consumed here. |

Disposition: see ledger #2.
