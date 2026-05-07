# Ceramic Hang Capstone Print Packet

Generated: 2026-05-06
Packet folder: `/mnt/c/Users/Tony/Documents/GitHub/ceramic-hang`

## File Map

| File | Purpose |
| --- | --- |
| `design.md` | Project intent, catalog metadata, assumptions, and validation plan. |
| `bom.csv` | Starter bill of materials with part categories, quantities, drawing refs, and notes. |
| `sourcing.csv` | Supplier/search tracker with specs, price/date fields, lead time, substitutes, and risks. |
| `cut-list.csv` | Rough/final stock sizes, material, grain/orientation, operations, yield, and offcuts. |
| `drawing-brief.md` | Manufacturing drawing and technical product sketch brief. |
| `assembly-manual.md` | Shop-facing sequence, tools, fixtures, safety, tuning, finishing, and maintenance notes. |
| `validation.csv` | Target/measured values, tolerance, environment, result, and tuning/build action log. |
| `supplier-rfq.md` | Supplier email/request-for-quote starter. |
| `visual-bom-brief.md` | Art direction for an image-forward visual BOM. |
| `wolfram-starter.wl` | Wolfram starter for physics, optimization, visualization, and validation. |
| `README.md` | Project artifact. |
| `family-spec.csv` | Project artifact. |
| `photo-shotlist.md` | Project artifact. |
| `risks.md` | Project artifact. |

<div class="page-break"></div>

## design.md

Project intent, catalog metadata, assumptions, and validation plan.

# Ceramic Hang Design

## Design Intent

Design a slip-cast ceramic, handpan-inspired tonal vessel that explores raised/isolated ceramic tone fields on a shallow resonant shell. The project is a research instrument first: the goal is to learn whether molded ceramic tone fields can produce musically useful fundamentals and partials after firing, and what clay body, wall thickness, tone-field geometry, and firing schedule make that repeatable.

The visual target is an approachable 18 inch handpan-like form, but the engineering target is more careful: a ceramic tonal vessel whose final design may diverge from steel handpans if the material asks for a different geometry.

## Governing Model

This instrument is governed by coupled plate/shell vibration plus Helmholtz body resonance.

```text
tone_field_f1 ~= (kappa / (2*pi)) * (h / a^2) * sqrt(E / (rho * (1 - nu^2)))
```

Where `h` is local tone-field thickness, `a` is effective field radius, `E` is Young's modulus, `rho` is density, `nu` is Poisson ratio, and `kappa` is an empirical boundary/shape coefficient. For ceramic this equation is a sanity check, not a final predictor.

```text
f_gu = c/(2*pi) * sqrt(A_gu / (V_shell * L_eff_gu))
L_eff_gu = wall + 0.6 * sqrt(A_gu/pi)
```

The gu/port resonance should be measured as a coupled body mode. It may support warmth and sustain, but it will not tune the tone fields the way hammered steel tuning does.

## Design Targets

| Parameter | Target | Status |
| --- | ---: | --- |
| Outer diameter | 18 in | design target |
| Overall height | 4.5 in | design target |
| Fired wall thickness | 0.22-0.30 in | experiment range |
| Clay shrinkage | 12 percent | assumption until measured |
| Shell volume | 600-850 in3 | derived estimate |
| Gu diameter | 3.5 in | first prototype |
| Clay body | Cone 6 stoneware or porcelain casting slip | TBD |
| Finish | Exterior-only glaze or burnished/oxide surface | TBD |
| Primary key | G minor 9-note layout | assumption |

## Target Note Layout

| Field | Note | Target Hz | Function | First geometry assumption |
| --- | --- | ---: | --- | --- |
| Ding | G3 | 196.00 | center fundamental | 4.0 in raised oval/circle |
| T1 | Bb3 | 233.08 | low outer field | 3.4 in oval |
| T2 | C4 | 261.63 | outer field | 3.2 in oval |
| T3 | D4 | 293.66 | outer field | 3.0 in oval |
| T4 | F4 | 349.23 | outer field | 2.75 in oval |
| T5 | G4 | 392.00 | outer field | 2.55 in oval |
| T6 | Bb4 | 466.16 | outer field | 2.35 in oval |
| T7 | C5 | 523.25 | outer field | 2.20 in oval |
| T8 | D5 | 587.33 | outer field | 2.05 in oval |

