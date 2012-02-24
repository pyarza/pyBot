
scale(10)
translate([0,0,0])
	rotate([180,0,0])
		import_stl("./util/makerslide.stl", convexity = 5);


color("Blue")
translate([44,-200,1.5])
	rotate([0,0,90])
		import_stl("b14011_rev_1.stl", convexity = 5);

color("Blue")
translate([0,200,1.5])
	rotate([0,0,-90])
		import_stl("b14011_rev_1.stl", convexity = 5);
