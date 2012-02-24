
translate([-200,0,0])
	rotate([0,0,0])
		import_stl("b14011_rev_1.stl", convexity = 5);

translate([200,0,0])
	rotate([0,180,0])
		import_stl("b14011_rev_1.stl", convexity = 5);