The note layout is intentionally marked as an assumption. Ceramic fields may prefer fewer larger notes, different intervals, or a tongue/slit hybrid if isolated plate fields do not ring cleanly.

## Manufacturing Strategy

Use a slip-cast two-shell body:

1. CAD an upper dome with raised tone-field islands and a lower shell with gu port.
2. 3D print master positives oversized by measured clay shrinkage.
3. Make plaster molds with clean registration and no trapped undercuts.
4. Slip cast upper and lower shells separately.
5. Join at leather-hard stage with a reinforced rim/luting band.
6. Bisque fire before any glaze commitment.
7. Measure tone fields, body modes, gu resonance, cracks, and distortion.
8. Iterate field thickness, island geometry, and clay body before decorative finishing.

## Prototype Ladder

| Prototype | Goal | Success criteria |
| --- | --- | --- |
| CHG-P0 tone coupon | Test isolated ceramic field shapes | At least one coupon rings with a clear decay and measurable pitch |
| CHG-P1 mini dome | Test 3 tone fields on a small shell | No cracks; pitch trend follows field size/thickness |
| CHG-P2 18 in blank | Test full shell casting, gu, seam, and body mode | Shell survives drying/bisque and gu resonance is measurable |
| CHG-P3 5-note vessel | First musical layout | Five fields within +/-75 cents after bisque or clear correction path |
| CHG-P4 9-note G minor | Full concept | Playable hand pattern, stable fields, acceptable sustain |

## Empirical Questions

- What clay body gives the longest decay without excessive fragility?
- Do raised tone fields, thinned tone fields, or cut/relief-bounded fields speak best?
- Does glaze damp the fields too much?
- Can tone fields be tuned at greenware/leather-hard stage accurately enough to survive firing?
- Is a 9-note layout realistic in ceramic, or should the first product be 5-7 notes?
- Should the final instrument become a ceramic tongue-handpan hybrid instead of a pure tone-field shell?

## Assumptions And Unknowns

- Elastic properties are derived estimates until test bars are fired and measured.
- No empirical ceramic handpan correction data exists yet in this repo.
- The screenshot reference is visual inspiration only; no supplier dimensions or pricing are used as source data.
- Final tuning may require new mold masters rather than post-fire correction.
- Structural safety matters: the instrument must survive hand strikes, thermal gradients, and transport.

<div class="page-break"></div>

## bom.csv

Starter bill of materials with part categories, quantities, drawing refs, and notes.

| item_id | category | item | qty | spec | make_buy | estimated_cost | source_note | drawing_ref | notes |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| CHG-BOM-001 | Clay | Cone 6 casting slip | 5 gal | Stoneware or porcelain casting slip with measured shrinkage | Buy | derived estimate $40-80 | Date-check before purchase | CHG-DRW-001 | Choose one clay body for the first controlled run. |
| CHG-BOM-002 | Mold | #1 pottery plaster | 75 lb | Absorbent pottery plaster for upper/lower shell molds | Buy | derived estimate $50-90 | Date-check before purchase | CHG-DRW-002 | Large dome molds will consume more plaster than udu/ocarina molds. |
| CHG-BOM-003 | Master | 3D printed upper shell master | 1 | Oversized by measured shrinkage with tone-field islands | Make | derived estimate $40-200 | Print or outsource | CHG-DRW-003 | Segmented print acceptable if seams are filled and sealed. |
| CHG-BOM-004 | Master | 3D printed lower shell master | 1 | Oversized by measured shrinkage with gu port reference | Make | derived estimate $25-150 | Print or outsource | CHG-DRW-004 | Lower shell can be simpler than upper shell. |
| CHG-BOM-005 | Fixture | Drying support cradle | 1 | Breathable foam or plaster cradle | Make | derived estimate $10-40 | Shop-made | CHG-DRW-005 | Prevents dome sagging and rim distortion. |
| CHG-BOM-006 | Fixture | Firing setter or support ring | 1 | Kiln-safe support for shell | Make/Buy | derived estimate $20-120 | Date-check refractory options | CHG-DRW-006 | Must not fuse to body or block shrinkage. |
| CHG-BOM-007 | Tools | Diamond files and burrs | 1 set | Fine diamond abrasive tools | Buy | derived estimate $15-40 | Date-check before purchase | CHG-VAL-001 | For cautious post-bisque edge cleanup only. |
| CHG-BOM-008 | Measurement | Tuner and microphone | 1 | Cent-accurate tuner plus recording mic | Buy | derived estimate $0-150 | Existing tools okay | CHG-VAL-002 | Use same setup across prototypes. |
| CHG-BOM-009 | Measurement | Scale and calipers | 1 set | Mass and dimensional tracking | Buy | derived estimate $0-80 | Existing tools okay | CHG-VAL-003 | Mass change helps track glaze/water loss. |
| CHG-BOM-010 | Finish | Exterior glaze or oxide wash | 1 batch | Cone-compatible finish | Buy | derived estimate $15-60 | Date-check before purchase | CHG-DRW-007 | Test glaze damping on coupons before full shell. |
| CHG-BOM-011 | Protection | Rim wrap or bumper | 1 | Leather/rope/silicone rim protection | Buy/Make | derived estimate $10-75 | Date-check before purchase | CHG-DRW-008 | Protects fragile rim and improves handling. |
| CHG-BOM-012 | Transport | Padded bag/case | 1 | 18-20 in protective case | Buy | derived estimate $40-160 | Date-check before purchase | CHG-DRW-009 | Ceramic transport risk is high. |

