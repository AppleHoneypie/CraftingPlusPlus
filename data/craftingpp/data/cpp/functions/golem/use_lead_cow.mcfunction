setblock ~ 255 ~ chest
data modify block ~ 255 ~ Items set from entity @s HandItems[1].tag.BlockEntityTag.Items
data modify storage cpp:golem Item set from block ~ 255 ~ Items[{id:"minecraft:wheat"}]
execute store result storage cpp:golem Item.Count byte 0.99 run data get storage cpp:golem Item.Count
data modify block ~ 255 ~ Items append from storage cpp:golem Item
data modify entity @s HandItems[1].tag.BlockEntityTag.Items set from block ~ 255 ~ Items
setblock ~ 255 ~ air

data merge entity @e[type=#cpp:eat_wheat,distance=..1,nbt={Age:0,InLove:0},limit=1] {InLove:600}
