panel_width = 175;
metal_bottom_plate = true;
borked_plates = false;
thumb_variant = true;

finger_size = 7.5;

panel_height = thumb_variant ? 67 : 55;

depth = 9;

left_buffer = 0.1;
right_buffer = 0.1;
top_buffer = 0.0;
bottom_buffer = 0.0;
hor_buffers = left_buffer + right_buffer;
ver_buffers = top_buffer + bottom_buffer;

sidenotches = 4.0;
button_kerf = 0.08;
kerf = 0.1;
finger_depth = 3.1;
finger_bottom_depth = metal_bottom_plate ? 0.0 : finger_depth;
bottom_plate_depth = 0.9;

// bottom panel
brooks_offset=0.7;
brooks_w= 96.3;
brooks_h= 45.3;
brooks_holes_w=88;
brooks_holes_h=37;
hole_size = 1.4;

holes_off_w = (brooks_w-brooks_holes_w)*0.5;
holes_off_h = (brooks_h-brooks_holes_h)*0.5;

mount_off = 3.5;
board_mount_off = 10;

obutton_size= 3.6;
obutton_dist= 8;

led_dia = 1.8;
led_w = 2.5;
led_h = 3.5;

usb_x = 104.2 - 25;
usb_w = 10;
usb_h = 4.0;
pcb_h= 0.8;


switch_next = 19.05;

switch_hole = [14.0,14.0];



module finger_panel(w,h, kerf, finger_size, finger_depth,
    finger_depth_b,
w_out,h_out, add_sides) {
     wf = w / finger_size;
     wf_whole = floor(wf);
     wf_rem = wf - wf_whole;
    
     hf = h / finger_size;
     hf_whole = floor(hf);
     hf_rem = hf - hf_whole;
    
    
     union() {
	  translate([-kerf,-kerf])  square([w+2*kerf,h+2*kerf]);
        
      even = (wf_whole % 2) == 0;
      wf_removed = even ? 3 : 2;   
      offset = (wf_removed + wf_rem) * 0.5 * finger_size;
      steps = round((wf_whole-wf_removed+1) * 0.5) - (w_out ? 1 : 0);
          
	  if (steps >= 1) {
	       if (w_out) {
		    translate([-kerf,h]) square([offset+kerf*2,finger_depth+kerf]);  
		    translate([(w-offset-kerf),h]) square([offset+kerf*2,finger_depth+kerf]); 
               
		    translate([-kerf,-finger_depth_b-kerf]) square([offset+kerf*2,finger_depth+kerf]);  
		    translate([(w-offset-kerf),-finger_depth_b-kerf]) square([offset+kerf*2,finger_depth+kerf]); 
	       }
           
           
           offset2 = offset +  (w_out ? finger_size : 0);
	       for (p =[0:steps-1]) { 
			 translate([offset2+(2*p)*finger_size-kerf,h])
			 square([finger_size+kerf*2,finger_depth+kerf]);  
			 translate([offset2+(2*p)*finger_size-kerf,-finger_depth_b-kerf]) 
			 square([finger_size+kerf*2,finger_depth_b+kerf]);  
	       }
        
	  }
      
      heven = (hf_whole % 2) == 0;
      hf_removed = heven ? 3 : 2;   
      hoffset = (hf_removed + hf_rem) * 0.5 * finger_size;
      hsteps = round((hf_whole-hf_removed+1) * 0.5) - (h_out ? 1 : 0);
          
      echo("aa", h, hf_whole, hf_whole,hsteps);
	  if (hsteps >= 1) {
	       if (h_out) {
		    translate([w,-kerf-finger_depth,]) square([finger_depth+kerf,hoffset+kerf*2+ finger_depth]);  
		    translate([w, (h-hoffset-kerf)]) square([finger_depth+kerf,hoffset+kerf*2+ finger_depth]); 
               
		    translate([-finger_depth-kerf,-kerf-finger_depth,]) square([finger_depth+kerf,hoffset+kerf*2+ finger_depth]);  
		    translate([-finger_depth-kerf, (h-hoffset-kerf)]) square([finger_depth+kerf,hoffset+kerf*2+ finger_depth]); 
	       }
  
           hoffset2 = hoffset +  (h_out ? finger_size : 0);
	       for (p =[0:hsteps-1]) { 
             
			 translate([w, hoffset2+2*p*finger_size-kerf]) 
			 square([finger_depth+kerf,finger_size+kerf*2]);  
		    
			 translate([-finger_depth-kerf,hoffset2+2*p*finger_size-kerf]) 
			 square([finger_depth+kerf,finger_size+kerf*2]);  
	       }
	  } else {
   	       if (add_sides) {
    translate([-finger_depth-kerf,-kerf-finger_depth_b,]) square([finger_depth+kerf,h+kerf*2+ finger_depth_b+finger_depth]);  
               translate([w,-kerf-finger_depth_b,]) square([finger_depth+kerf,h+kerf*2+ finger_depth_b+finger_depth]);  
           }
      }
     }
}   

