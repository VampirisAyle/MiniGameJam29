/// @description Insert description here
// You can write your code in this editor

// Sets variables to initiate Flee and an Alarm to begin Chase again
chase=false;
runaway=true;
justrun=false;
alarm_set(0,40);

// Moves instance away from char (Provides Object Overlap Protection)
var _dir;
var _move_dis = 32;  // pixels to move away from other object in collision

// If both instances are in the same location, set direction random
if (x == other.x && y == other.y)
    _dir = random(360);

// Move in opposite direction of object in collision
else
    _dir = point_direction(other.x,other.y,x,y);

// Move to new location but away from wall and other enemy

var _dx = lengthdir_x(_move_dis,_dir);
var _dy = lengthdir_y(_move_dis,_dir);

//if (!place_meeting(x+dx,y,obj_player)) x += dx;
//if (!place_meeting(x,y+dy,obj_player)) y += dy;
//if (!place_meeting(x+dx,y,obj_enemie1)) x +=dx;
//if (!place_meeting(y,y+dy,obj_enemie1)) y +=dy;