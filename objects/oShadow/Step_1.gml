x = owner.x
var array = collision_line_point(owner.x,owner.y,owner.x,owner.y+3000,parentBlocker,true, true);

show_debug_message(array[2])

y = array[2]