<div class="page-break"></div>

## sourcing.csv

Supplier/search tracker with specs, price/date fields, lead time, substitutes, and risks.

| item_id | item | required_spec | search_terms | supplier_candidates | date_checked | unit_price | lead_time | substitution_rule | risk_note |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| CHG-SRC-001 | Cone 6 casting slip | Known shrinkage and mature Cone 6 firing schedule | cone 6 stoneware porcelain casting slip shrinkage | TBD |  |  |  | Substitute only after test bars | Unknown shrinkage invalidates master scale. |
| CHG-SRC-002 | #1 pottery plaster | Pottery mold plaster in bulk quantity | USG #1 pottery plaster 75 lb | TBD |  |  |  | Equivalent plaster acceptable if absorption is known | Wrong plaster can ruin slip-casting performance. |
| CHG-SRC-003 | Large 3D print service | 18 in dome master or printable master segments | large format PLA print service mold master | TBD |  |  |  | Segmented print acceptable with sealed seams | Print warp changes shell/tone-field geometry. |
| CHG-SRC-004 | Refractory support material | Kiln-safe setter/support ring | kiln furniture refractory support ring ceramic firing | TBD |  |  |  | Use known kiln-safe material only | Body can slump or stick during firing. |
| CHG-SRC-005 | Diamond abrasives | Fine diamond tools for ceramic cleanup | diamond burr needle file ceramic | TBD |  |  |  | Use fine grits and light pressure | Coarse grinding can chip tone fields. |
| CHG-SRC-006 | Recording microphone | Repeatable measurement mic | measurement microphone tuner musical instrument | TBD |  |  |  | Phone mic acceptable for rough first pass | Inconsistent measurement hides tuning trends. |
| CHG-SRC-007 | Rim protection | Soft durable bumper or wrap for 18 in rim | handpan rim rope leather bumper silicone edge guard | TBD |  |  |  | Prototype with removable wrap first | Rim protection may damp shell vibration. |
| CHG-SRC-008 | Transport case | Padded 18-20 in case | 18 inch handpan padded bag hard case | TBD |  |  |  | Oversize case acceptable | Transport damage is a major ceramic risk. |
|  |  |  |  |  |  |  |  |  |  |

<div class="page-break"></div>

## cut-list.csv

Rough/final stock sizes, material, grain/orientation, operations, yield, and offcuts.

