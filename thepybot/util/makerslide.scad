module makerslide()
{
	rotate([90,90,0])
	translate([-4.99,-4.1,0])
	difference()
	{
		translate([3,3,0]) cube ([4,5,100]);
		linear_extrude(file = "makerslide.dxf");
	}
}

makerslide();