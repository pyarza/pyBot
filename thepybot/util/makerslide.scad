module makerslide()
{

difference()
{
	translate([-20,50,-20])
		scale(25.4/2)
			rotate([0,0,0])
	{
		rotate([90,90,0])
		translate([-4.99,-4.1,0])
		difference()
		{
			translate([3,3,0]) cube ([4,5,100]);
			linear_extrude(file = "makerslide.dxf");
		}
	}
	translate([-50,-3050,-50]) cube([100,3000,100]);
}
}

makerslide();