//
// ktRack1
//
//


gap1 = 0.001;
gap2 = 0.002;

panel_thick = 2;

X = 25;
Y = 45;
Z = 21;
R = 30;
H = 15;
D = 18;
UW = 12+0.5;
UH = 4.5+0.5;
UD = 12+0.5;


difference()
{
    union()
    {
        translate([-panel_thick, -panel_thick, -panel_thick]) cube([panel_thick, Y+20, Z+panel_thick]);
        translate([X, -panel_thick, -panel_thick]) cube([panel_thick, Y+20, Z+panel_thick]);
        translate([-panel_thick, -panel_thick, -panel_thick]) cube([X+panel_thick*2, Y+panel_thick*2, panel_thick]);
        translate([0, 0, 0]) rotate([-30, 0, 0]) cube([X, panel_thick, 31]);
        translate([0, Y, 0]) rotate([-30, 0, 0]) cube([X, panel_thick, 31]);
    }
    translate([X-gap1, 14, Z/2]) rotate([0, 90, 0]) cylinder(  panel_thick+gap2, d1= 5, d2=3, $fn=100);
    translate([X-gap1, 44, Z/2]) rotate([0, 90, 0]) cylinder(  panel_thick+gap2, d1=5, d2=3, $fn=100);
    translate([0+gap1, 14, Z/2]) rotate([0, -90, 0]) cylinder(  panel_thick+gap2, d=7.5, $fn=100);
    translate([0+gap1, 44, Z/2]) rotate([0, -90, 0]) cylinder(  panel_thick+gap2, d=7.5, $fn=100);
    translate([-X/2, 0, Z]) cube([X*2, Y+20, 20]);
    translate([-X/2, -27.7, 12]) rotate([-30, 0, 0]) cube([X*2, 30, 35]);
    translate([-X/2, Y, -panel_thick*2]) rotate([-30, 0, 0]) cube([X*2, 30, 35]);
}
difference()
{
    union()
    {
        translate([0, Y+6.4, 7.2]) rotate([-30, 0, 0]) USB();
        translate([0, Y+6.4+H+2.3, 7.2]) rotate([-30, 0, 0]) USB();
    }
        translate([-X/2, -5, -20-panel_thick]) cube([X*2, Y+60, 20]);
}




module USB ()
{
    difference()
    {
        translate([-panel_thick, 0, -panel_thick]) cube([X+panel_thick*2, H, D]);
        translate([X/2-UW/2, H/2-UH/2, -panel_thick+D-UD+gap1]) cube([UW, UH, UD]);
    }
    translate([-panel_thick, 0, -panel_thick-9]) cube([X+panel_thick*2, H, 9]);
}

