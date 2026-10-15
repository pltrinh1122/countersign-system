# Craft registry (instance state in the craft zone, Rule-11 property 2; #156)

One row per *installed* Tended craft, written by `dyad craft install`, never by hand. A craft authored
in this system has no row (`dyad craft list` shows it as `authored`). `sha256` is `distribute.archive_sha256`
of the installed tree — the proof it is unmodified; `source` is where the archive came from (a `world`
reference); `d-work` the installing d-work. No date: a second install of the same version changes nothing.

| craft | version | source | sha256 | d-work |
|-------|---------|--------|--------|--------|
| countersign | 0.3.0 | countersign-0.3.0.tar.gz | 7f6614a7b650ee0214125d4967b785204bc0970001e3170bb3a1bf91d2ea974b | #3 |
