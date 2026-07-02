# Ceramic Hang V5 Readiness Ledger

Current status: L1 concept packet — V5 explorer-readiness scaffold; explicitly
not a V5 build-packet candidate.

This repo already has useful V4-style packet material, a starter OpenSCAD
model, SVG presentation drawings, a print packet, and an explorer. The V5
issue remains open because the current repository evidence does not yet prove
fabrication-ready ceramic geometry, measured tuning behavior, or the required
render/export/media chain.

## V5 Deliverable Status

| Deliverable | Current repo evidence | Status | Next gate |
| --- | --- | --- | --- |
| Parametric CAD | `cad/ceramic_hang_master.scad` with named parameters | Partial | Trace each build-critical dimension to measured shrinkage, shell, and tone-field evidence before treating it as fabrication authority. |
| Vector design plates + DXF | SVG previews in `drawings/` and `site/assets/drawings/` | Partial | Add DXF export only after the governing geometry is reviewed; register it as fabrication authority when valid. |
| Hero render | `images/hero-concept.svg` concept artwork | Missing | Generate a Blender/OpenSCAD-derived render and log provenance. |
| Exploded diagram | None | Missing | Create an assembly-axis diagram from the reviewed CAD source. |
| AI/artistic shots | None | Optional/missing | If added, mark as concept/story support only in `visual-output-register.csv`. |
| Annotated print plate | `print-packet.pdf` exists, but no V5 callout plate | Partial | Add an assembly plate whose callouts cite design-table cells. |
| MCP provenance log | `cad/mcp-session-log.md` records no MCP artifact sessions yet | Partial | Add one row per MCP session when OpenSCAD, Blender, Illustrator, Adobe, or image generation tools create artifacts. |

## Unknowns That Block Promotion

- Firing shrinkage is still an assumption until the actual clay body has fired
  shrinkage bars or coupons.
- Tuning behavior is still unknown until fired tone-field coupons and shells
  produce measured pitch and decay data.
- Shell geometry is a concept scaffold until reviewed CAD, measured templates,
  or fired prototype measurements confirm it.
- Strike-zone dimensions and tone-field relief are not build authority until
  coupled to measured acoustic outcomes.
- Existing visuals are concept/reference artifacts only; no DXF/CAD/design
  table row currently carries fabrication authority.

## Explorer Notes

`explorer.html` should remain the studio review surface for the packet. It
should show the readiness gates above prominently and link the visual authority
register before viewers inspect concept drawings.
