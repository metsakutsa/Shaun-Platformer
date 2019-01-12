///collision();

//Gravity
vsp = vsp + grv;

//Grounding?
if place_meeting(x, y+1, oWall) {
    ground = true;
}
else ground = false;


//Horizontal collison
if place_meeting(x + hsp,y, oWall){
    while(!place_meeting(x + sign(hsp),y, oWall)){
        x = x+sign(hsp);
    }
    hsp = 0;
}
else{
    x = x+hsp;
}

//Vertical collison
if place_meeting(x, y+vsp, oWall){
    while(!place_meeting(x,y+sign(vsp), oWall)){
        y = y+sign(vsp);
    }
    vsp = 0;
}
else{
    y = y+vsp;
}
