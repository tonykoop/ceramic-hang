# Ceramic Hang

Status: L1 concept packet — V5 explorer-readiness scaffold; explicitly NOT a
V5 build-packet candidate until the missing measured ceramic evidence and V5
media/export artifacts are present.

Slip-cast ceramic handpan-inspired tonal vessel: a research build for exploring whether a fired ceramic shell can produce playable handpan-like tone fields while retaining the sculptural freedom of 3D printed mold masters.

This is not a conventional steel handpan clone. Steel handpans rely on plastic forming, hammer tuning, and elastic plate behavior. Ceramic is brittle, damped, formulation-dependent, and mostly tunes before firing. This repo treats the idea honestly: first as an empirical acoustic study, then as a buildable instrument family if the test coupons speak.

## Start Here

- [design.md](design.md) - design intent, governing model, target G minor layout, assumptions, prototype ladder.
- [Ceramic-Hang-Design.xlsx](Ceramic-Hang-Design.xlsx) - parametric design table for shell geometry, gu resonance, tone-field targets, and validation inputs.
- [bom.csv](bom.csv) - bill of materials.
- [sourcing.csv](sourcing.csv) - supplier/search tracker with date-check fields.
- [cut-list.csv](cut-list.csv) - print, mold, fixture, and ceramic blank preparation list.
- [assembly-manual.md](assembly-manual.md) - shop workflow from CAD master through fired validation.
- [validation.csv](validation.csv) - measurement log for tone fields, shell/gu coupling, shrinkage, and cracking.
- [risks.md](risks.md) - red-team risk register with verification tests.
- [drawing-brief.md](drawing-brief.md) - drawing/CAD requirements and critical dimensions.
- [visual-output-register.csv](visual-output-register.csv) - visual authority
  register; current visuals are concept/reference only, not fabrication
  authority.
- [v5-readiness.md](v5-readiness.md) - V5 deliverable ledger and remaining
  blockers for issue #1.
- [visual-bom-brief.md](visual-bom-brief.md) - image-forward documentation plan.
- [evolution/](evolution/) - evolution-pipeline Stage 0 intake of the current
  concept-level master (Gate A not started).
- [ceramic-hang-starter.wl](ceramic-hang-starter.wl) - first-order plate + Helmholtz model starter.
- [cad/ceramic_hang_master.scad](cad/ceramic_hang_master.scad) - OpenSCAD starter for shell/mold concept geometry.

## Concept

The first serious target is an 18 inch ceramic tonal vessel in a G minor 9-note layout:

- Center ding: G3.
- Outer tone-field targets: Bb3, C4, D4, F4, G4, Bb4, C5, D5.
- Bottom gu port: tuned near the low-body resonance, not used as a primary melodic note.
- Clay target: Cone 6 stoneware or porcelain casting slip, measured shrinkage required.
- Manufacturing path: 3D printed master -> plaster mold -> slip-cast upper/lower shells -> bisque test -> glaze strategy -> final validation.

## Development Rule

Every prototype gets a build ID and a measured record. Ceramic handpan work will only become predictable if the measured data loops back into the next mold, thickness, tone-field, and firing choices.

## Related Repos

- [handpan](../handpan) - conventional handpan design table placeholder.
- [ceramic-tongue-drum](../ceramic-tongue-drum) - ceramic idiophone research neighbor.
- [udu](../udu) - slip-cast ceramic vessel and dual Helmholtz reference.
- [tongue-drum](../tongue-drum) - idiophone documentation done bar.

## License

[MIT](LICENSE) - see LICENSE for details.
