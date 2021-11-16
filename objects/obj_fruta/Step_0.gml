/// @description Verificar colisiones con un lado especifico de la pesa y agregar el peso.
// You can write your code in this editor
if place_meeting(x,y,inst_BF2BDE3) && is_colliding_izquierda == false {
    is_colliding_izquierda=true;
    inst_BF2BDE3.numero_frutas += 1;
}
if !place_meeting(x,y,inst_BF2BDE3) && is_colliding_izquierda == true {
    is_colliding_izquierda=false;
    inst_BF2BDE3.numero_frutas -= 1;
}

if place_meeting(x,y,inst_72A52A8C) && is_colliding_derecha == false {
    is_colliding_derecha=true;
    inst_72A52A8C.numero_frutas += 1;
}
if !place_meeting(x,y,inst_72A52A8C) && is_colliding_derecha == true {
    is_colliding_derecha=false;
    inst_72A52A8C.numero_frutas -= 1;
}