# 检测GUI
execute unless predicate cpp:golden_anvil/gui run function cpp:golden_anvil/gui
execute unless data block ~ ~ ~ Items[{Slot:16b}] run replaceitem block ~ ~ ~ container.16 firework_star{cppMachineBg:1b,display:{Name:'{"translate":"item.cpp.output_slot"}'},CustomModelData:12971000}
# 配方
execute if block ~ ~ ~ barrel{Items:[{Slot:9b},{Slot:11b},{Slot:13b,id:"minecraft:experience_bottle",Count:64b},{Slot:16b,tag:{cppMachineBg:1b}}]} run function cpp:golden_anvil/type
function #cpp:golden_anvil