module thumbs(hole_size, hole_dist, thumb_mul, kerf) {    

      translate([0,0])square(hole_size-[kerf*2,kerf*2],center=true);
           
    
	  translate([hole_dist,3])  square(hole_size-[kerf*2,kerf*2],center=true);
    
	  translate([2*hole_dist,-1])square(hole_size-[kerf*2,kerf*2],center=true);

//9 for 55
	  translate([3*hole_dist+2, -hole_dist*2]) rotate([0,0,10]) translate([3,0]) square([hole_size[0]*thumb_mul, hole_size[1]]-[kerf*2,kerf*2],center=true);
        
 
}


module arrows(hole_size, hole_dist, kerf) {    

      translate([0,0])square(hole_size-[kerf*2,kerf*2],center=true);
         
    translate([hole_dist*2,hole_dist*0.5]) {
  
	    square(hole_size-[kerf*2,kerf*2],center=true);
    
	  translate([hole_dist,0])  square(hole_size-[kerf*2,kerf*2],center=true);
    
	  translate([-hole_dist,0])square(hole_size-[kerf*2,kerf*2],center=true);

	  translate([0, hole_dist]) square(hole_size-[kerf*2,kerf*2],center=true);
        
 }
}


module buttons(hole_size, hole_dist, kerf) {
     
     translate([0,0]) {
	  translate([0,0]) {
	       square(hole_size-[kerf*2,kerf*2],center=true);
    
	       translate([0, hole_dist]) square(hole_size-[kerf*2,kerf*2],center=true);
	  }
        
	  translate([hole_dist,4]) {
	  square(hole_size-[kerf*2,kerf*2],center=true);
    
	       translate([0, hole_dist]) square(hole_size-[kerf*2,kerf*2],center=true);
	  }
     
	  translate([hole_dist*2,1]) {
	       square(hole_size-[kerf*2,kerf*2],center=true);
    
	       translate([0, hole_dist]) square(hole_size-[kerf*2,kerf*2],center=true);
	  }
        
	  translate([hole_dist*3,-9]) {
	       square(hole_size-[kerf*2,kerf*2],center=true);
    
	       translate([0, hole_dist]) square(hole_size-[kerf*2,kerf*2],center=true);
          }   
     }
}

