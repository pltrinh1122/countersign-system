# System Infrastructure — instance contribution (Rule-14)

countersign-system's own operating rows, as observed on it: the part of the one manifest that is
instance, not core (`dyad/infrastructure/INFRASTRUCTURE.md` holds the kernel and the authoring
library). Same seven cells; read by `dyad/guards/infra/manifest.py` from the host path (preference
`host-path: infrastructure`; dyad-system #175). A component declared here and anywhere else fails.

| component | partition | version | purpose | license | replacement | profile |
|-----------|-----------|---------|---------|---------|-------------|---------|
| venv + pip (PyPI) | library | stdlib `venv`, pip as bundled by `ensurepip` of the resolved interpreter (observed 2026-09-25) | builds `.venv/` from `infrastructure/python/requirements.txt` so the kernel's pinned pydantic is importable (`infrastructure/ops/2-h1-kernel-setup.sh`) | PSF-2.0 / MIT | the environment's setup script installing the same pin system-wide | operating |
