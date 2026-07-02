# Design Intent — ceramic-hang rev A

- Master CAD: `cad/ceramic_hang_master.scad` (sha256: ebf39bd5179677d78b8095f7f690f821d691c084450bb51212f70be1bb0c5449),
  driven by `Ceramic-Hang-Design.xlsx` (sha256: 4e7071316019f4bf731a3a1f666d8024961c79fe08fcf378dd6a57f2829fe695).
- Function: Slip-cast ceramic, handpan-inspired tonal vessel exploring raised/isolated ceramic tone
  fields on a shallow resonant shell, coupled with Helmholtz gu-port resonance (design.md "Governing
  Model"). Research instrument first — success is measured, not assumed.
- Environment: hand-held/lap-played percussion idiophone; brittle ceramic shell, so handling and
  strike-force limits matter more than for a steel handpan.
- Target qty: 1 (research prototype). Deadline: TBD. Budget/unit ceiling: TBD.

## Critical dimensions (carry tolerances)

| Feature | Nominal | Tolerance | Why critical | Source |
| --- | --- | --- | --- | --- |
| Outer diameter | 18 in | design target, unfired | overall form | design.md "Design Targets" |
| Overall height | 4.5 in | design target | shell volume / Helmholtz coupling | design.md "Design Targets" |
| Fired wall thickness | 0.22-0.30 in | experiment range | tone-field pitch, cracking risk | design.md "Design Targets" |
| Clay shrinkage | 12% | assumption until measured | master oversizing for all mold dims | design.md "Design Targets" (v5-readiness.md: blocks CAD->fabrication authority) |
| Gu (port) diameter | 3.5 in | first prototype | Helmholtz coupling | design.md "Design Targets" |
| Tone-field layout (G minor 9-note: G3 ding + Bb3-D5 outer fields) | see design.md "Target Note Layout" table | assumption; ceramic may prefer different geometry | tuning target | design.md "Target Note Layout" |

## Incidental (free for DFM)

- Exterior finish/glaze strategy (design.md "Design Targets" Finish row, TBD).
- Cosmetic surface texture, burnishing/oxide treatment.

## Must-nots (DFM may never violate)

- Never treat `cad/ceramic_hang_master.scad` dimensions as fabrication authority until traced to
  fired/measured shrinkage, shell, and tone-field evidence (v5-readiness.md "Unknowns That Block Promotion").
- Never skip fired shrinkage-bar measurement before scaling molds from the 12% assumption.
- Never assign final tone-field geometry before fired coupon tuning data exists (risks.md).

## Material intent

- Clay: Cone 6 stoneware or porcelain casting slip (design.md "Design Targets"; bom.csv CHG-BOM-001), TBD final selection.
- Mold: #1 pottery plaster (bom.csv CHG-BOM-002).
- Master: 3D printed upper/lower shell masters, oversized by measured shrinkage (bom.csv CHG-BOM-003/004).

## Stage status

Stage 0 intake complete 2026-07-01. This is an L1 concept packet (README/v5-readiness.md explicitly
deny V5 build-packet candidacy) — Gate A (Alpha shop compile) NOT yet run; no fired ceramic evidence
exists to promote any dimension out of concept_only/pending_measurement.
