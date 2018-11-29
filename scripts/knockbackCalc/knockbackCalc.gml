/// @description knockbackCalc(percentage, damage, weight, growth, kbStrength, miscFactors)
/// @function knockbackCalc
/// @param percentage
/// @param damage
/// @param weight
/// @param growth
/// @param kbStrength
/// @param miscFactors

kbFinal = (((((argument0/40 + argument0*argument1/50)*200/(argument2 + 100)+10)*argument3)+argument4)*argument5)

return kbFinal