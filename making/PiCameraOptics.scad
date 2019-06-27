// PiCamera Optics Assembly


translate([0,0,9.55])piOpticsAssembly();
translate([0,25,0])piCamCover();

module piOpticsAssembly(){
    difference(){
        import("builds/optics_modified_partsandcrafts.stl", convexity= 5);
        rotate([0,0,45])translate([-1,12,-9])cube([12,2,3], center=true);
    }
}

module piCamCover(){
    import("builds/picamera_2_cover_modified.stl", convexity = 50);
}