
include <../MCAD/stepper.scad>

translate([0,-200+21.25,-2])
rotate([0,180,0])
motor(Nema17, NemaMedium, dualAxis=false);


translate([0,200-21.25,-2])
rotate([0,180,0])
motor(Nema17, NemaMedium, dualAxis=false);

scale([1,3,1])
	import_stl("./util/makerslide.stl", convexity = 5);

color("Blue")
translate([44-22,-200,1.5-1.5])
	rotate([0,0,90])
		import_stl("b14011_rev_1.stl", convexity = 5);

color("Blue")
translate([-22,200,1.5-1.5])
	rotate([0,0,-90])
		import_stl("b14011_rev_1.stl", convexity = 5);
