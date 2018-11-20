//draw_text_outlined(x, y, outline color, string color, string, thickness)  
var xx,yy;  
xx = argument[0];  
yy = argument[1];  
var thick;
thick = argument[5];
  
//Outline  
draw_set_color(argument[2]);  
draw_text(xx+thick, yy+thick, argument[4]);  
draw_text(xx-thick, yy-thick, argument[4]);  
draw_text(xx,   yy+thick, argument[4]);  
draw_text(xx+thick,   yy, argument[4]);  
draw_text(xx,   yy-thick, argument[4]);  
draw_text(xx-thick,   yy, argument[4]);  
draw_text(xx-thick, yy+thick, argument[4]);  
draw_text(xx+thick, yy-thick, argument[4]);  
  
//Text  
draw_set_color(argument[3]);  
draw_text(xx, yy, argument[4]);  