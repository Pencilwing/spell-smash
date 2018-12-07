
if (owner.player == 0) draw_sprite_ext(spr_OffscreenIndicator_circle,0,x - sprite_get_width(spr_OffscreenIndicator_circle)/2,y - sprite_get_height(spr_OffscreenIndicator_circle),1,1,0,c_red,1);
if (owner.player == 1) draw_sprite_ext(spr_OffscreenIndicator_circle,0,x - sprite_get_width(spr_OffscreenIndicator_circle)/2,y - sprite_get_height(spr_OffscreenIndicator_circle),1,1,0,c_blue,1);

draw_sprite_ext(owner.sprite,owner.currentFrame,x,y - sprite_get_height(spr_OffscreenIndicator_circle)/4,0.4*owner.facing,0.4,0,c_white,1);