// Top panel
module top_panel(thumbs) {
    
difference() {
  
    translate([-left_buffer,-bottom_buffer])
        finger_panel(panel_width+left_buffer+right_buffer,panel_height+bottom_buffer+top_buffer, kerf, finger_size,               finger_depth, finger_depth, 
                    false, false,false);
    
    translate([usb_x, panel_height + finger_depth*0.5+kerf*1])
         square([finger_size*3.5, finger_depth+kerf*0],center=true); 
   
    if (!thumbs) {
    translate([12,30]) rotate([0,0,-25]) arrows(switch_hole, switch_next, button_kerf);
        
     translate([105,12]) rotate([0,0,20]) buttons(switch_hole, switch_next, button_kerf);
    
    } else {
            translate([17,57.5]) rotate([0,0,-10]) thumbs(switch_hole, switch_next, 1.0, button_kerf);


     translate([105,19]) rotate([0,0,20]) buttons(switch_hole, switch_next, button_kerf);
    
    }
    
    // bottom screws
    translate([0,0]) 
     translate([mount_off,mount_off]) {
            circle($fn=32,d=2-kerf*2,center=true);
     }
     
     translate([panel_width,panel_height]) 
     translate([-mount_off,-mount_off]) {
            circle($fn=32,d=2-kerf*2,center=true);
     }
     
     translate([panel_width,0]) 
     translate([-mount_off,mount_off]) {
            circle($fn=32,d=2-kerf*2,center=true);
     }
     
     translate([0,panel_height]) 
     translate([mount_off,-mount_off]) {
            circle($fn=32,d=2-kerf*2,center=true);
     }
   
    // board screws
    translate([0,0]) 
     translate([mount_off,board_mount_off]) {
            circle($fn=32,d=hole_size-kerf*2,center=true);
     }
     
     translate([panel_width,panel_height]) 
     translate([-board_mount_off,-mount_off]) {
            circle($fn=32,d=hole_size-kerf*2,center=true);
     }
     
     translate([panel_width,0]) 
     translate([-board_mount_off,mount_off]) {
            circle($fn=32,d=hole_size-kerf*2,center=true);
     }
     
     translate([0,panel_height]) 
     translate([mount_off,-board_mount_off]) {
            circle($fn=32,d=hole_size-kerf*2,center=true);
     }
     
     translate([125,10]) 
    {
            circle($fn=32,d=hole_size-kerf*2,center=true);
     }
     
     if (thumb_variant) {
         translate([100,52]) 
            circle($fn=32,d=hole_size-kerf*2,center=true);
     
     } else 
     {
       translate([66,51]) 
            circle($fn=32,d=hole_size-kerf*2,center=true);
     }
 
   
     
     // leds
    translate([90+10, panel_height-3.75]) {
       square([led_w+kerf*2,led_h-kerf*2],center=true);
      
    translate([-3.5, 0])
       square([led_w+kerf*2,led_h-kerf*2],center=true);
    
    translate([-3.5*2, 0])
       square([led_w+kerf*2,led_h-kerf*2],center=true);
            
    translate([-3.5*3, 0])
              square([led_w+kerf*2,led_h-kerf*2],center=true);
    }
    
    // buttons
    translate([panel_width - 25, 10]) {
       square([6.5,6.5],center=true);
      
    translate([-obutton_dist, 0])
       square([6.5,6.5],center=true);
    
    translate([-obutton_dist*2, 0])
       square([6.5,6.5],center=true);
    }
    
    
    //translate([usb_x, 48.8+1.5]) translate([0,0.0]) {
    //    square([usb_w,3],center=true);
    //}
}
}

