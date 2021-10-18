/// @description Timer
if(global.timer > 0){
	global.timer -= 1;
	alarm_set(0,60);
}