data modify storage cpp:dist Item set from block ~ ~ ~ Items[{Slot:15b}]
function cpp:dist/type
execute as @s[tag=cpp_dist_success] run replaceitem block ~ ~ ~ container.15 firework_star{cppMachineBg:1b,display:{Name:'{"translate":"item.cpp.output_slot"}'},CustomModelData:12971000}
