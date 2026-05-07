// Ceramic Hang - OpenSCAD master scaffold
// Units: inches. This is concept/master geometry, not final production CAD.

$fn = 128;

outer_diameter = 18;
dome_height = 4.5;
wall = 0.25;
shrinkage = 0.12;
master_scale_factor = 1 / (1 - shrinkage);
gu_diameter = 3.5;

field_notes = ["G3", "Bb3", "C4", "D4", "F4", "G4", "Bb4", "C5", "D5"];
field_radii = [2.0, 1.7, 1.6, 1.5, 1.375, 1.275, 1.175, 1.10, 1.025];

module shallow_dome(d=outer_diameter, h=dome_height) {
    scale([d/2, d/2, h])
        sphere(r=1);
}

module upper_shell_concept() {
    difference() {
        shallow_dome();
        translate([0,0,-wall])
            scale([(outer_diameter - 2*wall)/outer_diameter,
                   (outer_diameter - 2*wall)/outer_diameter,
                   (dome_height - wall)/dome_height])
                shallow_dome();
        translate([0,0,-dome_height])
            cube([outer_diameter*2, outer_diameter*2, dome_height*2], center=true);
    }
}

module tone_field(angle_deg, radius_from_center, field_radius, label_text="") {
    x = radius_from_center * cos(angle_deg);
    y = radius_from_center * sin(angle_deg);
    translate([x, y, dome_height * 0.72])
        scale([1.25, 0.82, 0.12])
            sphere(r=field_radius);
}

module field_layout() {
    // Center ding.
    translate([0,0,dome_height * 0.86])
        scale([1.1, 1.1, 0.14])
            sphere(r=field_radii[0]);

    // Eight outer fields.
    for (i=[1:8]) {
        tone_field((i-1)*45 + 22.5, outer_diameter*0.30, field_radii[i], field_notes[i]);
    }
}

module lower_shell_concept() {
    difference() {
        translate([0,0,-0.65])
            scale([outer_diameter/2, outer_diameter/2, 1.25])
                sphere(r=1);
        translate([0,0,-0.65])
            scale([(outer_diameter - 2*wall)/2, (outer_diameter - 2*wall)/2, 1.25-wall])
                sphere(r=1);
        translate([0,0,-2.2])
            cylinder(h=3, d=gu_diameter);
        translate([0,0,0.1])
            cube([outer_diameter*2, outer_diameter*2, 2], center=true);
    }
}

module fired_body_concept() {
    union() {
        upper_shell_concept();
        field_layout();
        lower_shell_concept();
    }
}

module print_master_concept() {
    scale([master_scale_factor, master_scale_factor, master_scale_factor])
        fired_body_concept();
}

print_master_concept();

echo(str("Master scale factor: ", master_scale_factor));
echo(str("Fired OD: ", outer_diameter, " in"));
echo(str("Gu diameter: ", gu_diameter, " in"));