// Topper
//translate([0, panel_height+10]) 
module topper(thumbs) {
difference() {
    translate([-left_buffer,-bottom_buffer])

     translate([-kerf-finger_depth,-kerf-finger_depth])  square([panel_width+2*kerf+finger_depth*2+left_buffer+right_buffer,panel_height+2*kerf+finger_depth*2+top_buffer+bottom_buffer]);

    if (!thumbs) {
        translate([12,30]) rotate([0,0,-25]) arrows([19.0,19.0], switch_next, button_kerf);
          translate([105,12]) rotate([0,0,20]) buttons([19.0,19.0], switch_next, button_kerf);
   
    } else {
        translate([17,57.5]) rotate([0,0,-10]) thumbs([19.0,19.0], switch_next, 1.5, button_kerf);
        //+5
          translate([105,19]) rotate([0,0,20]) buttons([19.0,19.0], switch_next, button_kerf);
   
    }
    
      translate([0,0]) 
     translate([mount_off,mount_off]) {
            circle($fn=32,d=2-kerf*2,center=true);
     }
     
     translate([panel_width,panel_height]) 
     translate([-mount_off,-mount_off]) {
            circle($fn=32,d=2-kerf*2,center=true);
     }
     
     translate([panel_width,0]) 
     translate([-mount_off,mount_off]) {
            circle($fn=32,d=2-kerf*2,center=true);
     }
     
          
     translate([0,panel_height]) 
     translate([mount_off,-mount_off]) {
            circle($fn=32,d=2-kerf*2,center=true);
     }
     
          
     // leds
    translate([90+10,panel_height-3.75]) {
       circle($fn=32, d=led_dia-kerf*2,center=true);
      
    translate([-3.5, 0])
       circle($fn=32, d=led_dia-kerf*2,center=true);
   
    translate([-3.5*2, 0])
       circle($fn=32, d=led_dia-kerf*2,center=true);
            
    translate([-3.5*3, 0])
       circle($fn=32, d=led_dia-kerf*2,center=true);
    }
    
      
    translate([panel_width -25, 10]) {
       circle($fn=32, d=obutton_size-kerf*2,center=true);
      
    translate([-obutton_dist, 0])
       circle($fn=32, d=obutton_size-kerf*2,center=true);
    
    translate([-obutton_dist*2, 0])
       circle($fn=32, d=obutton_size-kerf*2,center=true);
    }
}
}

// Outer panel
module outer_side(metal_bottom_plate) {
    translate([panel_width, 0]) 
mirror([1]) difference() {
     union() {
             translate([-left_buffer,0])

         finger_panel(panel_width+hor_buffers,depth, kerf, finger_size, finger_depth, finger_bottom_depth,
         true, true,true);
         translate([usb_x, depth + finger_depth*0.5])
         square([finger_size*3.5, finger_depth+kerf*2],center=true);
         
         
    if (metal_bottom_plate && !borked_plates) {
        length = finger_size - 0.3; //+kerf*2;
        // Notches
        translate([panel_width*0.5-length*0.5,-kerf-bottom_plate_depth]) square([length,bottom_plate_depth+kerf]);
    }
     }
     
    translate([usb_x, depth - pcb_h - usb_h*0.5]) translate([0,0.0]) {
        square([usb_w,usb_h],center=true);
        translate([0, usb_h*0.5+pcb_h*0.5]) 
        square([usb_w,pcb_h],center=true);
        //translate([0,2.5])   square([9.2-2*kerf,3-2*kerf],center=true);
    }
    
    
      // Side notches
   
        notchkerf = metal_bottom_plate ? -kerf : depth*0.5  -sidenotches*0.5 + kerf;
        notchkerf2 = metal_bottom_plate ? kerf*0 : kerf*2;
    
        translate([-kerf-finger_depth-left_buffer,notchkerf]) square([finger_depth,sidenotches-notchkerf2]);
        translate([panel_width+kerf+right_buffer,notchkerf]) square([finger_depth,sidenotches-notchkerf2]);
}
}

// Inner panel
module inner_side(metal_bottom_plate) {
    difference() {
union() {
           translate([-left_buffer,0])
     finger_panel(panel_width+hor_buffers,depth, kerf, finger_size, finger_depth, finger_bottom_depth, true, true,true);
    
    if (metal_bottom_plate && !borked_plates) {
        length = finger_size - 0.3; //+kerf*2;
        // Notches
        translate([panel_width*0.5-length*0.5,-kerf-bottom_plate_depth]) square([length,bottom_plate_depth+kerf]);
    }
}
      // Side notches
          
        notchkerf = metal_bottom_plate ? -kerf : depth*0.5  -sidenotches*0.5 + kerf;
        notchkerf2 = metal_bottom_plate ? kerf*0 : kerf*2;
    
        translate([-kerf-finger_depth-left_buffer,notchkerf]) square([finger_depth,sidenotches-notchkerf2]);
        translate([panel_width+kerf+right_buffer,notchkerf]) square([finger_depth,sidenotches-notchkerf2]);
}
}

// Left panel
module left_side(metal_bottom_plate) {
union() {
     translate([-bottom_buffer,0])

