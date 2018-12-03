/// @description angleCalc(obj1, obj2)
/// @function angleCalc
/// @param obj1
/// @param obj2

xT = (argument0.x - argument1.x)
yT = (argument0.y - argument1.y)

return darctan((yT*sign(yT))/xT*sign(xT))