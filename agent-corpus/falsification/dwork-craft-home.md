# Falsification record — where d-work belongs: countersign craft, cos craft, or core (d-work #4)

**Claim (Operator, the text of an N to #3 revision 3, row #4):** "`d-work` should be a `countersign`
craft and not a `cos` craft." It has two halves:
- **H1:** d-work belongs to a countersign craft.
- **H2:** d-work does not belong to a cos craft.

**Primary reading.** The claim is about the d-work **framework**:
- Rules 3/7/15/16;
- the transition table;
- the fence, the plan gate and the provenance guard;
- the stores;
- the `dwork`/`ledger`/`session` CLI and the play-books;
- the model and its terms.

The live referent is dyad-system-296, a cabinet session the Operator prompted on 2026-10-14 to
"formalize the architecture of the `d-work` framework … a finite-state-machine to complete a
countersigned work session".

H1 is read three ways:
- **R1:** d-work becomes part of `crafts/countersign/`.
- **R2:** d-work becomes its own Tended craft.
- **R3:** the model goes to countersign and the mechanism stays in the core.

"cos" is read against every recorded referent:
- the externally authored dsys-side cos craft (dyad-system-99, dyad-system-127);
- the cos **seat** of dyad-system-252/253/285/290/296, whose latent surfaces are the backlog rows
  dyad-system-303 to 306 (bus craft, cos surface and runner, edge register, the cos's standing rules);
- dsys's CoS plane and `roles/cos/`.

No `crafts/cos/` exists on any ref of dyad-system (257 refs), dsys-repo or this repository. Two other
readings are answered as well: "cos" as a slip for "core" (B6), and routing (C1).

**Method.** A workflow of 16 read-only agents worked over dyad-system fe92def, dsys-repo 397e6c8 and
this repository at f5738a6:
- 4 mappers, which recorded 93 facts;
- 5 attackers, one per lens (classification, dependency, distribution, ontology, a steelman against
  H1), with 50 attacks between them;
- one adversarial verifier per lens, which overturned 13 of the 50;
- a synthesis, then a completeness critic, whose high and medium objections are folded in.

The main Agent re-checked the load-bearing facts on dyad-system 14e625e: Rule-3:52-53 and :66 cite
countersign by path; only sysadmin declares `BUNDLED_WITH_CORE`; `interaction.md:5` still says "no
core Rule reads it"; D8's `OPENING_WORDS` lacks the mandate entry.

**Result column.**
- *lands*: the attack succeeds against the claim as stated.
- *fails*: the claim holds against the attack.
- *scoped*: the claim holds only in the narrowed form given.

| # | Attack | Result | Survivor |
|---|--------|--------|----------|
| A1 | Rule-4: Rules 3/7/15/16 bind the Agent's process, so they are Agent Rules wherever written. A Tended rule carrying them would not bind: Rule-8 E6 says it is obeyed conservatively and reported as misplaced | lands on H1 (R1, R2) | Rules 3/7/15/16 and Rule-2's Binding stay in `dyad/rules/` |
| A2 | Rule-5's kernel test: Rule-2's Binding and Rule-3's completion evidence rely on the fence, the plan gate, the provenance guard and the transition table. Countersign's own F5 classes plan gate, presence file and evidence block as dyad-system profile | lands on H1 | d-work's mechanism stays in the core |
| A3 | With countersign unbundled, a core-only install would lose the fence. The remedy, bundling, is held by dyad-system-232 | scoped | Contingent on the Operator lifting dyad-system-232. A1 and A2 are the decisive bars |
| A4 | Rule-11 p1: rows, plans, provenance, sessions and traces are instance | scoped | H1 can concern only d-work's definition; the store stays `<instance>/d-work/` |
| A5 | R2: a separate d-work craft | lands | No separate craft. Its mechanism fails as in A1 and A2; its model text collapses into R3 |
| A6 | R3: the FSM moves to countersign | scoped | The concrete six-state table (`dyadlib.STATES/NEW_STATES/TRANSITIONS`, Rule-16's sentence, the fence) stays core, the single source. Countersign may *describe* an abstract act lifecycle: namespaced positions, the five primitives as its alphabet, and `TRANSITIONS` projected onto it by a derivation rule. `Act.state` stays a free string |
| A7 | Countersign holds nothing of d-work | fails | It already holds the model d-work instantiates: act, modes, mandate, the answer grammar with `amend`, the escalate edge, mode lifecycles. dyad-system-290 adopted these into Rule-3 |
| A8 | R1 makes one system's specifics the cross-system standard | lands on R1 | d-work is the dyad family's realization of an Act. dsys has no d-work and maps HarnessRun, DecisionRecord and AutomatonRun to Act |
| A9 | R3, as dyad-system-290 realized it, is coherent | lands | Countersign contradicts the core it is cited for (F2). R3 is a direction until the craft is repaired |
| A10 | The status quo obeys Rule-11 p2 | lands | Core Rule-3 cites unbundled, release-held countersign by path (F1) |
| A11 | The master term `d-work` covers every ledger row | lands | Accreted rows and disposition-opened `backlog` rows are not prompt-opened. Countersign's *act* covers both (F4) |
| A12 | In this system, d-work arrives through the countersign craft | lands | It arrives only by core upgrade. This system's core is 0.10.1, and its Rule-3 is byte-identical to dyad-system b7d644e, before dyad-system-290 |
| B1 | A cos craft is a legitimate home: the cos manages delegation and session state, and dsys's CoS triggers run transitions | fails | No cos craft exists. dyad-system's cos is a seat that holds attention, not authority. dsys's CoS run is itself a HarnessRun with governance scope: a client of the run FSM, not its owner |
| B2 | d-work is needed only alongside a cos | fails | This system keeps a ledger with no cos, and dyad-system-156's client runs the core alone |
| B3 | Steelman: the cos exists for disposition flow, so d-work's disposition half is cos content | scoped | Every disposition mechanism the cos work produced landed in core Rule-3 or countersign vocabulary. Some cos designs write, but only as core amendments. Only read-side surfaces over d-work are cos-shaped (dyad-system-304's board) |
| B4 | Steelman: mandates and implicit mode came through the cos session, so they are cos content | fails | They are countersign terms, adopted by citing `crafts/countersign/`. The cos was the occasion, countersign the home |
| B5 | H2 is vacuous | fails | It has live referents: dyad-system-99/127, -290 (authored as the cos session), -296 (relayed by the cos) and -303 to -306 |
| B6 | "cos" is a slip for "core" (cf. dyad-system-178's "`core` craft") | if so, H2 fails | The core keeps d-work (A1, A2) |
| C1 | Routing reading: "a countersign craft d-work" means a row tagged `countersign`, not relayed through the cos | holds trivially | #3 revision 4 adopts it (dyad-system-308 carries `countersign` and was opened by this system's session) |

**Verdicts.**
- **H1** lands as stated under R1 and R2. It survives scoped under R3.
- **H2** holds under every recorded referent of cos (B1-B5). It fails only if "cos" meant "core" (B6).

## Survivor
d-work is dyad-system's **profile of a Countersign Act**.
- **The core craft owns d-work whole:**
  - Rules 3/7/15/16 and Rule-2's Binding;
  - the transition table;
  - the fence, the plan gate and the provenance guard;
  - the stores under `<instance>/d-work/`;
  - the `dwork`/`ledger`/`session` CLI;
  - the play-books.
- **The countersign craft owns only the system-neutral model d-work instantiates:**
  - act, mode, mandate, the answer grammar, the escalate edge and the mode lifecycles;
  - dyad-system-296's abstract act lifecycle.

  It holds these in descriptive form and checks them against d-work by projection. It binds nothing,
  and nothing in the core imports it.
- **No cos seat, surface or craft owns any part of d-work.** A cos reads it.

The survivor is true only once both conditions hold:
- countersign has been brought level with dyad-system-290 (F2, F3);
- the Operator has disposed of F1 before `dyad-operator` is next tagged.

## Findings (dyad-system's; reported, not disposed)
| # | Finding | Evidence | Owner |
|---|---------|----------|-------|
| F1 | Core Rule-3 cites `crafts/countersign/` by path while countersign is unbundled and held from release. Plan dyad-system-290 said the bundling trigger "does not fire". Core files the references guard does not scan quote countersign too. The references guard only warns | dyad-system `dyad/rules/RULE-3-d-work.md:52-53, :66`; RULE-11 p2; `plans/290.md:429-432`; `dyad/templates/PREFERENCES.md`; `dyad/playbooks/disposition-digest.md`; `git grep BUNDLED_WITH_CORE` (sysadmin only) | Rule-11. The Operator chooses one of three: amend p2, bundle, or cite by name |
| F2 | Countersign is stale against dyad-system-290. "No core Rule reads it". §7 lists `amend` and `mode` as not adopted. §2 calls amend a new row. D1/D3/D4 and CRAFT.md:25 name only `ledger-pr-merge` as a mandate. §5 classifies 8 of 12 preferences, `accretion` among the missing (I7 gap). The projector hard-codes `explicit`. D8 would flag mandate-accreted rows as self-initiated (derived, not observed) | `crafts/countersign/rules/interaction.md:5, :38, §5, §7`; `schema.md` D1-D4; `projectors/project_countersign.py:56` | countersign craft (a craft-zone d-work in dyad-system) |
| F3 | `interaction.md:46` ("Binding in all three modes") contradicts its own :7 ("binds no system's agent") | same file | countersign craft |
| F4 | The vocabulary's `d-work` ("opened by an Operator prompt") no longer covers every ledger row | `dyad/vocabulary/VOCABULARY.md`; RULE-3 Scope vs Ledger | Rule-6 / Rule-3 |
| F5 | `check_tended` matches case-sensitively, misses backticked plan-`Y`/Done-`Y`, and never scans `templates/commands/`, whose adapters carry Agent-process text | `dyad/guards/agent/rules.py`; `dyad/guards/craft/crafts_rules.txt` | Rule-4 |
| F6 | The craft-instantiation play-book cites plan #153 "in this instance" for the D-criteria; that instance's #153 is a different d-work | `dyad/playbooks/craft-instantiation.md:8-9` | Rule-3 |
| F7 | `disposition-digest.md` says Rule-3 and Rule-2 read it; no Rule names it | `dyad/playbooks/disposition-digest.md:9-11` | Rule-3 |
| F8 | Row dyad-system-99 is still `open` although its remedy shipped | `rows/99.md`; `crafts/sysarch/rules/projection.md` | Operator disposition |
| F9 | For dyad-system-296's cabinet: the abstract FSM is countersign description with `TRANSITIONS` untouched; "architecture … entity records" is sysarch's store and projection patterns plus the core play-books. The relayed prompt names `crafts/sysarch/rules/` "(entities …)", where no `entities.md` exists | `plans/296.md`; `crafts/sysarch/rules/stores.md`; `crafts/sysarch/projectors/` | The Operator, who alone can carry it to that session |

## Not verified
- Which referent of "cos" the Operator meant (all are answered).
- A core-only install of dyad-system was not run. A10's "warn, never fail" is read from
  `references.py:179-197` and an in-memory simulation.
- F2's I6 misclassification is derived from the code, not observed.
- The workstation-ledger precedents behind the D-criteria and dyad-system-159/160 are known only
  through quotation.

Disposition: see ledger #4.
