/// @description Dibuja el texto que muestra el timer.
draw_set_colour(c_white);
draw_set_font(Font1)
draw_text(20, 60, "Tiempo restante: " + string(timer));