| item_id | part | qty | rough_dimensions_in | final_dimensions_in | material | operation | fixture_or_tool | yield_note | notes |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| CHG-CUT-001 | Upper master print segments | 1 set | 20 x 20 x 5 envelope | 18 in fired-equivalent dome scaled for shrinkage | PLA or resin | 3D print and seal | Printer or print service | Segment if printer is smaller than master | Do not treat printed geometry as final until shrinkage bars are measured. |
| CHG-CUT-002 | Lower master print segments | 1 set | 20 x 20 x 3 envelope | 18 in fired-equivalent lower shell scaled for shrinkage | PLA or resin | 3D print and seal | Printer or print service | Segment if needed | Include gu reference and rim registration. |
| CHG-CUT-003 | Upper plaster mold | 1 | 24 x 24 x 8 cottle | Upper dome mold with registration | #1 pottery plaster | Mold pour | Cottle boards | Single-use setup until mold design proven | Plan parting line before printing final master. |
| CHG-CUT-004 | Lower plaster mold | 1 | 24 x 24 x 6 cottle | Lower shell mold with gu area | #1 pottery plaster | Mold pour | Cottle boards | Single-use setup until mold design proven | Keep lower mold simpler for first run. |
| CHG-CUT-005 | Drying cradle | 1 | 20 x 20 x 5 | Support upper shell without point loads | Foam/plaster/soft support | Cut/form | Knife/saw/rasp | Reusable | Must not trap moisture at rim. |
| CHG-CUT-006 | Firing support ring | 1 | 18-20 OD | Support shell rim or neutral zone | Refractory clay/fiber/kiln furniture | Form/cut | Kiln-safe tools | Reusable if it survives | Test with scrap before full shell. |
| CHG-CUT-007 | Tone coupons | 12 | 4 x 4 x variable thickness | 3-4 in test fields | Casting slip or slab clay | Cast/press small coupons | Simple plaster tiles | Many small tests beat one large failed shell | Label every coupon with clay/body/thickness. |
|  |  |  |  |  |  |  |  |  |  |

<div class="page-break"></div>

## drawing-brief.md

Manufacturing drawing and technical product sketch brief.

# Ceramic Hang Drawing Brief

## Required Views

- Top view with center ding, outer tone-field layout, note labels, field axes, and radial datum.
- Side section through center showing upper dome, lower shell, rim seam, wall thickness, and gu.
- Tone-field detail showing raised/thinned field geometry, relief boundary, thickness target, and strike zone.
- Bottom view showing gu diameter, lower shell curvature, support/rim datum, and optional feet or stand interface.
- Mold split view showing upper mold, lower mold, registration, cottle clearance, and release directions.
- Firing support view showing setter/ring contact areas and shrinkage clearance.

## Critical Dimensions

| Dimension | Why It Matters |
| --- | --- |
| Outer diameter | Ergonomics, mold size, shell volume |
| Dome height | Body volume and shell stiffness |
| Wall thickness | Tone, durability, drying risk |
| Tone-field major/minor axes | Primary pitch lever |
| Tone-field thickness | Primary pitch lever |
| Relief boundary depth/radius | Field isolation and crack risk |
| Gu diameter and wall | Helmholtz/body coupling |
| Rim seam width | Strength and joining repeatability |
| Master scale factor | Fired final geometry |

## CAD Notes

- Mark all values as fired dimensions or master dimensions.
- Keep tone-field geometry as named parameters.
- Add build ID and CAD revision to every drawing.
- Do not hide the `TBD` status of ceramic material constants.
- Include a validation table once measured data exists.

<div class="page-break"></div>

## assembly-manual.md

Shop-facing sequence, tools, fixtures, safety, tuning, finishing, and maintenance notes.

# Ceramic Hang Assembly Manual

## Scope

This manual covers the first ceramic handpan-inspired tonal vessel prototypes. It assumes the instrument is slip-cast from upper and lower shell molds and validated as a research build before decorative finishing.

## Tools And Setup

- CAD model for upper shell, lower shell, tone-field islands, gu, rim, and mold split.
- Large-format 3D printer or outsourced print service.
- Plaster mold-making setup: cottle boards, scale, bucket, plaster, mold release, clamps.
- Cone 6 casting slip and known firing schedule.
- Drying cradle and firing support ring.
- Calipers, scale, tuner, microphone, recording app, and spreadsheet/validation log.
- Diamond files/burrs for minimal cleanup.
- Kiln access.

## Process

1. **Make shrinkage bars**
   - Cast or form test bars from the actual clay body.
   - Fire through the intended bisque and glaze schedule.
   - Replace the assumed 12 percent shrinkage with measured data before final master printing.

2. **Build tone coupons**
   - Make small raised/thinned field coupons before a full shell.
   - Vary thickness, field diameter, relief depth, and clay body.
   - Record pitch, decay, cracking, and perceived strike feel.

3. **Model the first shell**
   - Model the fired target geometry first.
   - Apply `master_scale_factor = 1/(1 - shrinkage)`.
   - Keep the first upper shell conservative: fewer undercuts, larger radii, and enough wall thickness to survive handling.

4. **Print and seal masters**
   - Print upper and lower shell masters or segments.
   - Fill segment seams, sand, and seal.
   - Mark centerline, tone-field index, rim datum, and gu center.

