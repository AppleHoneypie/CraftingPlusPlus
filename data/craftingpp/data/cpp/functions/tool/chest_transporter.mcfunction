setblock ~ 255 ~ shulker_box{Items:[{Slot:0b,id:"minecraft:chest",Count:1b}]}
data modify block ~ 255 ~ Items[0].tag.BlockEntityTag.Items set from block ~ ~ ~ Items
loot spawn ~ ~ ~ mine ~ 255 ~ diamond_pickaxe{isShulkerMarker:1b}
setblock ~ 255 ~ air
setblock ~ ~ ~ air

execute as @s[predicate=cpp:mainhand/carrot_on_a_stick] run data modify storage cpp:damage Item set from entity @s SelectedItem
execute as @s[predicate=!cpp:mainhand/carrot_on_a_stick] run data modify storage cpp:damage Item set from entity @s Inventory[{Slot:-106b}]
function cpp:misc/damage
execute as @s[gamemode=!creative] run function cpp:tool/chest_transporter_damage
