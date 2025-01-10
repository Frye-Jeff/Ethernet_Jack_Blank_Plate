Base();

translate([0,9.6,0])
    clip();
    
translate([48.5,9.6,0])
    mirror ([1,0,0])
    clip();

module Base()
{
 difference()
 {
 cube([48.5,23.2,5]); 
 translate([1,1,1])
  cube([46.5,21.2,4]);
     
 translate([0,9.1,0])       
        notch();
     
 translate([48.5,9.1,0])
    mirror ([1,0,0])
    notch();
 } 
}

module notch()
{
    cube([1.5,5,9.5]);
    cube([10,.5,2]);
    translate([0,4.5,0])
    cube([10,.5,2]);
}

module clip()
{
    difference()
    {
        cube([4.5,4,15]);
        Clip_notch();
        translate([-10,-1,14])
        rotate([0,40,0])
        cube([10,6,11]);
    }
}

module Clip_notch()
{
    cube([1.5,5,9.5]);
}