# Self-diagnostic 2026-10-15
**Diagnosed:** head f0b981a · K 4 · P 3 · evidence-sha256 9666ac66ce3a701c3c0e3c670b0e64d0709d02c86a08d8d90f3b4e7aa6c8a694

The first run, d-work #3 (plan revision 5, order step 3), on `main` at f0b981a, which is countersign 0.3.0 installed
(PR #11) with this system's run-book, levels file and `/diagnose` (PR #12). Run-book
`infrastructure/runbooks/self-diagnostic.md`; model `crafts/countersign/rules/self-diagnostic.md`. Every step ran
through `dyad runbook run self-diagnostic <step>` and every event is in
`infrastructure/runbooks/events/self-diagnostic.jsonl`. No previous record, so every rotation starts at its first item.
`health`: `ok   [levels] 33 modules: 3 unit, 30 integration`, on `main`
(`self-diagnostic-20261015T235202Z-health`).

## Level 1 — unit × coded check
**Result:** pass
Evidence: `L1 unit: 3 modules, 0 failed` (`self-diagnostic-20261015T235204Z-unit`), which ran
`crafts/countersign/tests/test_levels.py` (21 tests), `dyad/tests/test_hostadapter.py` (12) and
`dyad/tests/test_playbooks.py` (4). Findings: none.

## Level 2 — system × coded check
**Result:** pass
Evidence: `L2 integration: 30 modules, 0 failed` (`self-diagnostic-20261015T235207Z-integration`). The `evidence`
step (`self-diagnostic-20261015T235334Z-evidence`) printed "changed besides the event store: none" and ran in a clean
clone at f0b981a on `main`, with `origin/main` at f0b981a: `dirty=no`, no FAIL line,
`evidence-sha256=9666ac66ce3a701c3c0e3c670b0e64d0709d02c86a08d8d90f3b4e7aa6c8a694`. The block's warnings were all
present before this d-work:
- the sysadmin rules' Agent-process tokens;
- no `dyad-operator`, `countersign` or `sysadmin` release tag here;
- `pydantic` with no token;
- the `sysarch` and `syseng` paths core Rules cite, unresolved because neither craft is installed here.

Findings: none.

## Level 3 — unit × prose claim
**Result:** fail
Evidence: `invariant pass: 26 ok, 0 FAIL` (`self-diagnostic-20261015T235505Z-invariants`). `units`
(`self-diagnostic-20261015T235505Z-units`) printed `28 units, 4 read`:
- `crafts/countersign/projectors/project_countersign.py`
- `crafts/countersign/scripts/levels.py`
- `crafts/sysadmin/guards/changelog.py`
- `crafts/sysadmin/guards/events.py`

Method:
- One reader per unit took the docstring and the owning rule as the unit's contract. It listed each clause, looked
  for the test or invariant that would fail if the clause broke, and reported the strongest clause it could break by
  a concrete mutation that nothing caught. It tried the mutation in a scratch copy, never the repository.
- Three independent refuters then tried to defeat each landed attack, each working in its own copy. The attack
  stands unless two of the three refute it.
- That made 16 read-only agents. All four attacks stand, 3 of 3 unrefuted.
- One reader's first scratch copy overwrote another reader's scratch directory. The refuters' separate copies
  reproduced every finding, so this changes no result.

| claim | attack | result | codify? |
|-------|--------|--------|---------|
| `project_countersign.py` covers its stated contract | name a contract clause whose breaking no invariant and no test would catch | landed. `check()` refuses a proposal whose author is not an `agent` party (`rules/schema.md:37`; `rules/interaction.md:50`, where I1 is marked checked by `check()`; the docstring at :320). Deleting `project_countersign.py:337-338` leaves all 40 tests green, because every test builds a valid author or uses `collect()` output, whose author is always `agent`. Would cover: a `ValidatorTests` case with a `human` author, asserting "is not an agent". The same reading found more uncovered clauses: the duplicate-id and escalation-opens-an-explicit-act refusals; countersignature-subject resolution (I7); `main()`'s exit code (never called by a test); the numeric sort; D2's `other`; D3's `==`; D4's done-first and oldest-commit order; D5's legacy map, whole-token match and peeled hash; D8's order | no: the remedy is a test, and the clause is already code |
| `levels.py` covers its stated contract | the same | landed. Either form exits 1 and judges nothing when one of the script's own invariants is false (`levels.py:36`, restated at :25-26). Changing `:255` to `sys.exit(main())` leaves all 21 tests green, because every CLI test calls `main()` in-process and the `__main__` block never runs. Would cover: running the module as `__main__` with a false `TREE_INVARIANTS` entry, asserting exit 1 and no stdout. Weaker clauses also uncovered: a bare `list` raises instead of exiting 2; a `#` inside a token is not a comment | no: the remedy is a test |
| `changelog.py` covers its stated contract | the same | landed. A **destructive** row needs a non-empty undo (`changelog.py:12-13`; `rules/host-mutation.md:41-42`). Changing `:118` to test only `reversible`, or setting `LOGGED = ("reversible",)`, leaves all 20 tests green, because the only destructive fixture row has a non-empty undo. Would cover: a destructive row with an empty undo in `test_missing_undo_fails_for_reversible_and_destructive_only` | no: the remedy is a test |
| `events.py` covers its stated contract | the same | landed. An event's id is `<instance>-<ts>-<name>` (`events.py:11-12`). Removing the `-<name>` suffix test at `:63` leaves every test green: the one id fixture fails only on its prefix, and the `<ts>` part is not checked at all. Would cover: a `ShapeTests` case whose id carries the right prefix and another name. Weaker clauses also uncovered: a rewrite of a last line with no trailing newline; a JSON line that is valid but not an object; `range`'s output | no: the remedy is a test |

Findings: four landed attacks, each a contract clause no invariant or test covers. Under the model (§5), each is a
proposal for a plan of its own, or a `backlog` row if the Operator's disposition opens one. Nothing was repaired in
this run.
- The first two belong to the countersign craft and are changed in the repository that authors it (dyad-system).
- The last two belong to the sysadmin craft, which the core release bundles.

## Level 4 — system × prose claim
**Result:** not run (gate)
L3 did not pass, so L4 was not read (model §3). Out of order, and so recorded as an incident (Rule-3), the run had
already run L4's three print steps before L3's reading decided the gate: `acts`, `pairs` and `host`
(`self-diagnostic-20261015T235505Z-acts`, `self-diagnostic-20261015T235506Z-pairs`,
`self-diagnostic-20261015T235506Z-host`), each exit 0. The run-book gates those steps on L3's coded half only, so no
step stopped them. No L4 claim was read into this record, and the next run's L4 starts at its first items.

**Cursor:** units=crafts/sysadmin/guards/ops_scripts.py rows=none pairs=none
