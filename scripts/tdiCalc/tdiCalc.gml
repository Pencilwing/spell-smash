var clockDirection = 1

Xdi = xAxis
Ydi = yAxis

Xkb = vectorArray [1]
Ykb = vectorArray [0]

diD = point_direction(0,0, Xdi, Ydi)
kbD = point_direction(0,0, Xkb, Ykb)
clockDirection = sign(kbD - diD)

launchSlope = -Ykb/-Xkb

Bkb = (Xkb*launchSlope - Ykb)*-1
Bdi = (Xdi*(-1/launchSlope) - Ydi)*-1

intX = (Bkb - Bdi)/((-1/launchSlope)-launchSlope)
intY = intX*launchSlope + Bkb

axisMinDistance = sqrt(sqr(Xdi - intX) + sqr(Ydi - intY))
/*
show_debug_message(string(launchSlope) + "slope")
show_debug_message(string(Xkb) + " Xkb" + " - " + string(Ykb) + " Ykb")
show_debug_message(string(Xdi) + " Xdi" + " - " + string(Ydi) + " Ydi")
show_debug_message(string(Bkb) + " Bkb" + " - " + string(Bdi) + " Bdi")
show_debug_message(string(intX) + " intX" + " - " + string(intY) + " intY")
*/

return (sqr(axisMinDistance) * 20)*clockDirection