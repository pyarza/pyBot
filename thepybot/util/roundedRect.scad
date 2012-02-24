module roundedRect(size, radius)
{
x = size[0];
y = size[1];
z = size[2];

linear_extrude(height=z)
hull()
{
// place 4 circles in the corners, with the given radius
translate([(-x/2)+(radius/2), (-y/2)+(radius/2), 0])
circle(r=radius,$fn=36);

translate([(x/2)-(radius/2), (-y/2)+(radius/2), 0])
circle(r=radius,$fn=36);

translate([(-x/2)+(radius/2), (y/2)-(radius/2), 0])
circle(r=radius,$fn=36);

translate([(x/2)-(radius/2), (y/2)-(radius/2), 0])
circle(r=radius,$fn=36);
}
}


