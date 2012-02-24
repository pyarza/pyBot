module b14011_rev_1(color="Blue")
{
	include <util/roundedRect.scad>;

	color(color) 

	difference()
	{
		//Plate
		translate([62.75/2,44/2,0]) roundedRect([62.75-5,44-5,1.5],5);

		//Axle drill
		translate([21.25,22,0]) cylinder (h=10, r=25/2, center=true, $fn=100);
		
		//Right side drills
		translate([54.75,12,0]) cylinder (h=10, r=5.1/2, center=true, $fn=100);
		translate([54.75,32,0]) cylinder (h=10, r=5.1/2, center=true, $fn=100);

		// Four DoubleDrills
		translate([5.75,6.5,0]) DoubleDrill();
		translate([34.25,35,0]) DoubleDrill();
		translate([34.25,9,0]) rotate([0,0,-90]) DoubleDrill();
		translate([5.75,37.5,0]) rotate([0,0,-90]) DoubleDrill();

		//Right side large border drill
		translate([62.75,22,0]) cylinder (h=10, r=5, center=true, $fn=100);

		translate([40.75,-1,-1]) cube([30,2.1+1,5]);
		translate([40.75,41.9,-1]) cube([30,2.1+1,5]);

		translate([40.75,2.1-1,0]) cylinder (h=10, r=1, center=true, $fn=100);
		translate([40.75-1,-1,-1]) cube ([2,2,4]);
		translate([40.75-1,0,-1]) rotate([0,0,90]) Rounder(1);

		translate([40.75,41+1+.9,0]) cylinder (h=10, r=1, center=true, $fn=100);
		translate([40.75-1,44-1,-1]) cube ([2,2,4]);
		translate([40.75-1,44+0,-1]) rotate([0,0,180]) Rounder(1);

		translate([62.75,2.1,-1]) rotate([0,0,90]) Rounder(5);
		translate([62.75,41.9,-1]) rotate([0,0,180]) Rounder(5);

	}	

//translate([62.75,22-5,0]) rotate([0,0,180]) Rounder(5);

//Rounder(5);

};

module Rounder(radio) 
{
	union()
	{
		difference()
		{
			cube ([radio,radio,10]);
			translate([radio,radio,-1]) cylinder(h=12,r=radio, $fn=36);
		}
		translate([-1,0,0]) cube ([1,radio,10]);
		translate([0,-1,0]) cube ([radio,1,10]);
		translate([-1,-1,0]) cube ([1,1,10]);
	}
}


module DoubleDrill() 
{
	hull()
	{
		translate([2.5,2.5,0]) cylinder(10,3.1/2,3.1/2, center=true, $fn=32);
		cylinder(10,3.1/2,3.1/2, center=true, $fn=32);
	 }

}

//TEST (uncomment)
translate([0,0,000]) b14011_rev_1();
//translate([0,0,050]) b14011_rev_1("Red");
//translate([0,0,100]) b14011_rev_1("Green");