5. **Make plaster molds**
   - Build cottle boxes with enough plaster thickness for a large dome.
   - Include registration and mold handling features.
   - Dry molds fully before slip casting.

6. **Slip cast shells**
   - Cast upper and lower shells separately.
   - Record slip batch, pour time, drain time, demold time, room condition, and measured wall thickness.
   - Support shells in a cradle as they stiffen.

7. **Join and refine**
   - Join upper/lower shells at leather-hard stage.
   - Smooth seam and rim.
   - Keep post-join tone-field carving minimal and documented.

8. **Dry slowly**
   - Dry under plastic with frequent inspection.
   - Watch tone-field edges, gu, rim seam, and support contact points.

9. **Bisque fire and measure**
   - Fire to the clay body's recommended bisque schedule.
   - Measure every tone field and the gu/body resonance before glazing.
   - Decide whether to continue, revise the mold, or return to coupons.

10. **Finish test**
    - Test glaze or oxide on coupons before the full body.
    - If glazing the full shell, leave tone-field strike zones and acoustic edges as controlled test variables.

11. **Final validation**
    - Record pitch, cents error, decay time, body mode, gu response, crack status, and playability.
    - Feed results back into the next design table revision.

## Shop Notes

- Do not chase final tuning on the first shell. The first shell is a measurement object.
- Never grind aggressively on fired tone fields.
- Add a protective rim strategy early; ceramic rims are vulnerable.
- Treat transport as a design requirement, not an afterthought.

<div class="page-break"></div>

## validation.csv

Target/measured values, tolerance, environment, result, and tuning/build action log.

| build_id | stage | date | clay_body | shrinkage_expected_pct | master_scale_factor | field_id | target_note | target_freq_hz | field_major_in | field_minor_in | field_thickness_in | measured_freq_hz | cents_error | decay_sec | crack_status | body_mode_hz | gu_hz | action | result | notes |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- | --- |
| CHG-P0 | bisque |  | TBD | 12 | 1.136 | coupon_A | G4 | 392 | TBD | TBD | TBD |  |  |  | none |  |  | Measure coupon before committing full dome |  |  |
| CHG-P0 | bisque |  | TBD | 12 | 1.136 | coupon_B | C5 | 523.25 | TBD | TBD | TBD |  |  |  | none |  |  | Compare thickness sweep |  |  |
| CHG-P1 | greenware |  | TBD | 12 | 1.136 | T1 | Bb3 | 233.08 | 3.4 | TBD | TBD |  |  |  | none |  |  | Check drying distortion |  |  |
| CHG-P1 | bisque |  | TBD | 12 | 1.136 | T1 | Bb3 | 233.08 | 3.4 | TBD | TBD |  |  |  | TBD |  |  | First shell tone-field measurement |  |  |
| CHG-P2 | bisque |  | TBD | 12 | 1.136 | Ding | G3 | 196 | 4.0 | TBD | TBD |  |  |  | TBD | TBD | TBD | Measure center ding and gu coupling |  |  |
| CHG-P2 | bisque |  | TBD | 12 | 1.136 | Gu | TBD | TBD | TBD | TBD | TBD |  |  |  | TBD | TBD | TBD | Tap/blow gu and record body mode |  |  |
| CHG-P3 | glaze_fire |  | TBD | 12 | 1.136 | TBD | TBD | TBD | TBD | TBD | TBD |  |  |  | TBD | TBD | TBD | Compare glaze shift and damping |  |  |
|  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |  |

<div class="page-break"></div>

## supplier-rfq.md

Supplier email/request-for-quote starter.

# Supplier RFQ - Ceramic Hang

Subject: RFQ - materials and services for slip-cast ceramic tonal vessel prototype

Hello,

I am prototyping an 18 inch slip-cast ceramic tonal vessel and need pricing/lead time for the following items or services:

- Cone 6 stoneware or porcelain casting slip with published shrinkage and firing schedule.
- #1 pottery plaster or equivalent pottery mold plaster, 75 lb class quantity.
- Optional large-format 3D print service for an 18-20 inch dome master, or segmented master parts.
- Kiln-safe refractory support material or custom setter/ring options.
- Optional padded case suitable for a fragile 18 inch ceramic handpan-style object.

Please include:

- Unit price and quantity breaks.
- Current availability and lead time.
- Shipping estimate to Santa Clara, CA.
- Technical data sheet or material specification.
- Recommended substitutes if the exact item is unavailable.

Notes:

- Shrinkage and firing schedule are critical.
- The first run is prototype/research scale, not production volume.
- If substitutions are proposed, please include material compatibility and firing temperature notes.

Thank you,

Tony Koop

<div class="page-break"></div>

## visual-bom-brief.md

Art direction for an image-forward visual BOM.

# Ceramic Hang Visual BOM Brief

## Goal

Create an image-forward one-page visual BOM that explains the ceramic handpan workflow at a glance: digital master, plaster mold, cast shells, tone fields, support fixtures, finishing, and measurement tools.

## Layout

- Header: "Ceramic Hang - Slip-Cast Tonal Vessel Research Build".
- Hero image: CAD/render or finished prototype clearly labeled as concept/prototype.
- Process strip: tone coupons -> master print -> plaster molds -> greenware shell -> bisque measurement -> final finish.
- BOM table: item number, material/tool, quantity, spec, make/buy, cost/date status, image.
- Physics inset: plate/tone-field model plus gu Helmholtz model.
- Validation inset: field ID, target note, measured pitch, decay, crack status.

## Required Images

- Upper shell CAD/render.
- Lower shell/gu CAD/render.
- Tone coupon test set.
- Mold halves.
- Greenware shell in drying cradle.
- Firing support/ring.
- Measurement setup with mic/tuner.
- Finished or bisque prototype.

Generated images or CAD renders should be marked as placeholders until replaced by shop photos.

<div class="page-break"></div>

## wolfram-starter.wl

Wolfram starter for physics, optimization, visualization, and validation.

```wolfram
(* Ceramic Hang first-order physics starter *)

ClearAll["Global`*"];

(* Units: SI inside formulas unless noted. *)
c = 343; (* m/s *)

(* Ceramic material placeholders. Replace with measured test-bar data. *)
Eceramic = 45*10^9;       (* Pa, derived estimate *)
rhoCeramic = 2200;        (* kg/m^3, derived estimate *)
nuCeramic = 0.23;         (* Poisson ratio estimate *)
kappaDisk = 10.2;         (* boundary/shape coefficient estimate *)

plateHz[h_, a_, E_, rho_, nu_, kappa_] :=
  (kappa/(2*Pi))*(h/a^2)*Sqrt[E/(rho*(1 - nu^2))];

helmholtzHz[area_, volume_, neck_] :=
  (c/(2*Pi))*Sqrt[area/(volume*neck)];

centsError[measured_, target_] := 1200*Log[2, measured/target];
targetFreq[midi_] := 440*2^((midi - 69)/12);

(* G minor 9-note target layout. *)
notes = {
  {"Ding", "G3", 196.00, 0.1016},
  {"T1", "Bb3", 233.08, 0.0864},
  {"T2", "C4", 261.63, 0.0813},
  {"T3", "D4", 293.66, 0.0762},
  {"T4", "F4", 349.23, 0.0699},
  {"T5", "G4", 392.00, 0.0648},
  {"T6", "Bb4", 466.16, 0.0597},
  {"T7", "C5", 523.25, 0.0559},
  {"T8", "D5", 587.33, 0.0521}
};

(* Solve rough thickness for each field using the first-order plate model. *)
roughThickness[targetHz_, radiusM_] :=
  targetHz*(2*Pi)/kappaDisk*radiusM^2/Sqrt[Eceramic/(rhoCeramic*(1 - nuCeramic^2))];

thicknessTable = Table[
  {id, note, hz, radius, roughThickness[hz, radius]},
  { {id, note, hz, radius}, notes}
];

thicknessTable // TableForm

(* Gu estimate, using a 3.5 in port and rough 700 in^3 body volume. *)
inch = 0.0254;
guDiameter = 3.5*inch;
wall = 0.25*inch;
bodyVolume = 700*inch^3;
guArea = Pi*(guDiameter/2)^2;
guLeff = wall + 0.6*Sqrt[guArea/Pi];
guHz = helmholtzHz[guArea, bodyVolume, guLeff];