     finger_panel(panel_height+ver_buffers, depth, kerf, finger_size, finger_depth, finger_bottom_depth, true, true,false);
      if (metal_bottom_plate) {
        length = finger_size - 0.3; //+kerf*2;
        // Notches
        translate([panel_height*0.5-length*0.5,-kerf-bottom_plate_depth]) square([length,bottom_plate_depth+kerf]);
    }
    
    
        // Side notche
    h = metal_bottom_plate ? -kerf : depth*0.5  -sidenotches*0.5 - kerf;
    
        translate([-kerf-finger_depth-bottom_buffer,h]) square([finger_depth+kerf,sidenotches+kerf*2]);
        translate([panel_height+top_buffer,h]) square([finger_depth+kerf,sidenotches+kerf*2]);
}
}

// Inner panel
module right_side(metal_bottom_plate) {
union() {
     translate([-top_buffer,0])
    finger_panel(panel_height+ver_buffers, depth, kerf, finger_size, finger_depth, finger_bottom_depth, true, true,false);
    if (metal_bottom_plate) {
        // smallr to avoid issues
        length = finger_size - 0.3; //+kerf*2;
        // Notches
        translate([panel_height*0.5-length*0.5,-kerf-bottom_plate_depth]) square([length,bottom_plate_depth+kerf]);
    }    
        // Side notches
    
     h = metal_bottom_plate ? -kerf : depth*0.5  -sidenotches*0.5 - kerf;
    
        translate([-kerf-finger_depth-top_buffer,h]) square([finger_depth+kerf,sidenotches+kerf*2]);
        translate([panel_height+bottom_buffer,h]) square([finger_depth+kerf,sidenotches+kerf*2]);
     
}
}


// bottom panel
module bottom_panel(metal_bottom_plate) {
difference() {
    if (!metal_bottom_plate) {
      finger_panel(panel_width,panel_height, kerf, finger_size, finger_depth, finger_depth, false, false,false);
    } else {
      /// thumb_variant version
        difference() {
        translate([-kerf-finger_depth,-kerf-finger_depth])  square([panel_width+2*kerf+ finger_depth*2,panel_height+2*kerf+finger_depth*2]);

        notch_length = finger_size -kerf*2;
   
        // Notches
        translate([-kerf-finger_depth,panel_height*0.5-notch_length*0.5]) square([finger_depth,notch_length]); 
        
        translate([panel_width+kerf,panel_height*0.5-notch_length*0.5]) square([finger_depth,notch_length]);
            
       // Notches v2
            if (!borked_plates) {
        translate([panel_width*0.5-notch_length*0.5, -kerf-finger_depth]) square([notch_length,finger_depth]); 
        
        translate([panel_width*0.5-notch_length*0.5, panel_height+kerf]) square([notch_length,finger_depth]); 
    }
}
}
     translate([0,0]) 
     translate([mount_off,mount_off]) {
            circle($fn=32,d=hole_size-kerf*2,center=true);
     }
     
     translate([panel_width,panel_height]) 
     translate([-mount_off,-mount_off]) {
            circle($fn=32,d=hole_size-kerf*2,center=true);
     }
     
     translate([panel_width,0]) 
     translate([-mount_off,mount_off]) {
            circle($fn=32,d=hole_size-kerf*2,center=true);
     }
         
     translate([0,panel_height]) 
     translate([mount_off,-mount_off]) {
            circle($fn=32,d=hole_size-kerf*2,center=true);
     }
}
}

module crutch() {
    translate([-kerf,-kerf])  square([3,panel_height+2*kerf]);
}


top_panel(thumb_variant, false);
translate([0, panel_height+10]) topper(thumb_variant);
translate([0, -34]) outer_side(metal_bottom_plate);
translate([0, -18]) inner_side(metal_bottom_plate);
translate([0, -50]) left_side(metal_bottom_plate);
translate([80, -50]) right_side(metal_bottom_plate);
translate([0, 155]) bottom_panel(metal_bottom_plate);

//translate([-20, 0]) crutch();