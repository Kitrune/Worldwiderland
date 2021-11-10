/// @description Insert description here
// You can write your code in this editor

#region 

campoDeVisionX = camera_get_view_width(view_camera[0] / 2);
campoDeVisionY = camera_get_view_height(view_camera[0] / 2);

camera_set_view_pos(view_camera[0], x - campoDeVisionX, y - campoDeVisionY);

#endregion