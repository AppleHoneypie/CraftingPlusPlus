execute at @s[scores={cppCraft=24001}] run summon item ~ ~-0.5 ~ {Item:{id:"minecraft:ice",Count:3b}}
execute at @s[scores={cppCraft=24001}] run summon item ~ ~-0.5 ~ {Item:{id:"minecraft:bucket",Count:3b}}
execute at @s[scores={cppCraft=24002}] run summon item ~ ~-0.5 ~ {Item:{id:"minecraft:snow_block",Count:3b}}
execute at @s[scores={cppCraft=24002}] run summon item ~ ~-0.5 ~ {Item:{id:"minecraft:bucket",Count:2b}}
execute at @s[scores={cppCraft=24003}] run summon item ~ ~-0.5 ~ {Item:{id:"minecraft:packed_ice",Count:3b}}
execute at @s[scores={cppCraft=24003}] run summon item ~ ~-0.5 ~ {Item:{id:"minecraft:bucket",Count:1b}}

execute as @s store result score @s cppCount1 run data get entity @s Items[1].Count
execute as @s store result score @s cppCount2 run data get entity @s Items[2].Count
execute as @s store result score @s cppCount3 run data get entity @s Items[3].Count
execute as @s store result score @s cppCount4 run data get entity @s Items[4].Count

execute as @s run scoreboard players operation @s cppCount1 -= #1 cppCount1
execute as @s run scoreboard players operation @s cppCount2 -= #1 cppCount1
execute as @s run scoreboard players operation @s cppCount3 -= #1 cppCount1
execute as @s run scoreboard players operation @s cppCount4 -= #1 cppCount1

execute as @s store result entity @s Items[4].Count byte 1 run scoreboard players get @s cppCount4
execute as @s store result entity @s Items[3].Count byte 1 run scoreboard players get @s cppCount3
execute as @s store result entity @s Items[2].Count byte 1 run scoreboard players get @s cppCount2
execute as @s store result entity @s Items[1].Count byte 1 run scoreboard players get @s cppCount1

scoreboard players set @s cppTicks 0