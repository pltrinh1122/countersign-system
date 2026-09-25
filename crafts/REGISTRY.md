# Craft registry (instance state in the craft zone, Rule-11 property 2; #156)

One row per *installed* Tended craft, written by `dyad craft install`, never by hand. A craft authored
in this system has no row (`dyad craft list` shows it as `authored`). `sha256` is `distribute.archive_sha256`
of the installed tree — the proof it is unmodified; `source` is where the archive came from (a `world`
reference); `d-work` the installing d-work. No date: a second install of the same version changes nothing.

| craft | version | source | sha256 | d-work |
|-------|---------|--------|--------|--------|
| countersign | 0.2.0 | pltrinh1122/dyad-system craft/152-countersign-0.2 a2321ee | f9a1f9bb1140ca6d6d78da95d9521064c84ca57fc15a6807a23ab82f8c2837af | #1 |
