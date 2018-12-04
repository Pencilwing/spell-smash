//initialize states, attacks, and weapons.

enum states {
    idle,
    wallRun,
    dash,
    attack,
    dodge,
    block,
	shield,
	rollDodge,
	airDodge,
	spotDodge,
	specialFall,
    hitstun,
    dead,
	waveDash,
	jumpSquat,
    recovery,
	hitstop
}


enum attacks {
	neutral_light,
    side_light,
    up_light,
    down_light,
	neutral_air,
    side_air,
	front_air,
	back_air,
    up_air,
    down_air,
	side_heavy,
	up_heavy,
	down_heavy,
	neutral_spell,
	charge_neutral_spell,
	shoot_neutral_spell,
	side_spell,
	up_spell,
	down_spell
}

enum weapons {
    sword,
    dagger,
    spear,
    axe
}
