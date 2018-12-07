

x = clamp(owner.x,owner.Xcamera + sprite_get_width(spr_OffscreenIndicator_circle)/2, owner.XcameraR - sprite_get_width(spr_OffscreenIndicator_circle)/2);
y = clamp(owner.y,owner.Ycamera + sprite_get_height(spr_OffscreenIndicator_circle), owner.YcameraD);