guHz
```

<div class="page-break"></div>

## README.md

Project artifact.

# Ceramic Hang

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
- [visual-bom-brief.md](visual-bom-brief.md) - image-forward documentation plan.
- [wolfram-starter.wl](wolfram-starter.wl) - first-order plate + Helmholtz model starter.
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

<div class="page-break"></div>

## family-spec.csv

Project artifact.

| member_id | name | outer_diameter_in | height_in | target_key | note_count | wall_target_in | gu_diameter_in | prototype_goal |
| --- | --- | --- | --- | --- | --- | --- | --- | --- |
| CHG-P1 | Mini 3-field coupon dome | 10 | 2.75 | G minor subset | 3 | 0.24 | 2.0 | Validate tone-field geometry on a small shell. |
| CHG-P2 | Full blank body | 18 | 4.5 | None | 0 | 0.26 | 3.5 | Validate casting/drying/firing and gu/body mode. |
| CHG-P3 | Five-note vessel | 18 | 4.5 | G minor pentatonic | 5 | 0.24 | 3.5 | First musical ceramic shell. |
| CHG-P4 | Nine-note G minor | 18 | 4.5 | G minor | 9 | 0.22-0.30 | 3.5 | Full handpan-inspired target. |
|  |  |  |  |  |  |  |  |  |

<div class="page-break"></div>

## photo-shotlist.md

Project artifact.

# Ceramic Hang Photo Shotlist

## Purpose

Capture enough photos to support the README, capstone deck, visual BOM, print packet, and build-log site.

## Shot List

| Shot | Stage | Required Content | Notes |
| --- | --- | --- | --- |
| Hero concept | CAD/prototype | Full instrument on neutral background | Label render/prototype status. |
| Tone coupons | P0 | Array of test fields with labels | Include ruler/calipers. |
| Master print | CAD/print | Upper and lower master or print segments | Show scale. |
| Mold making | Plaster | Cottle, plaster pour, registration | Useful for makerspace documentation. |
| Greenware upper shell | Casting | Tone fields visible in drying cradle | Capture support method. |
| Lower shell/gu | Casting | Bottom port and rim seam | Show gu diameter reference. |
| Bisque measurement | Validation | Mic/tuner setup and field strike | Keep same setup for comparison. |
| Rim/protection | Fit | Bumper/wrap or stand contact | Important for real-world durability. |
| Final detail | Finish | Tone-field close-ups | Show surface finish and strike zones. |

<div class="page-break"></div>

## risks.md

Project artifact.

# Ceramic Hang Risks

| Risk ID | Category | Risk | Verification Test | Mitigation |
| --- | --- | --- | --- | --- |
| CHG-RISK-001 | Acoustic | Ceramic tone fields may not sustain like steel handpan fields. | Fire tone coupons and record decay time for at least 12 field geometries. | Pivot to fewer larger fields, a tongue/relief hybrid, or ceramic resonator with metal tone fields. |
| CHG-RISK-002 | Acoustic | First-order plate formulas may miss fired pitch by large margins. | Compare predicted vs measured frequency on coupons and first mini dome. | Build empirical correction table before full 9-note shell. |
| CHG-RISK-003 | Structural | Raised/thinned tone fields may crack during drying or firing. | Inspect coupon and P1/P2 fields at greenware, bone dry, bisque, and glaze stages. | Increase radii, reduce relief depth, slow drying, change clay body. |
| CHG-RISK-004 | Structural | Large slip-cast dome may slump or warp. | Fire a blank dome on proposed setter before tone-field body. | Add support ring, revise dome height, change firing schedule. |
| CHG-RISK-005 | Ergonomic | Ceramic body may be too heavy or fragile for lap playing. | Weigh P2 shell and test seated/stand support with non-playing handling. | Use stand/cradle, reduce wall thickness, design protected rim. |
| CHG-RISK-006 | Finish | Glaze may damp tone fields or change pitch. | Glaze matched coupons and compare before/after decay/pitch. | Use exterior-only, oxide wash, burnish, or unglazed tone zones. |
| CHG-RISK-007 | Supply | Clay body shrinkage may differ from assumption. | Fire shrinkage bars before printing final master. | Update design table and master scale factor. |
| CHG-RISK-008 | Fit/Finish | Post-fire grinding may chip tone fields. | Test diamond tool cleanup on scrap fired coupons. | Tune in greenware/bisque stage; avoid aggressive fired correction. |
| CHG-RISK-009 | Transport | Finished ceramic shell may break in normal handling. | Drop/handling tests only on failed/scrap shells; case fit check. | Design rim bumper and hard/padded transport case. |
