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

