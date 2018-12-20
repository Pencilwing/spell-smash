/// @description  ease_in(start, end, change, time);
/// @function  ease_in
/// @param start
/// @param  end
/// @param  change
/// @param  time

var start = argument0 //start
var final = argument1 //end
var change = argument2 //change
var time = argument3 //time


if (start > final)
return max(start - change*time*time, final);

if (start < final)
return min(start + change*time*time, final);