loot replace block ~ ~ ~ container.15 2 loot cpp:item_processer/tool
data modify storage cpp:damage Item set from block ~ ~ ~ Items[{Slot:3b}]
function cpp:misc/damage
data modify block ~ ~ ~ Items[{Slot:3b}].tag.Damage set from storage cpp:damage Item.tag.Damage
execute if predicate cpp:item_processer/broken_tool run replaceitem block ~ ~ ~ container.3 air
execute store result block ~ ~ ~ Items[{Slot:12b}].Count int 1 run scoreboard players remove #temp cppValue 1
execute unless data block ~ ~ ~ Items[{Slot:16b}] run replaceitem block ~ ~ ~ container.16 firework_star{cppClear:1b,display:{Name:'{"translate":"item.cpp.output_slot"}'},CustomModelData:12970000}
