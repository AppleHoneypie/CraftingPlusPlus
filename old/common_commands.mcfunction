================================== ���������� ==================================
�ٻ������ܡ�ѩ���ܡ���
execute @e[tag=vgolem] ~ ~ ~ summon villager_golem
execute @e[tag=sgolem] ~ ~ ~ summon snowman
execute @e[tag=bird] ~ ~ ~ summon bat ~ ~ ~ {Silent:1,ActiveEffects:[{Id:14,ShowParticles:0b,Duration:999999}],Passengers:[{id:minecraft:chicken}]}

==================================    ����    ===================================
=====	�������
scoreboard objectives add onceGive dummy ���ֽ���
setblock ~ ~ ~ wall_sign 4 replace {Text1:"{\"text\":\"\"}",Text2:"{\"text\":\"�һ���ȡ�������\",\"color\":\"dark_blue\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/setblock ~ ~-4 ~ redstone_torch\"}}",Text3:"{\"text\":\"�� $100\",\"color\":\"dark_blue\"}",Text4:"{\"text\":\"\"}"}


setblock ~ ~ ~ wall_sign 4 replace {Text1:"{\"text\":\"\"}",Text2:"{\"text\":\"�һ���ȡ�������\",\"color\":\"dark_blue\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/kill @s\"}}",Text3:"{\"text\":\"�� 100 ��ʯ\",\"color\":\"dark_blue\"}",Text4:"{\"text\":\"\"}"}


scoreboard players add @a onceGive 0
scoreboard players add @p[score_onceGive=0] CK 100
scoreboard players add @p[score_onceGive=0] onceGive 1
=====	����
summon villager ~ ~.5 ~ {Rotation:[90f,0f],NoAI:true,Invulnerable:true,CustomName:"����",CustomNameVisible:true,Profession:1,Silent:true,Offers:{Recipes:[
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:emerald,Count:9},sell:{id:minecraft:emerald_block,Count:1b}},
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:emerald_block,Count:1b},sell:{id:minecraft:emerald,Count:9}},
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:emerald,Count:1b},sell:{id:minecraft:paper,Count:10b,tag:{ench:[{id:999}],display:{Name:"һԪ"}}}},
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:paper,Count:10b,tag:{ench:[{id:999}],display:{Name:"һԪ"}}},sell:{id:minecraft:emerald,Count:1b}}]}}

summon villager ~ ~.5 ~ {Rotation:[90f,0f],NoAI:true,Invulnerable:true,CustomName:"����",CustomNameVisible:true,Profession:1,Silent:true,Offers:{Recipes:[{maxUses:99999999,rewardExp:0b,buy:{id:"minecraft:emerald",Count:9},sell:{id:"minecraft:emerald_block",Count:1b}},{maxUses:99999999,rewardExp:0b,buy:{id:"minecraft:emerald_block",Count:1b},sell:{id:"minecraft:emerald",Count:9}},{maxUses:99999999,rewardExp:0b,buy:{id:"minecraft:emerald",Count:1b},sell:{id:"minecraft:paper",Count:10b,tag:{ench:[{}],display:{Name:"һԪ"}}}},{maxUses:99999999,rewardExp:0b,buy:{id:"minecraft:paper",Count:10b,tag:{ench:[{}],display:{Name:"һԪ"}}},sell:{id:"minecraft:emerald",Count:1b}}]}}

give @p paper 1 0 {ench:[{id:999s}],display:{Name:"һԪ"}}

=====	��Ǯ(1�̱�ʯ=$10)
testfor @a[x=209,y=64,z=239,dx=6,dy=6,dz=6]
tellraw @a[x=209,y=64,z=239,dx=6,dy=6,dz=6] {"text":"�뽫�̱�ʯ���Ͷ����ɫ����ÿ����ֵ$10\n�뽫�̱�ʯ�����Ͷ����ɫ����ÿ����ֵ$90","color":"yellow"}
tellraw @p {"text":"","color":"yellow"}
scoreboard players add @p CK 10

=====	ȡǮ
summon falling_block ~ ~2 ~ {Time:1,Block:"minecraft:redstone_block",Passengers:[
{id:"falling_block",Time:1,Block:"minecraft:activator_rail",Passengers:[
{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~ wall_sign 2 replace {
Text1:\"{\\\"text\\\":\\\"\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"tellraw @p[r=4,score_CK=9] {\\\\\\\"text\\\\\\\":\\\\\\\"����\\\\\\\",\\\\\\\"color\\\\\\\":\\\\\\\"red\\\\\\\"}\\\"}}\",
Text2:\"{\\\"text\\\":\\\"�һ��̱�ʯ\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=10] minecraft:emerald\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$10\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players add @p[r=4,score_CK=9] CK 10 \\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=10] CK 10\\\"}}\"}"},
{id:"commandblock_minecart",Command:"setblock ~-2 ~-1 ~ wall_sign 2 replace {
Text1:\"{\\\"text\\\":\\\"\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"tellraw @p[r=4,score_CK=89] {\\\\\\\"text\\\\\\\":\\\\\\\"����\\\\\\\",\\\\\\\"color\\\\\\\":\\\\\\\"red\\\\\\\"}\\\"}}\",
Text2:\"{\\\"text\\\":\\\"�һ��̱�ʯ��\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=90] minecraft:emerald_block\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$90\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players add @p[r=4,score_CK=89] CK 90 \\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=90] CK 90\\\"}}\"}"},
{id:"commandblock_minecart",Command:"setblock ~ ~-1 ~ minecraft:lava 7 replace"},
{id:"commandblock_minecart",Command:"fill ~ ~ ~ ~ ~-1 ~ minecraft:air 0 replace"}]}]}
summon falling_block ~ ~2 ~ {Time:1,Block:"minecraft:redstone_block",Passengers:[{id:"falling_block",Time:1,Block:"minecraft:activator_rail",Passengers:[{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~ wall_sign 2 replace {Text1:\"{\\\"text\\\":\\\"\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"tellraw @p[r=4,score_CK=9] {\\\\\\\"text\\\\\\\":\\\\\\\"����\\\\\\\",\\\\\\\"color\\\\\\\":\\\\\\\"red\\\\\\\"}\\\"}}\",Text2:\"{\\\"text\\\":\\\"�һ��̱�ʯ\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=10] minecraft:emerald\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",Text3:\"{\\\"text\\\":\\\"$10\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players add @p[r=4,score_CK=9] CK 10 \\\"},\\\"color\\\":\\\"dark_blue\\\"}\",Text4:\"{\\\"text\\\":\\\"\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=10] CK 10\\\"}}\"}"},{id:"commandblock_minecart",Command:"setblock ~-2 ~-1 ~ wall_sign 2 replace {Text1:\"{\\\"text\\\":\\\"\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"tellraw @p[r=4,score_CK=89] {\\\\\\\"text\\\\\\\":\\\\\\\"����\\\\\\\",\\\\\\\"color\\\\\\\":\\\\\\\"red\\\\\\\"}\\\"}}\",Text2:\"{\\\"text\\\":\\\"�һ��̱�ʯ��\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=90] minecraft:emerald_block\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",Text3:\"{\\\"text\\\":\\\"$90\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players add @p[r=4,score_CK=89] CK 90 \\\"},\\\"color\\\":\\\"dark_blue\\\"}\",Text4:\"{\\\"text\\\":\\\"\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=90] CK 90\\\"}}\"}"},{id:"commandblock_minecart",Command:"setblock ~ ~-1 ~ minecraft:lava 7 replace"},{id:"commandblock_minecart",Command:"fill ~ ~ ~ ~ ~-1 ~ minecraft:air 0 replace"}]}]}


setblock ~2 ~-1 ~ wall_sign 2 replace {
Text1:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tellraw @p[r=4,score_CK=9] {\\\"text\\\":\\\"����\\\",\\\"color\\\":\\\"red\\\"}\"}}",
Text2:"{\"text\":\"�һ��̱�ʯ\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"give @p[score_CK_min=10] minecraft:emerald\"},\"color\":\"dark_blue\"}",
Text3:"{\"text\":\"$10\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players add @p[r=4,score_CK=9] CK 10 \"},\"color\":\"dark_blue\"}",
Text4:"{\"text\":\"\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players remove @p[score_CK_min=10] CK 10\"}}"}


give @s diamond_helmet 1 0 {AttributeModifiers:[{Operation:0,Amount:3,AttributeName:"generic.armor",Name:"feet_armor",UUIDLeast:1004,UUIDMost:520,Slot:"head"},{Operation:0,Amount:2,AttributeName:"generic.armorToughness",Name:"feet_armorToughness",UUIDLeast:1005,UUIDMost:520,Slot:"head"},{Operation:0,Amount:0,AttributeName:"generic.maxHealth",Name:"feet_maxHealth",UUIDLeast:1006,UUIDMost:520,Slot:"head"},{Operation:0,Amount:0,AttributeName:"generic.luck",Name:"feet_luck",UUIDLeast:1007,UUIDMost:520,Slot:"head"},{Operation:0,Amount:0,AttributeName:"generic.knockbackResistance",Name:"feet_knockbackResistance",UUIDLeast:1008,UUIDMost:520,Slot:"mainhand"},{Operation:0,Amount:0,AttributeName:"generic.movementSpeed",Name:"feet_movementSpeed",UUIDLeast:1009,UUIDMost:520,Slot:"offhand"}]}



=====	��Ϣ����
��׼����Ϊ25%%,��������5%%;ÿ�����ʡ�1%%
scoreboard objectives add CK dummy ���
scoreboard objectives setdisplay sidebar CK
scoreboard objectives add temp dummy
scoreboard players set #bankFloatRate1 CK 25
summon armor_stand ~ ~0.5 ~ {Tags:["rd"],NoGravity:true}
execute @r[type=armor_stand,r=6,tag=rd] ~ ~ ~ setblock ~ ~-1 ~ redstone_block
execute @e[type=armor_stand,r=6,tag=rd] ~ ~ ~ setblock ~ ~-1 ~ air
scoreboard players remove #bankFloatRate1 CK 2
summon falling_block ~ ~1 ~ {Block:stone,Time:1,Passengers:[{id:minecraft:falling_block,Block:redstone_block,Time:1,Passengers:[{id:minecraft:falling_block,Block:activator_rail,Time:1,Passengers:[
{id:minecraft:commandblock_minecart,Command:scoreboard players add #bankFloatRate1 CK 1},
{id:minecraft:commandblock_minecart,Command:scoreboard players set #bankFloatRate2 CK 5},
{id:minecraft:commandblock_minecart,Command:scoreboard players set #bankFloatRate3 CK 10},
{id:minecraft:commandblock_minecart,Command:scoreboard players set #bankFloatRate4 CK 15},
{id:minecraft:commandblock_minecart,Command:scoreboard players set #bankFloatRate5 CK 20},
{id:minecraft:commandblock_minecart,Command:scoreboard players operation #bankFloatRate2 CK += #bankFloatRate1 CK},
{id:minecraft:commandblock_minecart,Command:scoreboard players operation #bankFloatRate3 CK += #bankFloatRate1 CK},
{id:minecraft:commandblock_minecart,Command:scoreboard players operation #bankFloatRate4 CK += #bankFloatRate1 CK},
{id:minecraft:commandblock_minecart,Command:scoreboard players operation #bankFloatRate5 CK += #bankFloatRate1 CK},
{id:minecraft:commandblock_minecart,Command:scoreboard players set #bankRate1 CK 10000},
{id:minecraft:commandblock_minecart,Command:scoreboard players set #bankRate2 CK 10000},
{id:minecraft:commandblock_minecart,Command:scoreboard players set #bankRate3 CK 10000},
{id:minecraft:commandblock_minecart,Command:scoreboard players set #bankRate4 CK 10000},
{id:minecraft:commandblock_minecart,Command:scoreboard players set #bankRate5 CK 10000},
{id:minecraft:commandblock_minecart,Command:scoreboard players operation #bankRate1 CK /= #bankFloatRate1 CK},
{id:minecraft:commandblock_minecart,Command:scoreboard players operation #bankRate2 CK /= #bankFloatRate2 CK},
{id:minecraft:commandblock_minecart,Command:scoreboard players operation #bankRate3 CK /= #bankFloatRate3 CK},
{id:minecraft:commandblock_minecart,Command:scoreboard players operation #bankRate4 CK /= #bankFloatRate4 CK},
{id:minecraft:commandblock_minecart,Command:scoreboard players operation #bankRate5 CK /= #bankFloatRate5 CK},
{id:minecraft:commandblock_minecart,Command:scoreboard players operation @a temp = @a CK},
{id:minecraft:commandblock_minecart,Command:scoreboard players operation @a[score_CK=999] temp /= #bankRate1 CK},
{id:minecraft:commandblock_minecart,Command:scoreboard players operation @a[score_CK=9999,score_CK_min=1000] temp /= #bankRate2 CK},
{id:minecraft:commandblock_minecart,Command:scoreboard players operation @a[score_CK=99999,score_CK_min=10000] temp /= #bankRate3 CK},
{id:minecraft:commandblock_minecart,Command:scoreboard players operation @a[score_CK=999999,score_CK_min=100000] temp /= #bankRate4 CK},
{id:minecraft:commandblock_minecart,Command:scoreboard players operation @a[score_CK_min=1000000] temp /= #bankRate5 CK},
{id:minecraft:commandblock_minecart,Command:tellraw @a [{"text":"���ջ�׼����Ϊ��","color":"yellow"},{"score":{"name":"#bankFloatRate1","objective":"CK"},"color":"gold"},{"text":"%%"}]},
{id:minecraft:commandblock_minecart,Command:tellraw @a [{"text":"������Ϣ�ѷ��ţ����ƣ�","color":"yellow"},{"score":{"name":"*","objective":"temp"},"color":"gold"},{"text":"Ԫ","color":"yellow"}]},
{id:minecraft:commandblock_minecart,Command:scoreboard players operation @a CK += @a temp},
{id:minecraft:commandblock_minecart,Command:setblock ~ ~ ~1 command_block 0 replace {Command:fill ~ ~-2 ~-1 ~ ~ ~ air}},
{id:minecraft:commandblock_minecart,Command:setblock ~ ~-1 ~1 redstone_block},
{id:minecraft:commandblock_minecart,Command:kill @e[type=commandblock_minecart,r=1]}]}]}]}

====================================�����г�====================================
====	��չ��
����
������
������������
Creebet
������
�����
ͷ����õ��
���
ֲ��
ը��
ȼ�յ�ͷ��
���ͷ��
���
�����ؿ�2
���⴮
����
����
����
�ĵ�
�����ؿ�
���
��
����ķ
ָ��
������
Stage

testfor @a[x=225,y=63,z=236,dx=50,dy=9,dz=28]
tellraw @a[x=225,y=63,z=236,dx=50,dy=9,dz=28]
[{"text":"��ӭ���������ݣ�\n","color":"yellow"},
{"text":"��չ��չ������Kristoffer Zetterstrand����Ʒ\n","color":"light_purple"},
{"text":"��չ��չ������һЩ��������\n","color":"light_purple"},
{"text":"�������Թ������ǵķ���Ʒ���ż���","color":"red"}]
summon painting 257 65 251 {Facing:1b,Motive:"Pointer"}

====	��չ��
������������	ŷ�ʡ�����������	1830
Ī�λ�԰		���͵¡�Ī��		~1870
�ճ���ӡ��		���͵¡�Ī��		1872
���տ�			��ɭ�ء����������	1888
��ҹ			��ɭ�ء����������	1889
�ź�			���»����ɿ�		1893
ʰ����			�á��������ߡ�����	1857
������ɯ		���ɶࡤ�����	1504
�������		���ɶࡤ�����	1498
��ϼ����ͼ		����				����
��ʯͼ			��ׯ				���
��	2008/03/17
��	2015/05/28
��	2014/11/29
��	2015/01/28

setblock ~ ~ ~ wall_sign 3 replace {
Text1:"{\"text\":\"�ź�\",\"color\":\"dark_blue\"}",
Text2:"{\"text\":\"���ߣ�����������\",\"color\":\"dark_purple\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute @p[score_CK_min=120] ~ ~ ~ summon area_effect_cloud ~ ~ ~ {Passengers:[
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"�ź�\\\",Lore:[\\\"1/12\\\"]}},Damage:10000s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"�ź�\\\",Lore:[\\\"2/12\\\"]}},Damage:10001s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"�ź�\\\",Lore:[\\\"3/12\\\"]}},Damage:10002s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"�ź�\\\",Lore:[\\\"4/12\\\"]}},Damage:10003s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"�ź�\\\",Lore:[\\\"5/12\\\"]}},Damage:10004s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"�ź�\\\",Lore:[\\\"6/12\\\"]}},Damage:10005s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"�ź�\\\",Lore:[\\\"7/12\\\"]}},Damage:10006s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"�ź�\\\",Lore:[\\\"8/12\\\"]}},Damage:10007s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"�ź�\\\",Lore:[\\\"9/12\\\"]}},Damage:10008s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"�ź�\\\",Lore:[\\\"10/12\\\"]}},Damage:10009s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"�ź�\\\",Lore:[\\\"11/12\\\"]}},Damage:10010s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"�ź�\\\",Lore:[\\\"12/12\\\"]}},Damage:10011s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
]}\"}}",Text3:"{\"text\":\"1893\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players remove @p[score_CK_min=120] CK 120 \"},\"color\":\"dark_purple\"}",Text4:"{\"text\":\"�ۼۣ�$120\",\"color\":\"dark_blue\"}"}

setblock ~ ~ ~ wall_sign 2 replace {
Text1:"{\"text\":\"������ɯ\",\"color\":\"dark_blue\"}",
Text2:"{\"text\":\"���ߣ������\",\"color\":\"dark_purple\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute @p[score_CK_min=60] ~ ~ ~ summon area_effect_cloud ~ ~ ~ {Passengers:[
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"������ɯ\\\",Lore:[\\\"1/6\\\"]}},Damage:10012s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"������ɯ\\\",Lore:[\\\"2/6\\\"]}},Damage:10013s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"������ɯ\\\",Lore:[\\\"3/6\\\"]}},Damage:10014s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"������ɯ\\\",Lore:[\\\"4/6\\\"]}},Damage:10015s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"������ɯ\\\",Lore:[\\\"5/6\\\"]}},Damage:10016s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"������ɯ\\\",Lore:[\\\"6/6\\\"]}},Damage:10017s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
]}\"}}",Text3:"{\"text\":\"1504\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players remove @p[score_CK_min=60] CK 60 \"},\"color\":\"dark_purple\"}",Text4:"{\"text\":\"�ۼۣ�$60\",\"color\":\"dark_blue\"}"}

setblock ~ ~ ~ wall_sign 2 replace {
Text1:"{\"text\":\"�������\",\"color\":\"dark_blue\"}",
Text2:"{\"text\":\"���ߣ������\",\"color\":\"dark_purple\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute @p[score_CK_min=60] ~ ~ ~ summon area_effect_cloud ~ ~ ~ {Passengers:[
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"�������\\\",Lore:[\\\"1/6\\\"]}},Damage:10018s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"�������\\\",Lore:[\\\"2/6\\\"]}},Damage:10019s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"�������\\\",Lore:[\\\"3/6\\\"]}},Damage:10020s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"�������\\\",Lore:[\\\"4/6\\\"]}},Damage:10021s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"�������\\\",Lore:[\\\"5/6\\\"]}},Damage:10022s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"�������\\\",Lore:[\\\"6/6\\\"]}},Damage:10023s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
]}\"}}",Text3:"{\"text\":\"1498\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players remove @p[score_CK_min=60] CK 60 \"},\"color\":\"dark_purple\"}",Text4:"{\"text\":\"�ۼۣ�$60\",\"color\":\"dark_blue\"}"}

setblock ~ ~ ~ wall_sign 5 replace {
Text1:"{\"text\":\"���տ�\",\"color\":\"dark_blue\"}",
Text2:"{\"text\":\"���ߣ���ɭ�ء����\",\"color\":\"dark_purple\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute @p[score_CK_min=120] ~ ~ ~ summon area_effect_cloud ~ ~ ~ {Passengers:[
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"���տ�\\\",Lore:[\\\"1/12\\\"]}},Damage:10024s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"���տ�\\\",Lore:[\\\"2/12\\\"]}},Damage:10025s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"���տ�\\\",Lore:[\\\"3/12\\\"]}},Damage:10026s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"���տ�\\\",Lore:[\\\"4/12\\\"]}},Damage:10027s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"���տ�\\\",Lore:[\\\"5/12\\\"]}},Damage:10028s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"���տ�\\\",Lore:[\\\"6/12\\\"]}},Damage:10029s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"���տ�\\\",Lore:[\\\"7/12\\\"]}},Damage:10030s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"���տ�\\\",Lore:[\\\"8/12\\\"]}},Damage:10031s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"���տ�\\\",Lore:[\\\"9/12\\\"]}},Damage:10032s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"���տ�\\\",Lore:[\\\"10/12\\\"]}},Damage:10033s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"���տ�\\\",Lore:[\\\"11/12\\\"]}},Damage:10034s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"���տ�\\\",Lore:[\\\"12/12\\\"]}},Damage:10035s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
]}\"}}",Text3:"{\"text\":\"1888\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players remove @p[score_CK_min=120] CK 120 \"},\"color\":\"dark_purple\"}",Text4:"{\"text\":\"�ۼۣ�$120\",\"color\":\"dark_blue\"}"}

setblock ~ ~ ~ wall_sign 2 replace {
Text1:"{\"text\":\"�ճ���ӡ��\",\"color\":\"dark_blue\"}",
Text2:"{\"text\":\"���ߣ����͵¡�Ī��\",\"color\":\"dark_purple\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute @p[score_CK_min=120] ~ ~ ~ summon area_effect_cloud ~ ~ ~ {Passengers:[
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"�ճ���ӡ��\\\",Lore:[\\\"1/12\\\"]}},Damage:10036s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"�ճ���ӡ��\\\",Lore:[\\\"2/12\\\"]}},Damage:10037s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"�ճ���ӡ��\\\",Lore:[\\\"3/12\\\"]}},Damage:10038s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"�ճ���ӡ��\\\",Lore:[\\\"4/12\\\"]}},Damage:10039s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"�ճ���ӡ��\\\",Lore:[\\\"5/12\\\"]}},Damage:10040s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"�ճ���ӡ��\\\",Lore:[\\\"6/12\\\"]}},Damage:10041s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"�ճ���ӡ��\\\",Lore:[\\\"7/12\\\"]}},Damage:10042s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"�ճ���ӡ��\\\",Lore:[\\\"8/12\\\"]}},Damage:10043s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"�ճ���ӡ��\\\",Lore:[\\\"9/12\\\"]}},Damage:10044s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"�ճ���ӡ��\\\",Lore:[\\\"10/12\\\"]}},Damage:10045s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"�ճ���ӡ��\\\",Lore:[\\\"11/12\\\"]}},Damage:10046s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"�ճ���ӡ��\\\",Lore:[\\\"12/12\\\"]}},Damage:10047s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
]}\"}}",Text3:"{\"text\":\"1872\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players remove @p[score_CK_min=120] CK 120 \"},\"color\":\"dark_purple\"}",Text4:"{\"text\":\"�ۼۣ�$120\",\"color\":\"dark_blue\"}"}

setblock ~ ~ ~ wall_sign 2 replace {
Text1:"{\"text\":\"Ī�λ�԰\",\"color\":\"dark_blue\"}",
Text2:"{\"text\":\"���ߣ����͵¡�Ī��\",\"color\":\"dark_purple\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute @p[score_CK_min=120] ~ ~ ~ summon area_effect_cloud ~ ~ ~ {Passengers:[
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"Ī�λ�԰\\\",Lore:[\\\"1/12\\\"]}},Damage:10048s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"Ī�λ�԰\\\",Lore:[\\\"2/12\\\"]}},Damage:10049s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"Ī�λ�԰\\\",Lore:[\\\"3/12\\\"]}},Damage:10050s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"Ī�λ�԰\\\",Lore:[\\\"4/12\\\"]}},Damage:10051s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"Ī�λ�԰\\\",Lore:[\\\"5/12\\\"]}},Damage:10052s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"Ī�λ�԰\\\",Lore:[\\\"6/12\\\"]}},Damage:10053s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"Ī�λ�԰\\\",Lore:[\\\"7/12\\\"]}},Damage:10054s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"Ī�λ�԰\\\",Lore:[\\\"8/12\\\"]}},Damage:10055s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"Ī�λ�԰\\\",Lore:[\\\"9/12\\\"]}},Damage:10056s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"Ī�λ�԰\\\",Lore:[\\\"10/12\\\"]}},Damage:10057s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"Ī�λ�԰\\\",Lore:[\\\"11/12\\\"]}},Damage:10058s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"Ī�λ�԰\\\",Lore:[\\\"12/12\\\"]}},Damage:10059s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
]}\"}}",Text3:"{\"text\":\"~1870\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players remove @p[score_CK_min=120] CK 120 \"},\"color\":\"dark_purple\"}",Text4:"{\"text\":\"�ۼۣ�$120\",\"color\":\"dark_blue\"}"}

setblock ~ ~ ~ wall_sign 3 replace {
Text1:"{\"text\":\"��\",\"color\":\"dark_blue\"}",
Text2:"{\"text\":\"���ߣ�δ֪\",\"color\":\"dark_purple\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute @p[score_CK_min=60] ~ ~ ~ summon area_effect_cloud ~ ~ ~ {Passengers:[
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"��\\\",Lore:[\\\"1/6\\\"]}},Damage:10060s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"��\\\",Lore:[\\\"2/6\\\"]}},Damage:10061s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"��\\\",Lore:[\\\"3/6\\\"]}},Damage:10062s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"��\\\",Lore:[\\\"4/6\\\"]}},Damage:10063s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"��\\\",Lore:[\\\"5/6\\\"]}},Damage:10064s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"��\\\",Lore:[\\\"6/6\\\"]}},Damage:10065s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
]}\"}}",Text3:"{\"text\":\"2008/03/17\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players remove @p[score_CK_min=60] CK 60 \"},\"color\":\"dark_purple\"}",Text4:"{\"text\":\"�ۼۣ�$60\",\"color\":\"dark_blue\"}"}

setblock ~ ~ ~ wall_sign 3 replace {
Text1:"{\"text\":\"��\",\"color\":\"dark_blue\"}",
Text2:"{\"text\":\"���ߣ��绨\",\"color\":\"dark_purple\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute @p[score_CK_min=60] ~ ~ ~ summon area_effect_cloud ~ ~ ~ {Passengers:[
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"��\\\",Lore:[\\\"1/6\\\"]}},Damage:10066s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"��\\\",Lore:[\\\"2/6\\\"]}},Damage:10067s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"��\\\",Lore:[\\\"3/6\\\"]}},Damage:10068s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"��\\\",Lore:[\\\"4/6\\\"]}},Damage:10069s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"��\\\",Lore:[\\\"5/6\\\"]}},Damage:10070s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"��\\\",Lore:[\\\"6/6\\\"]}},Damage:10071s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
]}\"}}",Text3:"{\"text\":\"2015/01/28\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players remove @p[score_CK_min=60] CK 60 \"},\"color\":\"dark_purple\"}",Text4:"{\"text\":\"�ۼۣ�$60\",\"color\":\"dark_blue\"}"}

setblock ~ ~ ~ wall_sign 3 replace {
Text1:"{\"text\":\"��\",\"color\":\"dark_blue\"}",
Text2:"{\"text\":\"���ߣ��绨\",\"color\":\"dark_purple\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute @p[score_CK_min=60] ~ ~ ~ summon area_effect_cloud ~ ~ ~ {Passengers:[
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"��\\\",Lore:[\\\"1/6\\\"]}},Damage:10072s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"��\\\",Lore:[\\\"2/6\\\"]}},Damage:10073s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"��\\\",Lore:[\\\"3/6\\\"]}},Damage:10074s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"��\\\",Lore:[\\\"4/6\\\"]}},Damage:10075s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"��\\\",Lore:[\\\"5/6\\\"]}},Damage:10076s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"��\\\",Lore:[\\\"6/6\\\"]}},Damage:10077s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
]}\"}}",Text3:"{\"text\":\"2014/11/29\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players remove @p[score_CK_min=60] CK 60 \"},\"color\":\"dark_purple\"}",Text4:"{\"text\":\"�ۼۣ�$60\",\"color\":\"dark_blue\"}"}

setblock ~ ~ ~ wall_sign 3 replace {
Text1:"{\"text\":\"��\",\"color\":\"dark_blue\"}",
Text2:"{\"text\":\"���ߣ��绨\",\"color\":\"dark_purple\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute @p[score_CK_min=60] ~ ~ ~ summon area_effect_cloud ~ ~ ~ {Passengers:[
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"��\\\",Lore:[\\\"1/6\\\"]}},Damage:10078s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"��\\\",Lore:[\\\"2/6\\\"]}},Damage:10079s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"��\\\",Lore:[\\\"3/6\\\"]}},Damage:10080s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"��\\\",Lore:[\\\"4/6\\\"]}},Damage:10081s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"��\\\",Lore:[\\\"5/6\\\"]}},Damage:10082s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"��\\\",Lore:[\\\"6/6\\\"]}},Damage:10083s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
]}\"}}",Text3:"{\"text\":\"2015/05/28\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players remove @p[score_CK_min=60] CK 60 \"},\"color\":\"dark_purple\"}",Text4:"{\"text\":\"�ۼۣ�$60\",\"color\":\"dark_blue\"}"}

setblock ~ ~ ~ wall_sign 5 replace {
Text1:"{\"text\":\"��ҹ\",\"color\":\"dark_blue\"}",
Text2:"{\"text\":\"���ߣ���ɭ�ء����\",\"color\":\"dark_purple\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute @p[score_CK_min=120] ~ ~ ~ summon area_effect_cloud ~ ~ ~ {Passengers:[
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"��ҹ\\\",Lore:[\\\"1/12\\\"]}},Damage:10084s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"��ҹ\\\",Lore:[\\\"2/12\\\"]}},Damage:10085s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"��ҹ\\\",Lore:[\\\"3/12\\\"]}},Damage:10086s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"��ҹ\\\",Lore:[\\\"4/12\\\"]}},Damage:10087s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"��ҹ\\\",Lore:[\\\"5/12\\\"]}},Damage:10088s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"��ҹ\\\",Lore:[\\\"6/12\\\"]}},Damage:10089s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"��ҹ\\\",Lore:[\\\"7/12\\\"]}},Damage:10090s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"��ҹ\\\",Lore:[\\\"8/12\\\"]}},Damage:10091s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"��ҹ\\\",Lore:[\\\"9/12\\\"]}},Damage:10092s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"��ҹ\\\",Lore:[\\\"10/12\\\"]}},Damage:10093s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"��ҹ\\\",Lore:[\\\"11/12\\\"]}},Damage:10094s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"��ҹ\\\",Lore:[\\\"12/12\\\"]}},Damage:10095s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
]}\"}}",Text3:"{\"text\":\"1889\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players remove @p[score_CK_min=120] CK 120 \"},\"color\":\"dark_purple\"}",Text4:"{\"text\":\"�ۼۣ�$120\",\"color\":\"dark_blue\"}"}

setblock ~ ~ ~ wall_sign 2 replace {
Text1:"{\"text\":\"������������\",\"color\":\"dark_blue\"}",
Text2:"{\"text\":\"���ߣ�����������\",\"color\":\"dark_purple\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute @p[score_CK_min=60] ~ ~ ~ summon area_effect_cloud ~ ~ ~ {Passengers:[
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"������������\\\",Lore:[\\\"1/6\\\"]}},Damage:10096s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"������������\\\",Lore:[\\\"2/6\\\"]}},Damage:10097s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"������������\\\",Lore:[\\\"3/6\\\"]}},Damage:10098s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"������������\\\",Lore:[\\\"4/6\\\"]}},Damage:10099s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"������������\\\",Lore:[\\\"5/6\\\"]}},Damage:10100s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"������������\\\",Lore:[\\\"6/6\\\"]}},Damage:10101s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
]}\"}}",Text3:"{\"text\":\"1830\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players remove @p[score_CK_min=60] CK 60 \"},\"color\":\"dark_purple\"}",Text4:"{\"text\":\"�ۼۣ�$60\",\"color\":\"dark_blue\"}"}

setblock ~ ~ ~ wall_sign 3 replace {
Text1:"{\"text\":\"ʰ����\",\"color\":\"dark_blue\"}",
Text2:"{\"text\":\"���ߣ��á�����\",\"color\":\"dark_purple\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute @p[score_CK_min=60] ~ ~ ~ summon area_effect_cloud ~ ~ ~ {Passengers:[
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"ʰ����\\\",Lore:[\\\"1/6\\\"]}},Damage:10102s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"ʰ����\\\",Lore:[\\\"2/6\\\"]}},Damage:10103s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"ʰ����\\\",Lore:[\\\"3/6\\\"]}},Damage:10104s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"ʰ����\\\",Lore:[\\\"4/6\\\"]}},Damage:10105s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"ʰ����\\\",Lore:[\\\"5/6\\\"]}},Damage:10106s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"ʰ����\\\",Lore:[\\\"6/6\\\"]}},Damage:10107s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
]}\"}}",Text3:"{\"text\":\"1857\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players remove @p[score_CK_min=60] CK 60 \"},\"color\":\"dark_purple\"}",Text4:"{\"text\":\"�ۼۣ�$60\",\"color\":\"dark_blue\"}"}

setblock ~ ~ ~ wall_sign 5 replace {
Text1:"{\"text\":\"��ʯͼ\",\"color\":\"dark_blue\"}",
Text2:"{\"text\":\"���ߣ���ׯ\",\"color\":\"dark_purple\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"execute @p[score_CK_min=20] ~ ~ ~ summon area_effect_cloud ~ ~ ~ {Passengers:[
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"��ʯͼ\\\",Lore:[\\\"1/2\\\"]}},Damage:10110s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
{Item:{id:\\\"minecraft:filled_map\\\",tag:{HideFlags:32,display:{Name:\\\"��ʯͼ\\\",Lore:[\\\"2/2\\\"]}},Damage:10111s,Count:1b},id:\\\"minecraft:item\\\",PickupDelay:0},
]}\"}}",Text3:"{\"text\":\"���\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players remove @p[score_CK_min=20] CK 20 \"},\"color\":\"dark_purple\"}",Text4:"{\"text\":\"�ۼۣ�$20\",\"color\":\"dark_blue\"}"}

======================================ҩ��======================================
testfor @a[x=279,y=63,z=244,dx=15,dy=8,dz=12]
tellraw @a[x=279,y=63,z=244,dx=15,dy=8,dz=12] [{"text":"��ӭ����ҩ��\n","color":"yellow"},
{"text":"���������������߼�ҩˮ","color":"light_purple"}]
summon villager ~ ~1.5 ~ {Rotation:[270f,0f],NoAI:true,Invulnerable:true,CustomName:"ҩ��ʦ",CustomNameVisible:true,Profession:true,Silent:true,Offers:{Recipes:[
{maxUses:99999999,buy:{id:minecraft:potion,Count:1b,tag:{Potion:minecraft:water}},buyB:{id:minecraft:fish,Damage:3s,Count:8b},sell:{id:minecraft:potion,Count:1b,tag:{CustomPotionColor:2970007,display:{Name:"ˮ��ҩˮ"},CustomPotionEffects:[{Id:13,Duration:9600}]}}},
{maxUses:99999999,buy:{id:minecraft:potion,Count:1b,tag:{Potion:minecraft:water}},buyB:{id:minecraft:magma_cream,Count:8b},sell:{id:minecraft:potion,Count:1b,tag:{CustomPotionColor:14719033,display:{Name:"����ҩˮ"},CustomPotionEffects:[{Id:12,Duration:9600}]}}},
{maxUses:99999999,buy:{id:minecraft:potion,Count:1b,tag:{Potion:minecraft:water}},buyB:{id:minecraft:golden_carrot,Count:8b},sell:{id:minecraft:potion,Count:1b,tag:{CustomPotionColor:2039710,display:{Name:"ҹ��ҩˮ"},CustomPotionEffects:[{Id:16,Duration:9600}]}}},
{maxUses:99999999,buy:{id:minecraft:potion,Count:1b,tag:{Potion:minecraft:water}},buyB:{id:minecraft:ender_pearl,Count:8b},sell:{id:minecraft:potion,Count:1b,tag:{CustomPotionColor:8225168,display:{Name:"����ҩˮ"},CustomPotionEffects:[{Id:14,Duration:9600}]}}},
{maxUses:99999999,buy:{id:minecraft:potion,Count:1b,tag:{Potion:minecraft:water}},buyB:{id:minecraft:apple,Count:8b},sell:{id:minecraft:potion,Count:1b,tag:{CustomPotionColor:15934242,display:{Name:"����ҩˮ"},CustomPotionEffects:[{Id:23,Duration:20}]}}},
{maxUses:99999999,buy:{id:minecraft:potion,Count:1b,tag:{Potion:minecraft:water}},buyB:{id:minecraft:ghast_tear,Count:8b},sell:{id:minecraft:potion,Count:1b,tag:{CustomPotionColor:13261736,display:{Name:"����ҩˮ"},CustomPotionEffects:[{Id:10,Amplifier:1,Duration:9600}]}}},
{maxUses:99999999,buy:{id:minecraft:potion,Count:1b,tag:{Potion:minecraft:water}},buyB:{id:minecraft:sugar,Count:8b},sell:{id:minecraft:potion,Count:1b,tag:{CustomPotionColor:8039619,display:{Name:"Ѹ��ҩˮ"},CustomPotionEffects:[{Id:1,Amplifier:1,Duration:9600}]}}},
{maxUses:99999999,buy:{id:minecraft:potion,Count:1b,tag:{Potion:minecraft:water}},buyB:{id:minecraft:diamond,Count:8b},sell:{id:minecraft:potion,Count:1b,tag:{CustomPotionColor:14073154,display:{Name:"����ҩˮ"},CustomPotionEffects:[{Id:3,Amplifier:1,Duration:9600}]}}},
{maxUses:99999999,buy:{id:minecraft:potion,Count:1b,tag:{Potion:minecraft:water}},buyB:{id:minecraft:rabbit_foot,Count:8b},sell:{id:minecraft:potion,Count:1b,tag:{CustomPotionColor:2226763,display:{Name:"��Ծҩˮ"},CustomPotionEffects:[{Id:8,Amplifier:1,Duration:9600}]}}},
{maxUses:99999999,buy:{id:minecraft:potion,Count:1b,tag:{Potion:minecraft:water}},buyB:{id:minecraft:blaze_powder,Count:8b},sell:{id:minecraft:potion,Count:1b,tag:{CustomPotionColor:9511714,display:{Name:"����ҩˮ"},CustomPotionEffects:[{Id:5,Amplifier:2,Duration:9600}]}}},
{maxUses:99999999,buy:{id:minecraft:potion,Count:1b,tag:{Potion:minecraft:water}},buyB:{id:minecraft:speckled_melon,Count:8b},sell:{id:minecraft:potion,Count:1b,tag:{CustomPotionColor:16262179,display:{Name:"����ҩˮ"},CustomPotionEffects:[{Id:6,Amplifier:2}]}}},
{maxUses:99999999,buy:{id:minecraft:potion,Count:1b,tag:{Potion:minecraft:water}},buyB:{id:minecraft:iron_ingot,Count:8b},sell:{id:minecraft:potion,Count:1b,tag:{CustomPotionColor:9913401,display:{Name:"����ҩˮ"},CustomPotionEffects:[{Id:11,Amplifier:2,Duration:9600}]}}},
{maxUses:99999999,buy:{id:minecraft:potion,Count:1b,tag:{Potion:minecraft:water}},buyB:{id:minecraft:golden_apple,Count:8b},sell:{id:minecraft:potion,Count:1b,tag:{CustomPotionColor:14841103,display:{Name:"����ҩˮ"},CustomPotionEffects:[{Id:21,Amplifier:2,Duration:9600}]}}}
]}}

==================================    ����    ==================================
���г���ˢ�����������Ʒ���������ġ�ũҵ�����װ���ȡ�

testfor @a[x=205,y=64,z=286,dx=90,dy=8,dz=48]
tellraw @a[x=205,y=64,z=286,dx=90,dy=8,dz=48] [{"text":"��ӭ�����г�\n","color":"yellow"},
{"text":"101 ����ɳ����ѩ              102 �����½硢ĩ�ء��ż�����\n","color":"light_purple"},
{"text":"103 ����ʯ�ġ���ʯ            104 ��������\n","color":"green"},
{"text":"105 ����ũ����չ�ũ�����  106 ����Ⱦ�ϣ�DIY�̻����������\n","color":"red"},
{"text":"107 ���ۻ���                   108-109 ���ۡ���������͹���\n","color":"blue"},
{"text":"110 ����ʳ��                   111 ���ۡ��������������ߡ�����\n","color":"gold"},
{"text":"112 ���۹��ߡ���ħ��\n","color":"light_purple"}]
setblock ~ ~ ~ wall_sign 5 replace {Text1:"{\"text\":\"\"}",
Text2:"{\"text\":\"������\",\"color\":\"dark_blue\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"setblock ~ ~-4 ~ redstone_torch\"}}",
Text3:"{\"text\":\"$640\",\"color\":\"dark_blue\"}",Text4:"{\"text\":\"\"}"}
scoreboard players remove @p[score_CK_min=1] CK 1

====	101 ɳ����ѩ 12
�һ���		dirt:2				1
�ݷ���		grass				1
��˿		mycelium			10
ճ��		clay				4
��			ice					1
����		packed_ice			2
ѩ��		snow				1
ɰ��		gravel				2
ɳ��		sand				2
ɳʯ		sandstone			2
��ɳ		sand:1				4
��ɳʯ		red_sandstone		4

summon falling_block ~ ~2 ~ {Time:1,Block:"minecraft:redstone_block",Passengers:[
{id:"falling_block",Time:1,Block:"minecraft:activator_rail",Passengers:[

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~ wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"����һ���\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=1] minecraft:dirt 1 2\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$1\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=1] CK 1\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~1 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"����ݷ���\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=1] minecraft:grass\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$1\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=1] CK 1\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~2 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"�����˿\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=10] minecraft:mycelium\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$10\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=10] CK 10\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~3 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"����ճ��\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=4] minecraft:clay\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$4\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=4] CK 4\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~4 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"�����\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=1] minecraft:ice\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$1\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=1] CK 1\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~5 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"���򸡱�\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=2] minecraft:packed_ice\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$2\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=2] CK 2\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~6 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"����ѩ��\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=1] minecraft:snow\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$1\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=1] CK 1\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~7 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"����ɰ��\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=2] minecraft:gravel\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$2\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=2] CK 2\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~8 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"����ɳ��\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=2] minecraft:sand\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$2\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=2] CK 2\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~9 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"����ɳʯ\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=2] minecraft:sandstone\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$2\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=2] CK 2\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~10 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"�����ɳ\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=4] minecraft:sand 1 1\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$4\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=4] CK 4\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~11 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"�����ɳʯ\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=4] minecraft:red_sandstone\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$4\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=4] CK 4\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~ ~-1 ~ minecraft:lava 7 replace"},
{id:"commandblock_minecart",Command:"fill ~ ~ ~ ~ ~-1 ~ minecraft:air 0 replace"}]}]}

testfor @a[x=285,y=64,z=288,dx=8,dy=5,dz=11]
tellraw @a[x=285,y=64,z=288,dx=8,dy=5,dz=11]  [{"text":"��ӭ����ɳ����ѩ\n","color":"yellow"},
{"text":"�һ���$1���ݷ���$1����˿$10��ճ��$4����$1������$2��ѩ��$1\n","color":"light_purple"},
{"text":"ɰ��$2��ɳ��/ɳʯ$2����ɳ/��ɳʯ$4","color":"gold"}]

====	102 �½硢ĩ�ء��ż����� 9
�ҽ���		magma				10
���ɳ		soul_sand			2
������		netherrack			1
��ҫʯ		obsidian			16
өʯ		glowstone			4
ĩ��ʯ		end_stone			2
ĩ��ʯש	end_bricks			2
������Ƭ	prismarine_shard	1
����ɰ��	prismarine_crystals	2

summon falling_block ~ ~2 ~ {Time:1,Block:"minecraft:redstone_block",Passengers:[
{id:"falling_block",Time:1,Block:"minecraft:activator_rail",Passengers:[

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~ wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"�����ҽ���\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=10] minecraft:magma\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$10\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=10] CK 10\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~1 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"�������ɳ\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=2] minecraft:soul_sand\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$2\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=2] CK 2\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~2 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"���������\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=1] minecraft:netherrack\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$1\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=1] CK 1\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~3 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"�����ҫʯ\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=16] minecraft:obsidian\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$16\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=16] CK 16\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~4 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"����өʯ\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=4] minecraft:glowstone\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$4\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=4] CK 4\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~5 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"����ĩ��ʯ\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=2] minecraft:end_stone\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$2\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=2] CK 2\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~6 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"����ĩ��ʯש\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=2] minecraft:end_bricks\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$2\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=2] CK 2\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~7 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"���򺣾���Ƭ\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=1] minecraft:prismarine_shard\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$1\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=1] CK 1\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~8 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"���򺣾�ɰ��\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=2] minecraft:prismarine_crystals\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$2\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=2] CK 2\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~ ~-1 ~ minecraft:lava 7 replace"},
{id:"commandblock_minecart",Command:"fill ~ ~ ~ ~ ~-1 ~ minecraft:air 0 replace"}]}]}

testfor @a[x=285,y=64,z=302,dx=8,dy=5,dz=8]
tellraw @a[x=285,y=64,z=302,dx=8,dy=5,dz=8]  [{"text":"��ӭ�����½硢ĩ�ء��ż�����\n","color":"yellow"},
{"text":"�ҽ���$10�����ɳ$2��������$1����ҫʯ$16��өʯ$4\n","color":"light_purple"},
{"text":"ĩ��ʯ/ĩ��ʯש$2��������Ƭ$1������ɰ��$2","color":"gold"}]

====	103 ʯ�ĺͿ�ʯ 12
Բʯ			cobblestone			1
ʯͷ			stone				1
ʯӢ��			quartz_block		4
����			vine				1
�½�ʯӢ��ʯ	quartz_ore			10
ú��ʯ			coal_ore			10
��ʯ��ʯ		redstone_ore		15
����ʯ			iron_ore			25
���ʯ			gold_ore			36
�̱�ʯ��ʯ		emerald_ore			35
���ʯ��ʯ		lapis_ore			75
��ʯ��ʯ		diamond_ore			100

summon falling_block ~ ~2 ~ {Time:1,Block:"minecraft:redstone_block",Passengers:[
{id:"falling_block",Time:1,Block:"minecraft:activator_rail",Passengers:[

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~ wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"����Բʯ\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=1] minecraft:cobblestone\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$1\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=1] CK 1\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~1 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"����ʯͷ\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=1] minecraft:stone\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$1\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=1] CK 1\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~2 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"����ʯӢ��\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=4] minecraft:quartz_block\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$4\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=4] CK 4\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~3 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"����
����\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=1] minecraft:vine\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$1\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=1] CK 1\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~4 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"�����½�ʯӢ��ʯ\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=10] minecraft:quartz_ore\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$10\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=10] CK 10\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~5 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"����ú��ʯ\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=10] minecraft:coal_ore\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$10\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=10] CK 10\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~6 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"�����ʯ��ʯ\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=15] minecraft:redstone_ore\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$15\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=15] CK 15\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~7 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"��������ʯ\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=25] minecraft:iron_ore\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$25\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=25] CK 25\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~8 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"������ʯ\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=36] minecraft:gold_ore\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$36\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=36] CK 36\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~9 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"�����̱�ʯ��ʯ\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=35] minecraft:emerald_ore\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$35\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=35] CK 35\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~10 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"�������ʯ��ʯ\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=75] minecraft:lapis_ore\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$75\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=75] CK 75\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~11 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"������ʯ��ʯ\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=100] minecraft:diamond_ore\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$100\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=100] CK 100\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~ ~-1 ~ minecraft:lava 7 replace"},
{id:"commandblock_minecart",Command:"fill ~ ~ ~ ~ ~-1 ~ minecraft:air 0 replace"}]}]}

testfor @a[x=285,y=64,z=313,dx=8,dy=5,dz=11]
tellraw @a[x=285,y=64,z=313,dx=8,dy=5,dz=11]  [{"text":"��ӭ����ʯ�ĺͿ�ʯ\n","color":"yellow"},
{"text":"Բʯ$1��ʯͷ$1��ʯӢ��$4������$1\n","color":"light_purple"},
{"text":"�½�ʯӢ��ʯ$10��ú��ʯ$10����ʯ��ʯ$15������ʯ$25\n","color":"gold"},
{"text":"���ʯ$36���̱�ʯ��ʯ$35�����ʯ��ʯ$75����ʯ��ʯ$100","color":"green"}]

====	104 ���� 6
��������      sapling             16
��ɼ����      sapling:1           16
��������      sapling:2           16
��������      sapling:3           16
��ϻ�����    sapling:4           16
��ɫ��������  sapling:5           16


summon falling_block ~ ~2 ~ {Time:1,Block:"minecraft:redstone_block",Passengers:[
{id:"falling_block",Time:1,Block:"minecraft:activator_rail",Passengers:[

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~ wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"������������\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=16] minecraft:sapling\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$16\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=16] CK 16\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~1 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"������ɼ����\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=16] minecraft:sapling 1 1\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$16\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=16] CK 16\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~2 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"������������\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=16] minecraft:sapling 1 2\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$16\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=16] CK 16\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~3 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"�����������\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=16] minecraft:sapling 1 3\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$16\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=16] CK 16\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~4 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"�����ϻ�����\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=16] minecraft:sapling 1 4\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$16\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=16] CK 16\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~5 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"������ɫ��������\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=16] minecraft:sapling 1 5\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$16\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=16] CK 16\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~ ~-1 ~ minecraft:lava 7 replace"},
{id:"commandblock_minecart",Command:"fill ~ ~ ~ ~ ~-1 ~ minecraft:air 0 replace"}]}]}

testfor @a[x=285,y=64,z=327,dx=8,dy=5,dz=5]
tellraw @a[x=285,y=64,z=327,dx=8,dy=5,dz=5]  [{"text":"��ӭ�������磬�۸�$16","color":"yellow"}]

====	105 ũ���� 12
С������		wheat_seeds			1
�ɿɶ�			dye:3               5
������			cactus              16
��ɫĢ��		brown_mushroom      16
��ɫĢ��		red_mushroom        16
����			reeds               320
���ܲ�			carrot              320
����			potato              320
�������		beetroot_seeds      320
�Ϲ�����		pumpkin_seeds       320
��������		melon_seeds         320
������			nether_wart         640
���̻�			chorus_flower       640
�ǿ�			bone_block			45

summon falling_block ~ ~2 ~ {Time:1,Block:"minecraft:redstone_block",Passengers:[
{id:"falling_block",Time:1,Block:"minecraft:activator_rail",Passengers:[

{id:"commandblock_minecart",Command:"setblock ~-2 ~-1 ~ wall_sign 5 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"����С������\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=1] minecraft:wheat_seeds\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$1\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=1] CK 1\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~-2 ~-1 ~-1 wall_sign 5 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"����ɿɶ�\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=5] minecraft:dye 1 3\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$5\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=5] CK 5\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~-2 ~-1 ~-2 wall_sign 5 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"����������\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=16] minecraft:cactus\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$16\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=16] CK 16\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~-2 ~-1 ~-3 wall_sign 5 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"������ɫĢ��\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=16] minecraft:brown_mushroom\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$16\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=16] CK 16\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~-2 ~-1 ~-4 wall_sign 5 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"�����ɫĢ��\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=16] minecraft:red_mushroom\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$16\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=16] CK 16\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~-2 ~-1 ~-5 wall_sign 5 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"�������\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=320] minecraft:reeds\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$320\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=320] CK 320\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~-2 ~-1 ~-6 wall_sign 5 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"������ܲ�\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=320] minecraft:carrot\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$320\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=320] CK 320\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~-2 ~-1 ~-7 wall_sign 5 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"��������\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=320] minecraft:potato\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$320\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=320] CK 320\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~-2 ~-1 ~-8 wall_sign 5 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"�����������\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=320] minecraft:beetroot_seeds\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$320\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=320] CK 320\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~-2 ~-1 ~-9 wall_sign 5 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"�����Ϲ�����\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=320] minecraft:pumpkin_seeds\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$320\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=320] CK 320\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~-2 ~-1 ~-10 wall_sign 5 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"������������\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=320] minecraft:melon_seeds\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$320\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=320] CK 320\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~-2 ~-1 ~-11 wall_sign 5 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"���������\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=640] minecraft:nether_wart\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$640\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=640] CK 640\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~-2 ~-1 ~-12 wall_sign 5 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"�������̻�\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=640] minecraft:chorus_flower\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$640\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=640] CK 640\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~-2 ~-1 ~-18 wall_sign 5 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"����ǿ�\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=45] minecraft:bone_block\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$45\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=45] CK 45\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~ ~-1 ~ minecraft:lava 7 replace"},
{id:"commandblock_minecart",Command:"fill ~ ~ ~ ~ ~-1 ~ minecraft:air 0 replace"}]}]}

testfor @a[x=267,y=64,z=315,dx=8,dy=5,dz=18]
tellraw @a[x=267,y=64,z=315,dx=8,dy=5,dz=18]  [{"text":"��ӭ����ͳ���ũ����\n","color":"yellow"},{"text":"С������$1���ɿɶ�$5��������/Ģ��$16������$320\n","color":"light_purple"},{"text":"���ܲ�/����/�������/�Ϲ�����/��������$320\n","color":"gold"},{"text":"������/���̻�$640���ǿ�$45\n","color":"green"},{"text":"�չ�С�����������ܲ�����Ʒ","color":"red"}]

summon villager ~ ~.5 ~ {NoAI:true,Invulnerable:true,CustomName:"�չ���",CustomNameVisible:true,Profession:0s,Rotation:[270f,0f],Silent:true,Offers:{Recipes:[
{maxUses:99999999,buy:{id:minecraft:wheat,Count:18},sell:{id:minecraft:emerald,Count:1}},
{maxUses:99999999,buy:{id:minecraft:potato,Count:15},sell:{id:minecraft:emerald,Count:1}},
{maxUses:99999999,buy:{id:minecraft:carrot,Count:15},sell:{id:minecraft:emerald,Count:1}},
{maxUses:99999999,buy:{id:minecraft:pumpkin,Count: 8},sell:{id:minecraft:emerald,Count:1}},
{maxUses:99999999,buy:{id:minecraft:melon_block,Count: 7},sell:{id:minecraft:emerald,Count:1}},
{maxUses:99999999,buy:{id:minecraft:porkchop,Count:14},sell:{id:minecraft:emerald,Count:1}},
{maxUses:99999999,buy:{id:minecraft:chicken,Count:14},sell:{id:minecraft:emerald,Count:1}},
{maxUses:99999999,buy:{id:minecraft:fish,Count: 5},sell:{id:minecraft:emerald,Count:1}},
{maxUses:99999999,buy:{id:minecraft:leather,Count: 9},sell:{id:minecraft:emerald,Count:1}},
{maxUses:99999999,buy:{id:minecraft:feather,Count:21},sell:{id:minecraft:emerald,Count:1}},
{maxUses:99999999,buy:{id:minecraft:wool,Count:16},sell:{id:minecraft:emerald,Count:1}},
{maxUses:99999999,buy:{id:minecraft:paper,Count:24},sell:{id:minecraft:emerald,Count:1}},
{maxUses:99999999,buy:{id:minecraft:book,Count: 8},sell:{id:minecraft:emerald,Count:1}},
{maxUses:99999999,buy:{id:minecraft:written_book,Count: 2},sell:{id:minecraft:emerald,Count:1}},
{maxUses:99999999,buy:{id:minecraft:string,Count:15},sell:{id:minecraft:emerald,Count:1}},
{maxUses:99999999,buy:{id:minecraft:coal,Count:16},sell:{id:minecraft:emerald,Count:1}},
{maxUses:99999999,buy:{id:minecraft:rotten_flesh,Count:36},sell:{id:minecraft:emerald,Count:1}},
{maxUses:99999999,buy:{id:minecraft:gold_ingot,Count: 8},sell:{id:minecraft:emerald,Count:1}},
{maxUses:99999999,buy:{id:minecraft:iron_ingot,Count: 7},sell:{id:minecraft:emerald,Count:1}},
{maxUses:99999999,buy:{id:minecraft:diamond,Count: 3},sell:{id:minecraft:emerald,Count:1}},
{maxUses:99999999,buy:{id:minecraft:arrow,Count:64},sell:{id:minecraft:emerald,Count:1}},
{maxUses:99999999,buy:{id:minecraft:flint,Count: 8},sell:{id:minecraft:emerald,Count:1}},
{maxUses:99999999,buy:{id:minecraft:compass,Count: 1},sell:{id:minecraft:emerald,Count:1}},
{maxUses:99999999,buy:{id:minecraft:nether_star,Count: 1},sell:{id:minecraft:emerald_block,Count:25}}]}}

====	106 Ⱦ�� 16
ī��		dye:0	5
õ���		dye:1	5
��������	dye:2	5
�ɿɶ�		dye:3	5
���ʯ		dye:4	5
��ɫȾ��	dye:5	5	��=��+��
��ɫȾ��	dye:6	5	��=��+��
����ɫȾ��	dye:7	5	����=��+��
��ɫȾ��	dye:8	5	��=��+��
�ۺ�ɫȾ��	dye:9	5	��=��+��
����ɫȾ��	dye:10	5	����=��+��
�ѹ�Ӣ��	dye:11	5
����ɫȾ��	dye:12	5	����=��+��
Ʒ��ɫȾ��	dye:13	5	Ʒ��=��+��
��ɫȾ��	dye:14	5	��=��+��
�Ƿ�		dye:15	5

summon falling_block ~ ~2 ~ {Time:1,Block:"minecraft:redstone_block",Passengers:[
{id:"falling_block",Time:1,Block:"minecraft:activator_rail",Passengers:[

{id:"commandblock_minecart",Command:"setblock ~ ~-1 ~2 wall_sign 2 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"����ī��\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=5] minecraft:dye\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$5\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=5] CK 5\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~1 ~-1 ~2 wall_sign 2 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"����õ���\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=5] minecraft:dye 1 1\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$5\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=5] CK 5\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~2 wall_sign 2 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"������������\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=5] minecraft:dye 1 2\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$5\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=5] CK 5\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~3 ~-1 ~2 wall_sign 2 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"����ɿɶ�\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=5] minecraft:dye 1 3\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$5\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=5] CK 5\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~4 ~-1 ~2 wall_sign 2 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"�������ʯ\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=5] minecraft:dye 1 4\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$5\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=5] CK 5\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~5 ~-1 ~2 wall_sign 2 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"������ɫȾ��\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=5] minecraft:dye 1 5\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$5\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=5] CK 5\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"��=��+��\\\",\\\"color\\\":\\\"dark_blue\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~6 ~-1 ~2 wall_sign 2 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"������ɫȾ��\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=5] minecraft:dye 1 6\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$5\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=5] CK 5\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"��=��+��\\\",\\\"color\\\":\\\"dark_blue\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~7 ~-1 ~2 wall_sign 2 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"���򵭻�ɫȾ��\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=5] minecraft:dye 1 7\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$5\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=5] CK 5\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"����=��+��\\\",\\\"color\\\":\\\"dark_blue\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~9 ~-1 ~2 wall_sign 2 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"�����ɫȾ��\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=5] minecraft:dye 1 8\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$5\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=5] CK 5\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"��=��+��\\\",\\\"color\\\":\\\"dark_blue\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~10 ~-1 ~2 wall_sign 2 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"����ۺ�ɫȾ��\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=5] minecraft:dye 1 9\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$5\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=5] CK 5\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"��=��+��\\\",\\\"color\\\":\\\"dark_blue\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~11 ~-1 ~2 wall_sign 2 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"�������ɫȾ��\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=5] minecraft:dye 1 10\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$5\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=5] CK 5\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"����=��+��\\\",\\\"color\\\":\\\"dark_blue\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~12 ~-1 ~2 wall_sign 2 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"�����ѹ�Ӣ��\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=5] minecraft:dye 1 11\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$5\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=5] CK 5\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~13 ~-1 ~2 wall_sign 2 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"������ɫȾ��\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=5] minecraft:dye 1 12\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$5\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=5] CK 5\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"����=��+��\\\",\\\"color\\\":\\\"dark_blue\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~14 ~-1 ~2 wall_sign 2 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"����Ʒ��ɫȾ��\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=5] minecraft:dye 1 13\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$5\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=5] CK 5\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"Ʒ��=��+��\\\",\\\"color\\\":\\\"dark_blue\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~15 ~-1 ~2 wall_sign 2 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"�����ɫȾ��\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=5] minecraft:dye 1 14\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$5\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=5] CK 5\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"��=��+��\\\",\\\"color\\\":\\\"dark_blue\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~16 ~-1 ~2 wall_sign 2 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"����Ƿ�\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=5] minecraft:dye 1 15\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$5\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=5] CK 5\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~ ~-1 ~ minecraft:lava 7 replace"},
{id:"commandblock_minecart",Command:"fill ~ ~ ~ ~ ~-1 ~ minecraft:air 0 replace"}]}]}

testfor @a[x=236,y=64,z=315,dx=28,dy=5,dz=9]
tellraw @a[x=236,y=64,z=315,dx=28,dy=5,dz=9]  [{"text":"��ӭ����Ⱦ�ϣ��۸�$5\n�㻹�����ڴ�DIY�̻����������","color":"yellow"}]

====	106A DIY�̻���� 9
��ҩ			gunpowder		4
���浯			fire_charge		10
����			gold_nugget		4
ͷ­			skull:3			100
��ë			feather			4
��ʯ			diamond			40
өʯ��			glowstone_dust	1
ֽ				paper			1
15ɫ�̻����	fireworks       50

summon falling_block ~ ~2 ~ {Time:1,Block:"minecraft:redstone_block",Passengers:[
{id:"falling_block",Time:1,Block:"minecraft:activator_rail",Passengers:[

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~ wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"�����ҩ\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=4] minecraft:gunpowder\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$4\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=4] CK 4\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~1 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"������浯\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=10] minecraft:fire_charge\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$10\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=10] CK 10\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~2 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"�������\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=4] minecraft:gold_nugget\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$4\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=4] CK 4\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~3 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"����ͷ­\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=100] minecraft:skull 1 3\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$100\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=100] CK 100\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~4 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"������ë\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=4] minecraft:feather\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$4\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=4] CK 4\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~5 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"������ʯ\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=40] minecraft:diamond\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$40\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=40] CK 40\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~6 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"����өʯ��\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=1] minecraft:glowstone_dust\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$1\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=1] CK 1\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~7 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"����ֽ\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=1] minecraft:paper\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$1\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=1] CK 1\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~8 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"����15ɫ�̻����\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=50] minecraft:fireworks 1 0 {Fireworks:{Flight:3b,Explosions:[{Flicker:1b,Trail:1b,Type:1b,Colors:[11743532,2437522,3887386,14602026,14188952,8073150],FadeColors:[15435844,6719955,12801229,2651799,4312372,5320730,3887386,15790320,]}]}}\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$50\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=50] CK 50\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~ ~-1 ~ minecraft:lava 7 replace"},
{id:"commandblock_minecart",Command:"fill ~ ~ ~ ~ ~-1 ~ minecraft:air 0 replace"}]}]}


testfor @a[x=259,y=64,z=315,dx=5,dy=5,dz=9]
tellraw @a[x=259,y=64,z=315,dx=5,dy=5,dz=9]  [{"text":"��ӭDIY�̻����\n","color":"yellow"},
{"text":"��ҩ+����Ⱦ��+���浯/����/ͷ­/��ë+��ʯ/өʯ��=�̻�֮��\n","color":"light_purple"},
{"text":"�̻�֮��+Ⱦ��=��ɫ���̻�֮��\n","color":"gold"},
{"text":"�̻�֮��+1-3��ҩ+ֽ=�̻����\n","color":"green"},
{"text":"���浯/����/ͷ­/��ë������״��������״/����/����������/������\n","color":"red"},
{"text":"��ʯ/өʯ�۾���Ч������˸/�ټ�\n","color":"blue"}]
give @p[score_CK_min=50] minecraft:fireworks 1 0 {Fireworks:{Flight:3b,Explosions:[{Flicker:1b,Trail:1b,Type:1b,Colors:[11743532,2437522,3887386,14602026,14188952,8073150],FadeColors:[15435844,6719955,12801229,2651799,4312372,5320730,3887386,15790320,]}]}}

====	106B DIY���� 8
��ë			wool			60/6
ľ��			stick			1
����			vine			1
ש��			brick_block		5
�����ߵ�ͷ		skull:4			500
��������ͷ­	skull:1			1000
����			red_flower:8	5
��ħ��ƻ��		golden_apple:1	3000

summon falling_block ~ ~2 ~ {Time:1,Block:"minecraft:redstone_block",Passengers:[
{id:"falling_block",Time:1,Block:"minecraft:activator_rail",Passengers:[

{id:"commandblock_minecart",Command:"setblock ~-2 ~-1 ~ wall_sign 5 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"������ë\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=60] minecraft:wool 6\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$60/6\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=60] CK 60\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~-2 ~-1 ~1 wall_sign 5 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"����ľ��\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=1] minecraft:stick\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$1\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=1] CK 1\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~-2 ~-1 ~2 wall_sign 5 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"��������\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=1] minecraft:vine\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$1\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=1] CK 1\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~-2 ~-1 ~3 wall_sign 5 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"����ש��\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=5] minecraft:brick_block\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$5\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=5] CK 5\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~-2 ~-1 ~4 wall_sign 5 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"���������ߵ�ͷ\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=500] minecraft:skull 1 4\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$500\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=500] CK 500\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~-2 ~-1 ~5 wall_sign 5 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"�����������ͷ­\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=1000] minecraft:skull 1 1\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$1000\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=1000] CK 1000\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~-2 ~-1 ~6 wall_sign 5 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"�������\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=5] minecraft:red_flower 1 8\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$5\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=5] CK 5\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~-2 ~-1 ~7 wall_sign 5 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"����ħ��ƻ��\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=3000] minecraft:golden_apple 1 1\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$3000\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=3000] CK 3000\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~ ~-1 ~ minecraft:lava 7 replace"},
{id:"commandblock_minecart",Command:"fill ~ ~ ~ ~ ~-1 ~ minecraft:air 0 replace"}]}]}


testfor @a[x=236,y=64,z=315,dx=5,dy=5,dz=9]
tellraw @a[x=236,y=64,z=315,dx=5,dy=5,dz=9]  [{"text":"��ӭDIY����\n","color":"yellow"},
{"text":"������6��ë+ľ���ϳɣ�ͼ������Ⱦ���䷽���£�\n","color":"light_purple"},
{"text":"�������Һ���б��=3��Ӧλ��Ⱦ�� ������=����2+����2Ⱦ��\n","color":"gold"},
{"text":"X��/ʮ����=��Ӧλ��5Ⱦ��      �м�Բ��=�м�1Ⱦ��\n","color":"gold"},
{"text":"����=����4Ⱦ��                  ������=��Ӧ����λ��3Ⱦ��\n","color":"gold"},
{"text":"���=��Ӧλ��6Ⱦ��              ���䷽��=��Ӧλ��1Ⱦ��\n","color":"gold"},
{"text":"����������=��Ӧλ��3Ⱦ��       �����ײ���=��Ӧλ��^��V��3Ⱦ��\n","color":"red"},
{"text":"����=����8Ⱦ��                  ���Ʊ߿�=����+Ⱦ��\n","color":"red"},
{"text":"ש��=ש��+Ⱦ��                  ��������ɫ����=����������4Ⱦ��\n","color":"blue"},
{"text":"������ͼ��=�����ߵ�ͷ+Ⱦ��     ����ͼ��=��������ͷ­+Ⱦ��\n","color":"light_purple"},
{"text":"����ͼ��=����+Ⱦ��              Mojang�ձ�=��ħ��ƻ��+Ⱦ��","color":"light_purple"}]

give @p banner 1 1 {BlockEntityTag:{Patterns:[{Pattern:sc,Color:11},{Pattern:tr,Color:11},{Pattern:hhb,Color:1},{Pattern:cs,Color:1},{Pattern:vh,Color:1},{Pattern:bo,Color:1}]}}
setblock ~4 ~2 ~3 wall_sign 4 replace {
Text1:"{\"text\":\"����˹����\",\"color\":\"dark_purple\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"blockdata ~-3 ~-2 ~-3 {auto:1}\"}}",
Text2:"{\"text\":\"�׵�\",\"color\":\"white\"}",
Text3:"{\"text\":\"��������\",\"color\":\"white\"}",
Text4:"{\"text\":\"��������\",\"color\":\"white\"}"}
setblock ~3 ~2 ~3 wall_sign 4 replace {
Text1:"{\"text\":\"��������\",\"color\":\"dark_purple\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"blockdata ~-2 ~-2 ~-3 {auto:1}\"}}",
Text2:"{\"text\":\"�׵�\",\"color\":\"white\"}",
Text3:"{\"text\":\"��������\",\"color\":\"white\"}",
Text4:"{\"text\":\"��׺���\",\"color\":\"white\"}"}
setblock ~2 ~2 ~3 wall_sign 4 replace {
Text1:"{\"text\":\"��������\",\"color\":\"dark_purple\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"blockdata ~-1 ~-2 ~-3 {auto:1}\"}}",
Text2:"{\"text\":\"���\",\"color\":\"dark_red\"}",
Text3:"{\"text\":\"��������\",\"color\":\"dark_red\"}",
Text4:"{\"text\":\"�����Ϸ���\",\"color\":\"dark_red\"}"}
setblock ~1 ~2 ~3 wall_sign 4 replace {
Text1:"{\"text\":\"Ӣ������\",\"color\":\"dark_purple\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"blockdata ~-0 ~-2 ~-3 {auto:1}\"}}",
Text2:"{\"text\":\"���װ���б������б��\",\"color\":\"dark_blue\"}",
Text3:"{\"text\":\"��бʮ�֣����к���\",\"color\":\"dark_blue\"}",
Text4:"{\"text\":\"��������������ʮ��\",\"color\":\"dark_blue\"}"}
setblock ~0 ~2 ~3 wall_sign 4 replace {
Text1:"{\"text\":\"�й�����\",\"color\":\"dark_purple\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"blockdata ~-4 ~-2 ~-3 {auto:1}\"}}",
Text2:"{\"text\":\"��׻���ʮ�ֻ��Ҷ���\",\"color\":\"dark_red\"}",
Text3:"{\"text\":\"����뷽�Σ���������\",\"color\":\"dark_red\"}",
Text4:"{\"text\":\"���°뷽�Σ��췽���\",\"color\":\"dark_red\"}"}

====	107 ���� 14

���          red_flower          5
����          red_flower:1        5
�����        red_flower:2        5
��ݻ�        red_flower:3        5
��ɫ������    red_flower:4        5
��ɫ������    red_flower:5        5
��ɫ������    red_flower:6        5
��ɫ������    red_flower:7        5
����          red_flower:8        5
�ѹ�Ӣ        yellow_flower       5
���տ�        double_plant        10
����          double_plant:1      10
õ���        double_plant:4      10
ĵ��          double_plant:5      10

summon falling_block ~ ~2 ~ {Time:1,Block:"minecraft:redstone_block",Passengers:[
{id:"falling_block",Time:1,Block:"minecraft:activator_rail",Passengers:[

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~ wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"�������\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=5] minecraft:red_flower\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$5\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=5] CK 5\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~1 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"��������\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=5] minecraft:red_flower 1 1\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$5\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=5] CK 5\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~2 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"���������\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=5] minecraft:red_flower 1 2\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$5\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=5] CK 5\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~3 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"������ݻ�\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=5] minecraft:red_flower 1 3\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$5\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=5] CK 5\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~4 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"�����ɫ������\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=5] minecraft:red_flower 1 4\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$5\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=5] CK 5\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~5 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"�����ɫ������\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=5] minecraft:red_flower 1 5\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$5\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=5] CK 5\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~6 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"�����ɫ������\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=5] minecraft:red_flower 1 6\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$5\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=5] CK 5\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~7 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"�����ɫ������\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=5] minecraft:red_flower 1 7\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$5\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=5] CK 5\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~8 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"�������\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=5] minecraft:red_flower 1 8\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$5\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=5] CK 5\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~9 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"�����ѹ�Ӣ\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=5] minecraft:yellow_flower\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$5\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=5] CK 5\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~10 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"�������տ�\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=10] minecraft:double_plant\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$10\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=10] CK 10\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~11 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"������\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=10] minecraft:double_plant 1 1\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$10\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=10] CK 10\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~12 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"����õ���\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=10] minecraft:double_plant 1 4\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$10\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=10] CK 10\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~13 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"����ĵ��\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=10] minecraft:double_plant 1 5\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$10\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=10] CK 10\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~ ~-1 ~ minecraft:lava 7 replace"},
{id:"commandblock_minecart",Command:"fill ~ ~ ~ ~ ~-1 ~ minecraft:air 0 replace"}]}]}


testfor @a[x=225,y=64,z=315,dx=9,dy=5,dz=18]
tellraw @a[x=225,y=64,z=315,dx=9,dy=5,dz=18]  [{"text":"��ӭ���򻨻ܣ�С�ͻ�$5�����ͻ�$10","color":"yellow"}]

====	108 ���� 18
��			pig				320
��			sheep			320
ţ			cow				320
��			chicken			320
����		rabbit			320
�蹽		mooshroom		320
��			wolf			640
è			ocelot			640
��			horse			640
¿			donkey			640
����		llama			640

����		bat				 10
����		squid			 10
������		polar_bear		 10
����		villager		 80

ѩ����		snowman			 10
������		villager_golem	160
��			chicken+bat		640

summon falling_block ~ ~2 ~ {Time:1,Block:"minecraft:redstone_block",Passengers:[
{id:"falling_block",Time:1,Block:"minecraft:activator_rail",Passengers:[

{id:"commandblock_minecart",Command:"setblock ~-2 ~-1 ~ wall_sign 5 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"������\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=320] minecraft:spawn_egg 1 0 {EntityTag:{id:minecraft:pig}}\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$320\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=320] CK 320\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~-2 ~-1 ~-1 wall_sign 5 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"������\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=320] minecraft:spawn_egg 1 0 {EntityTag:{id:minecraft:sheep}}\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$320\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=320] CK 320\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~-2 ~-1 ~-2 wall_sign 5 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"����ţ\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=320] minecraft:spawn_egg 1 0 {EntityTag:{id:minecraft:cow}}\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$320\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=320] CK 320\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~-2 ~-1 ~-3 wall_sign 5 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"����\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=320] minecraft:spawn_egg 1 0 {EntityTag:{id:minecraft:chicken}}\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$320\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=320] CK 320\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~-2 ~-1 ~-4 wall_sign 5 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"��������\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=320] minecraft:spawn_egg 1 0 {EntityTag:{id:minecraft:rabbit}}\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$320\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=320] CK 320\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~-2 ~-1 ~-5 wall_sign 5 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"�����蹽\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=320] minecraft:spawn_egg 1 0 {EntityTag:{id:minecraft:mooshroom}}\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$320\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=320] CK 320\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~-2 ~-1 ~-6 wall_sign 5 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"������\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=640] minecraft:spawn_egg 1 0 {EntityTag:{id:minecraft:wolf}}\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$640\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=640] CK 640\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~-2 ~-1 ~-7 wall_sign 5 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"����è\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=640] minecraft:spawn_egg 1 0 {EntityTag:{id:minecraft:ocelot}}\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$640\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=640] CK 640\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~-2 ~-1 ~-8 wall_sign 5 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"������\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=640] minecraft:spawn_egg 1 0 {EntityTag:{id:minecraft:horse}}\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$640\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=640] CK 640\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~-2 ~-1 ~-9 wall_sign 5 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"����¿\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=640] minecraft:spawn_egg 1 0 {EntityTag:{id:minecraft:donkey}}\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$640\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=640] CK 640\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~-2 ~-1 ~-10 wall_sign 5 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"��������\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=640] minecraft:spawn_egg 1 0 {EntityTag:{id:minecraft:llama}}\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$640\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=640] CK 640\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~-2 ~-1 ~-11 wall_sign 5 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"��������\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=10] minecraft:spawn_egg 1 0 {EntityTag:{id:minecraft:bat}}\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$10\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=10] CK 10\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~-2 ~-1 ~-12 wall_sign 5 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"��������\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=10] minecraft:spawn_egg 1 0 {EntityTag:{id:minecraft:squid}}\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$10\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=10] CK 10\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~-2 ~-1 ~-13 wall_sign 5 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"���򱱼���\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=10] minecraft:spawn_egg 1 0 {EntityTag:{id:minecraft:polar_bear}}\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$10\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=10] CK 10\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~-2 ~-1 ~-14 wall_sign 5 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"�������\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=80] minecraft:spawn_egg 1 0 {EntityTag:{id:minecraft:villager}}\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$80\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=80] CK 80\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~-2 ~-1 ~-15 wall_sign 5 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"����ѩ����\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=10] minecraft:spawn_egg 1 0 {EntityTag:{id:minecraft:vex,Health:1,Tags:[\\\\\\\"sgolem\\\\\\\"],Silent:1,LifeTicks:1},display:{Name:\\\\\\\"���� ѩ����\\\\\\\"}}\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$10\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=10] CK 10\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~-2 ~-1 ~-16 wall_sign 5 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"����������\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=160] minecraft:spawn_egg 1 0 {EntityTag:{id:minecraft:vex,Health:1,Tags:[\\\\\\\"vgolem\\\\\\\"],Silent:1,LifeTicks:1},display:{Name:\\\\\\\"���� ������\\\\\\\"}}\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$160\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=160] CK 160\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~-2 ~-1 ~-17 wall_sign 5 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"������\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=640] minecraft:spawn_egg 1 0 {EntityTag:{id:minecraft:vex,Health:1,Tags:[\\\\\\\"bird\\\\\\\"],Silent:1,LifeTicks:1},display:{Name:\\\\\\\"���� ��\\\\\\\"}}\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$640\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=640] CK 640\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~ ~-1 ~ minecraft:lava 7 replace"},
{id:"commandblock_minecart",Command:"fill ~ ~ ~ ~ ~-1 ~ minecraft:air 0 replace"}]}]}

testfor @a[x=206,y=64,z=287,dx=9,dy=5,dz=46]
tellraw @a[x=206,y=64,z=287,dx=9,dy=5,dz=46]  [{"text":"��ӭ�������ˢ�ֵ�\n","color":"yellow"},
{"text":"����/����/������/ѩ����/��ʬ/������/֩��/��Ѩ֩��$10\n","color":"light_purple"},
{"text":"ʷ��ķ/Ů��/��/��ʬ����/�ҽ���/������ĩӰ��/������$10\n","color":"gold"},
{"text":"����/��������$20������/ĩӰ��/��ħ��/����ʿ$80\n","color":"green"},
{"text":"������/���/ǱӰ��$160����/��/ţ/��/����/�蹽$320\n","color":"red"},
{"text":"��/è/��/¿/����/��/��ѹ������/Զ��������$640\n","color":"blue"},
{"text":"�㻹�����ڴ�����ˢ�ֵ�","color":"yellow"}]

give @p[score_CK_min=640] minecraft:spawn_egg 1 0 {EntityTag:{id:minecraft:creeper,powered:1,display:{Name:["���� ��ѹ������"]}}}
give @p[score_CK_min=10] minecraft:spawn_egg 1 0 {EntityTag:{id:minecraft:vex,Health:1,Tags:["sgolem"],Silent:1,LifeTicks:1},display:{Name:"���� ѩ����"}}
give @p[score_CK_min=160] minecraft:spawn_egg 1 0 {EntityTag:{id:minecraft:vex,Health:1,Tags:["vgolem"],Silent:1,LifeTicks:1},display:{Name:"���� ������"}}
give @p[score_CK_min=640] minecraft:spawn_egg 1 0 {EntityTag:{id:minecraft:vex,Health:1,Tags:["bird"],Silent:1,LifeTicks:1},display:{Name:"���� ��"}}

====	109 ���� 21
��ʬ		zombie				10
����		skeleton			20
������		creeper				10
��ѹ������	creeper				640
֩��		spider				10
��Ѩ֩��	cave_spider			10
ʷ��ķ		slime				10
Ů��		witch				10
��		silverfish			10

��ʬ����	zombie_pigman		10
�ҽ���		magma_cube			10
������		blaze				10
��������	wither_skeleton		20
���		ghast				160

ĩӰ��		enderman			80
ĩӰ��		endermite			10
ǱӰ��		shulker				160

������		guardian			10
Զ��������	elder_guardian		640
��ħ��		evocation_illager	80
����ʿ		vindication_illager	80

summon falling_block ~ ~2 ~ {Time:1,Block:"minecraft:redstone_block",Passengers:[
{id:"falling_block",Time:1,Block:"minecraft:activator_rail",Passengers:[

{id:"commandblock_minecart",Command:"setblock ~-2 ~-1 ~ wall_sign 5 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"����ʬ\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=10] minecraft:spawn_egg 1 0 {EntityTag:{id:minecraft:zombie}}\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$10\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=10] CK 10\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~-2 ~-1 ~1 wall_sign 5 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"��������\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=20] minecraft:spawn_egg 1 0 {EntityTag:{id:minecraft:skeleton}}\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$20\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=20] CK 20\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~-2 ~-1 ~2 wall_sign 5 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"����������\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=10] minecraft:spawn_egg 1 0 {EntityTag:{id:minecraft:creeper}}\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$10\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=10] CK 10\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~-2 ~-1 ~3 wall_sign 5 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"�����ѹ������\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=640] minecraft:spawn_egg 1 0 {EntityTag:{id:minecraft:creeper,powered:1},display:{Name:\\\\\\\"���� ��ѹ������\\\\\\\"}}\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$640\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=640] CK 640\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~-2 ~-1 ~4 wall_sign 5 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"����֩��\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=10] minecraft:spawn_egg 1 0 {EntityTag:{id:minecraft:spider}}\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$10\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=10] CK 10\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~-2 ~-1 ~5 wall_sign 5 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"����Ѩ֩��\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=10] minecraft:spawn_egg 1 0 {EntityTag:{id:minecraft:cave_spider}}\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$10\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=10] CK 10\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~-2 ~-1 ~6 wall_sign 5 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"����ʷ��ķ\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=10] minecraft:spawn_egg 1 0 {EntityTag:{id:minecraft:slime}}\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$10\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=10] CK 10\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~-2 ~-1 ~7 wall_sign 5 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"����Ů��\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=10] minecraft:spawn_egg 1 0 {EntityTag:{id:minecraft:witch}}\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$10\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=10] CK 10\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~-2 ~-1 ~8 wall_sign 5 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"������\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=10] minecraft:spawn_egg 1 0 {EntityTag:{id:minecraft:silverfish}}\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$10\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=10] CK 10\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~-2 ~-1 ~9 wall_sign 5 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"����ʬ����\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=10] minecraft:spawn_egg 1 0 {EntityTag:{id:minecraft:zombie_pigman}}\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$10\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=10] CK 10\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~-2 ~-1 ~10 wall_sign 5 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"�����ҽ���\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=10] minecraft:spawn_egg 1 0 {EntityTag:{id:minecraft:magma_cube}}\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$10\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=10] CK 10\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~-2 ~-1 ~11 wall_sign 5 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"����������\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=10] minecraft:spawn_egg 1 0 {EntityTag:{id:minecraft:blaze}}\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$10\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=10] CK 10\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~-2 ~-1 ~12 wall_sign 5 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"�����������\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=20] minecraft:spawn_egg 1 0 {EntityTag:{id:minecraft:wither_skeleton}}\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$20\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=20] CK 20\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~-2 ~-1 ~13 wall_sign 5 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"������\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=160] minecraft:spawn_egg 1 0 {EntityTag:{id:minecraft:ghast}}\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$160\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=160] CK 160\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~-2 ~-1 ~14 wall_sign 5 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"����ĩӰ��\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=80] minecraft:spawn_egg 1 0 {EntityTag:{id:minecraft:enderman}}\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$80\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=80] CK 80\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~-2 ~-1 ~15 wall_sign 5 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"����ĩӰ��\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=10] minecraft:spawn_egg 1 0 {EntityTag:{id:minecraft:endermite}}\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$10\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=10] CK 10\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~-2 ~-1 ~16 wall_sign 5 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"����ǱӰ��\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=160] minecraft:spawn_egg 1 0 {EntityTag:{id:minecraft:shulker}}\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$160\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=160] CK 160\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~-2 ~-1 ~17 wall_sign 5 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"����������\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=10] minecraft:spawn_egg 1 0 {EntityTag:{id:minecraft:guardian}}\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$10\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=10] CK 10\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~-2 ~-1 ~18 wall_sign 5 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"����Զ��������\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=640] minecraft:spawn_egg 1 0 {EntityTag:{id:minecraft:elder_guardian}}\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$640\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=640] CK 640\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~-2 ~-1 ~19 wall_sign 5 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"����ħ��\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=80] minecraft:spawn_egg 1 0 {EntityTag:{id:minecraft:evocation_illager}}\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$80\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=80] CK 80\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~-2 ~-1 ~20 wall_sign 5 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"��������ʿ\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=80] minecraft:spawn_egg 1 0 {EntityTag:{id:minecraft:vindication_illager}}\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$80\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=80] CK 80\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~ ~-1 ~ minecraft:lava 7 replace"},
{id:"commandblock_minecart",Command:"fill ~ ~ ~ ~ ~-1 ~ minecraft:air 0 replace"}]}]}

====	110 ʳ�� 19
����		cookie			2/3		2.4
ƻ��		apple			3/2		6.4
��˸�		beetroot		5		2.2
���		bread			3		11
������		baked_potato	4		12.2
�Ϲ���		pumpkin_pie		4		12.8

����		cooked_fish		3		11
������		cooked_fish:1	5		15.6
������		cooked_rabbit	3		11
������		cooked_porkchop	4		12.8
�켦��		cooked_chicken	4		13.2
������		cooked_mutton	5		15.6
ţ��		cooked_beef		6		20.8

�����		beetroot_soup	3		13.2
Ģ����		mushroom_stew	3		13.2	
������		rabbit_stew		6		22
����		cake			10		16.8
��ƻ��		golden_apple	330		13.6
��ħ��ƻ��	golden_apple:1	3000	13.6

summon falling_block ~ ~2 ~ {Time:1,Block:"minecraft:redstone_block",Passengers:[
{id:"falling_block",Time:1,Block:"minecraft:activator_rail",Passengers:[

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~ wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"��������\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=2] minecraft:cookie 3\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$2/3\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=2] CK 2\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~1 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"����ƻ��\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=3] minecraft:apple 2\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$3/2\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=3] CK 3\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~2 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"������˸�\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=5] minecraft:beetroot\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$5\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=5] CK 5\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~3 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"�������\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=3] minecraft:bread\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$3\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=3] CK 3\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~4 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"��������\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=4] minecraft:baked_potato\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$4\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=4] CK 4\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~5 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"�����Ϲ���\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=4] minecraft:pumpkin_pie\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$4\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=4] CK 4\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~6 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"��������\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=3] minecraft:cooked_fish\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$3\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=3] CK 3\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~7 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"����������\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=5] minecraft:cooked_fish 1 1\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$5\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=5] CK 5\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~8 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"����������\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=3] minecraft:cooked_rabbit\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$3\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=3] CK 3\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~9 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"����������\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=4] minecraft:cooked_porkchop\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$4\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=4] CK 4\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~10 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"�����켦��\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=4] minecraft:cooked_chicken\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$4\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=4] CK 4\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~11 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"����������\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=5] minecraft:cooked_mutton\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$5\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=5] CK 5\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~12 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"����ţ��\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=6] minecraft:cooked_beef\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$6\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=6] CK 6\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~13 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"���������\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=3] minecraft:beetroot_soup\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$3\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=3] CK 3\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~14 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"����Ģ����\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=3] minecraft:mushroom_stew\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$3\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=3] CK 3\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~15 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"����������\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=6] minecraft:rabbit_stew\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$6\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=6] CK 6\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~16 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"���򵰸�\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=10] minecraft:cake\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$10\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=10] CK 10\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~17 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"�����ƻ��\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=330] minecraft:golden_apple\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$330\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=330] CK 330\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~18 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"����ħ��ƻ��\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=3000] minecraft:golden_apple 1 1\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$3000\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=3000] CK 3000\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~ ~-1 ~ minecraft:lava 7 replace"},
{id:"commandblock_minecart",Command:"fill ~ ~ ~ ~ ~-1 ~ minecraft:air 0 replace"}]}]}

testfor @a[x=225,y=64,z=287,dx=9,dy=5,dz=18]
tellraw @a[x=225,y=64,z=287,dx=9,dy=5,dz=18] [{"text":"��ӭ����ʳ��\n","color":"yellow"}]
tellraw @a[x=225,y=64,z=287,dx=9,dy=5,dz=18] [
{"text":"����      $2/3  ��ЧƷ��2.4    ƻ��      $3/2  ��ЧƷ��6.4\n","color":"light_purple"},
{"text":"��˸�    $1/2  ��ЧƷ��2.2    ���      $3     ��ЧƷ��11\n","color":"light_purple"},
{"text":"������    $4     ��ЧƷ��12.2   �Ϲ���    $4     ��ЧƷ��12.8\n","color":"light_purple"},
{"text":"����      $3     ��ЧƷ��11     ������    $5     ��ЧƷ��15.6\n","color":"green"},
{"text":"������    $3     ��ЧƷ��11     ������    $4     ��ЧƷ��12.8\n","color":"green"},
{"text":"�켦��    $4     ��ЧƷ��13.2   ������    $5     ��ЧƷ��15.6\n","color":"green"},
{"text":"ţ��      $6     ��ЧƷ��20.8\n","color":"green"},
{"text":"�����    $3     ��ЧƷ��13.2   Ģ����    $3     ��ЧƷ��13.2\n","color":"red"},
{"text":"������    $6     ��ЧƷ��22     ����      $10    ��ЧƷ��16.8\n","color":"red"},
{"text":"��ƻ��    $330   ��ЧƷ��13.6  ��ħ��ƻ��$3000 ��ЧƷ��13.6","color":"blue"}]

====	111 ���������ߡ����� 23
��			bow						30
��			arrow					8/8
����		iron_axe				60
����		iron_sword				90
��ʯ��		diamond_axe				90
��ʯ��		diamond_sword			120
����		iron_shovel				50	
����		iron_pickaxe			90
��ʯ��		diamond_pickaxe			120
Ƥ�����	leather_leggings		20
Ƥ������	leather_chestplate		70
��ͷ��		iron_helmet				40
���ؼ�		iron_chestplate			100
��ʯ�ؼ�	diamond_chestplate		160
����ͷ��	chainmail_helmet		50
�����ؼ�	chainmail_chestplate	110
���׻���	chainmail_leggings		90
����ѥ��	chainmail_boots			50

ʱ��III��ʯ�� diamond_pickaxe     1998
ʱ��V������   diamond_pickaxe     8888
����III��ʯ�� diamond_sword       1998
����V�ϸ���   diamond_sword       6666
����X���빭   bow                 9999

summon falling_block ~ ~2 ~ {Time:1,Block:"minecraft:redstone_block",Passengers:[
{id:"falling_block",Time:1,Block:"minecraft:activator_rail",Passengers:[

{id:"commandblock_minecart",Command:"setblock ~ ~-1 ~-2 wall_sign 3 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"����\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=30] minecraft:bow\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$30\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=30] CK 30\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~1 ~-1 ~-2 wall_sign 3 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"�����\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=8] minecraft:arrow 8\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$8/8\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=8] CK 8\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~-2 wall_sign 3 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"��������\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=60] minecraft:iron_axe\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$60\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=60] CK 60\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~3 ~-1 ~-2 wall_sign 3 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"��������\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=90] minecraft:iron_sword\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$90\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=90] CK 90\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~4 ~-1 ~-2 wall_sign 3 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"������ʯ��\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=90] minecraft:diamond_axe\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$90\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=90] CK 90\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~5 ~-1 ~-2 wall_sign 3 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"������ʯ��\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=120] minecraft:diamond_sword\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$120\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=120] CK 120\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~6 ~-1 ~-2 wall_sign 3 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"��������\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=50] minecraft:iron_shovel\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$50\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=50] CK 50\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~7 ~-1 ~-2 wall_sign 3 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"��������\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=90] minecraft:iron_pickaxe\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$90\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=90] CK 90\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~8 ~-1 ~-2 wall_sign 3 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"������ʯ��\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=120] minecraft:diamond_pickaxe\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$120\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=120] CK 120\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~9 ~-1 ~-2 wall_sign 3 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"����Ƥ�����\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=20] minecraft:leather_leggings\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$20\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=20] CK 20\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~10 ~-1 ~-2 wall_sign 3 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"����Ƥ������\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=70] minecraft:leather_chestplate\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$70\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=70] CK 70\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~11 ~-1 ~-2 wall_sign 3 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"������ͷ��\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=40] minecraft:iron_helmet\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$40\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=40] CK 40\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~12 ~-1 ~-2 wall_sign 3 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"�������ؼ�\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=100] minecraft:iron_chestplate\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$100\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=100] CK 100\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~13 ~-1 ~-2 wall_sign 3 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"������ʯ�ؼ�\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=160] minecraft:diamond_chestplate\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$160\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=160] CK 160\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~14 ~-1 ~-2 wall_sign 3 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"��������ͷ��\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=50] minecraft:chainmail_helmet\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$50\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=50] CK 50\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~15 ~-1 ~-2 wall_sign 3 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"���������ؼ�\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=110] minecraft:chainmail_chestplate\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$110\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=110] CK 110\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~16 ~-1 ~-2 wall_sign 3 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"�������׻���\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=90] minecraft:chainmail_leggings\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$90\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=90] CK 90\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~17 ~-1 ~-2 wall_sign 3 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"��������ѥ��\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=50] minecraft:chainmail_boots\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$50\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=50] CK 50\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~24 ~-1 ~-2 wall_sign 3 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"����ʱ��III��ʯ��\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=1998] minecraft:diamond_pickaxe 1 0 {ench:[{id:32,lvl:5},{id:34,lvl:3},{id:35,lvl:3},{id:70,lvl:1}]}\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$1998\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=1998] CK 1998\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~25 ~-1 ~-2 wall_sign 3 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"����ʱ��V������\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=8888] minecraft:diamond_pickaxe 1 0 {ench:[{id:32,lvl:7},{id:35,lvl:5}],display:{Name:\\\\\\\"������\\\\\\\",Lore:[\\\\\\\"��о��Լ�������ȫ���ܿ���\\\\\\\"]},Unbreakable:true}\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$8888\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=8888] CK 8888\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~26 ~-1 ~-2 wall_sign 3 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"��������III��ʯ��\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=1998] minecraft:diamond_sword 1 0 {ench:[{id:16,lvl:5},{id:21,lvl:3},{id:34,lvl:3},{id:70,lvl:1}]}\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$1998\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=1998] CK 1998\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~27 ~-1 ~-2 wall_sign 3 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"��������V�ϸ���\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=6666] minecraft:diamond_sword 1 0 {AttributeModifiers:[{Operation:0,UUIDLeast:1009,UUIDMost:1009,Amount:30,AttributeName:\\\\\\\"generic.attackDamage\\\\\\\",Name:\\\\\\\"Damage\\\\\\\"},{Operation:1,UUIDLeast:1010,UUIDMost:1010,Amount:0.30,AttributeName:\\\\\\\"generic.attackSpeed\\\\\\\",Name:\\\\\\\"AttackSpeed\\\\\\\"}],ench:[{id:21,lvl:5}],display:{Name:\\\\\\\"�ϸ���\\\\\\\",Lore:[\\\\\\\"+30 �����˺�\\\\\\\",\\\\\\\"+30% �����ٶ�\\\\\\\",\\\\\\\"��˵�� Herobrine ����ĵ�����\\\\\\\"]},HideFlags:2,Unbreakable:true}\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$6666\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=6666] CK 6666\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~28 ~-1 ~-2 wall_sign 3 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"��������X���빭\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=9999] minecraft:bow 1 0 {ench:[{id:48,lvl:10},{id:49,lvl:2},{id:50,lvl:1},{id:51,lvl:1}],display:{Name:\\\\\\\"���빭\\\\\\\",Lore:[\\\\\\\"��ѹ���Ҫ�䱸�����ʹ��\\\\\\\"]},Unbreakable:true}\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$9999\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=9999] CK 9999\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~ ~-1 ~ minecraft:lava 7 replace"},
{id:"commandblock_minecart",Command:"fill ~ ~ ~ ~ ~-1 ~ minecraft:air 0 replace"}]}]}






testfor @a[x=236,y=64,z=296,dx=29,dy=5,dz=10]
tellraw @a[x=236,y=64,z=296,dx=29,dy=5,dz=10] [{"text":"��ӭ�������������ߡ�����\n","color":"yellow"},
{"text":"��$30����$8/8��Ƥ�����$20��Ƥ������$70\n","color":"light_purple"},
{"text":"����$60������$90������$50$������$90����ͷ��$40�����ؼ�$100\n","color":"gold"},
{"text":"��ʯ��$90����ʯ��$120����ʯ��$120����ʯ�ؼ�$160\n","color":"green"},
{"text":"����ͷ��$50�������ؼ�$110�����׻���$90������ѥ��$50\n","color":"red"},
{"text":"ʱ��III��ʯ��$1998��ʱ��V������$8888\n","color":"blue"},
{"text":"����III��ʯ��$1998������V�ϸ���$6666������X���빭$9999","color":"light_purple"}]

give @p[score_CK_min=1998] minecraft:diamond_pickaxe
give @p[score_CK_min=8888] minecraft:diamond_pickaxe
give @p[score_CK_min=1998] minecraft:diamond_sword
give @p[score_CK_min=6666] minecraft:diamond_sword
give @p[score_CK_min=9999] minecraft:bow

summon villager ~ ~.5 ~ {NoAI:true,Invulnerable:true,CustomName:"������ʦ",CustomNameVisible:true,Profession:3,Silent:true,Offers:{Recipes:[
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:coal,       Count:1b},buyB:{id:minecraft:stone,     Count:8b},
sell:{id:minecraft:coal,Count:1b,tag:{ench:[{id:999}],display:{Name:"����ú"},}}},
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:iron_ingot, Count:1b},buyB:{id:minecraft:coal,      Count:8b},
sell:{id:minecraft:iron_ingot,Count:1b,tag:{ench:[{id:999}],display:{Name:"��������"}}}},
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:gold_ingot, Count:1b},buyB:{id:minecraft:iron_ingot,Count:8b},
sell:{id:minecraft:gold_ingot,Count:1b,tag:{ench:[{id:999}],display:{Name:"���ƽ�"}}}},
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:diamond,    Count:1b},buyB:{id:minecraft:gold_ingot,Count:8b},
sell:{id:minecraft:diamond,Count:1b,tag:{ench:[{id:999}],display:{Name:"������ʯ"}}}},
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:nether_star,Count:1b},buyB:{id:minecraft:diamond,   Count:8b},
sell:{id:minecraft:nether_star,Count:1b,tag:{ench:[{id:999}],display:{Name:"�����½�֮��"}}}},
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:coal,		Count:2b,tag:{ench:[{id:999}],display:{Name:"����ú"}}},  	 	buyB:{id:minecraft:stick,Count:1b},sell:{id:minecraft:stone_sword,	Count:1b,tag:{AttributeModifiers:[{Operation:0,UUIDLeast:1001,UUIDMost:1001,Amount: 5,AttributeName:"generic.attackDamage",Name:"Damage"},{Operation:1,UUIDLeast:1002,UUIDMost:1002,Amount:0.05,AttributeName:"generic.attackSpeed",Name:"AttackSpeed"}],ench:[{id:21,lvl:1},{id:34,lvl:1},{id:70,lvl:1}],display:{Lore:["+5 �����˺�","+5% �����ٶ�"]},HideFlags:2}}},
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:iron_ingot,	Count:2b,tag:{ench:[{id:999}],display:{Name:"��������"}}},	 	buyB:{id:minecraft:stick,Count:1b},sell:{id:minecraft:stone_sword,	Count:1b,tag:{AttributeModifiers:[{Operation:0,UUIDLeast:1003,UUIDMost:1003,Amount:10,AttributeName:"generic.attackDamage",Name:"Damage"},{Operation:1,UUIDLeast:1004,UUIDMost:1004,Amount:0.10,AttributeName:"generic.attackSpeed",Name:"AttackSpeed"}],ench:[{id:21,lvl:2},{id:34,lvl:2},{id:70,lvl:1}],display:{Lore:["+10 �����˺�","+10% �����ٶ�"]},HideFlags:2}}},
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:gold_ingot,	Count:2b,tag:{ench:[{id:999}],display:{Name:"���ƽ�"}}},	 	buyB:{id:minecraft:stick,Count:1b},sell:{id:minecraft:iron_sword,	Count:1b,tag:{AttributeModifiers:[{Operation:0,UUIDLeast:1005,UUIDMost:1005,Amount:15,AttributeName:"generic.attackDamage",Name:"Damage"},{Operation:1,UUIDLeast:1006,UUIDMost:1006,Amount:0.15,AttributeName:"generic.attackSpeed",Name:"AttackSpeed"}],ench:[{id:21,lvl:3},{id:34,lvl:3},{id:70,lvl:1}],display:{Lore:["+15 �����˺�","+15% �����ٶ�"]},HideFlags:2}}},
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:diamond,		Count:2b,tag:{ench:[{id:999}],display:{Name:"������ʯ"}}},	 	buyB:{id:minecraft:stick,Count:1b},sell:{id:minecraft:iron_sword,	Count:1b,tag:{AttributeModifiers:[{Operation:0,UUIDLeast:1007,UUIDMost:1007,Amount:20,AttributeName:"generic.attackDamage",Name:"Damage"},{Operation:1,UUIDLeast:1008,UUIDMost:1008,Amount:0.20,AttributeName:"generic.attackSpeed",Name:"AttackSpeed"}],ench:[{id:21,lvl:4},{id:34,lvl:4},{id:70,lvl:1}],display:{Lore:["+20 �����˺�","+20% �����ٶ�"]},HideFlags:2}}},
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:nether_star,	Count:2b,tag:{ench:[{id:999}],display:{Name:"�����½�֮��"}}},	buyB:{id:minecraft:stick,Count:1b},sell:{id:minecraft:diamond_sword,	Count:1b,tag:{AttributeModifiers:[{Operation:0,UUIDLeast:1009,UUIDMost:1009,Amount:30,AttributeName:"generic.attackDamage",Name:"Damage"},{Operation:1,UUIDLeast:1010,UUIDMost:1010,Amount:0.30,AttributeName:"generic.attackSpeed",Name:"AttackSpeed"}],ench:[{id:21,lvl:5}],display:{Lore:["+30 �����˺�","+30% �����ٶ�"]},HideFlags:2,Unbreakable:true}}},
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:coal,		Count:3b,tag:{ench:[{id:999}],display:{Name:"����ú"}}},		buyB:{id:minecraft:stick,Count:2b},sell:{id:minecraft:stone_axe,		Count:1b,tag:{ench:[{id:21,lvl:1},{id:34,lvl:1},{id:70,lvl:1}]}}},
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:iron_ingot,	Count:3b,tag:{ench:[{id:999}],display:{Name:"��������"}}},		buyB:{id:minecraft:stick,Count:2b},sell:{id:minecraft:stone_axe,		Count:1b,tag:{ench:[{id:21,lvl:2},{id:34,lvl:2},{id:70,lvl:1}]}}},
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:gold_ingot,	Count:3b,tag:{ench:[{id:999}],display:{Name:"���ƽ�"}}},		buyB:{id:minecraft:stick,Count:2b},sell:{id:minecraft:iron_axe,		Count:1b,tag:{ench:[{id:21,lvl:3},{id:34,lvl:3},{id:70,lvl:1}]}}},
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:diamond,		Count:3b,tag:{ench:[{id:999}],display:{Name:"������ʯ"}}},		buyB:{id:minecraft:stick,Count:2b},sell:{id:minecraft:iron_axe,		Count:1b,tag:{ench:[{id:21,lvl:4},{id:34,lvl:4},{id:70,lvl:1}]}}},
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:nether_star,	Count:3b,tag:{ench:[{id:999}],display:{Name:"�����½�֮��"}}},	buyB:{id:minecraft:stick,Count:2b},sell:{id:minecraft:diamond_axe,	Count:1b,tag:{ench:[{id:21,lvl:5}],Unbreakable:true}}}
]}}


give ruhuasiyu minecraft:diamond_sword 1 0 {AttributeModifiers:[{Operation:0,UUIDLeast:1009,UUIDMost:1009,Amount:30,AttributeName:"generic.attackDamage",Name:"Damage"},{Operation:1,UUIDLeast:1010,UUIDMost:1010,Amount:0.30,AttributeName:"generic.attackSpeed",Name:"AttackSpeed"}],ench:[{id:21,lvl:5}],display:{Name:"�ϸ���",Lore:["+30 �����˺�","+30% �����ٶ�","��˵�� Herobrine ����ĵ�����"]},HideFlags:2,Unbreakable:true}




summon villager ~ ~.5 ~ {NoAI:true,Invulnerable:true,CustomName:"���ߴ�ʦ",CustomNameVisible:true,Profession:3,Silent:true,Offers:{Recipes:[
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:coal,		Count:1b,tag:{ench:[{id:999}],display:{Name:"����ú"}}},	buyB:{id:minecraft:stick,Count:2b},sell:{id:minecraft:stone_shovel,Count:1b,tag:{ench:[{id:32,lvl:1},{id:35,lvl:1},{id:34,lvl:1},{id:70,lvl:1}]}}},
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:iron_ingot,	Count:1b,tag:{ench:[{id:999}],display:{Name:"��������"}}},	buyB:{id:minecraft:stick,Count:2b},sell:{id:minecraft:stone_shovel,Count:1b,tag:{ench:[{id:32,lvl:2},{id:33,lvl:1},{id:34,lvl:2},{id:70,lvl:1}]}}},
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:gold_ingot,	Count:1b,tag:{ench:[{id:999}],display:{Name:"���ƽ�"}}},	 	buyB:{id:minecraft:stick,Count:2b},sell:{id:minecraft:iron_shovel,Count:1b,tag:{ench:[{id:32,lvl:3},{id:35,lvl:3},{id:34,lvl:3},{id:70,lvl:1}]}}},
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:diamond,		Count:1b,tag:{ench:[{id:999}],display:{Name:"������ʯ"}}},	 	buyB:{id:minecraft:stick,Count:2b},sell:{id:minecraft:iron_shovel,Count:1b,tag:{ench:[{id:32,lvl:4},{id:33,lvl:1},{id:34,lvl:4},{id:70,lvl:1}]}}},
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:nether_star,	Count:1b,tag:{ench:[{id:999}],display:{Name:"�����½�֮��"}}},	buyB:{id:minecraft:stick,Count:2b},sell:{id:minecraft:diamond_shovel,Count:1b,tag:{ench:[{id:32,lvl:5},{id:35,lvl:5}],Unbreakable:true}}},
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:coal,		Count:3b,tag:{ench:[{id:999}],display:{Name:"����ú"}}},  	 	buyB:{id:minecraft:stick,Count:2b},sell:{id:minecraft:stone_pickaxe,Count:1b,tag:{ench:[{id:32,lvl:1},{id:35,lvl:1},{id:34,lvl:1},{id:70,lvl:1}]}}},
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:iron_ingot,	Count:3b,tag:{ench:[{id:999}],display:{Name:"��������"}}},	 	buyB:{id:minecraft:stick,Count:2b},sell:{id:minecraft:stone_pickaxe,Count:1b,tag:{ench:[{id:32,lvl:2},{id:33,lvl:1},{id:34,lvl:2},{id:70,lvl:1}]}}},
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:gold_ingot,	Count:3b,tag:{ench:[{id:999}],display:{Name:"���ƽ�"}}},	 	buyB:{id:minecraft:stick,Count:2b},sell:{id:minecraft:iron_pickaxe,Count:1b,tag:{ench:[{id:32,lvl:3},{id:35,lvl:3},{id:34,lvl:3},{id:70,lvl:1}]}}},
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:diamond,		Count:3b,tag:{ench:[{id:999}],display:{Name:"������ʯ"}}},	 	buyB:{id:minecraft:stick,Count:2b},sell:{id:minecraft:iron_pickaxe,Count:1b,tag:{ench:[{id:32,lvl:5},{id:33,lvl:1},{id:34,lvl:4},{id:70,lvl:1}]}}},
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:nether_star,	Count:3b,tag:{ench:[{id:999}],display:{Name:"�����½�֮��"}}},	buyB:{id:minecraft:stick,Count:2b},sell:{id:minecraft:diamond_pickaxe,Count:1b,tag:{ench:[{id:32,lvl:7},{id:35,lvl:5}],Unbreakable:true}}}
]}}

summon villager ~ ~.5 ~ {NoAI:true,Invulnerable:true,CustomName:"���״�ʦ",CustomNameVisible:true,Profession:3,Silent:true,Offers:{Recipes:[
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:coal,		Count:8b,tag:{ench:[],display:{Name:"����ú"}}},		sell:{id:minecraft:leather_chestplate,Count:1b,tag:
{ench:[{id:minecraft:0,lvl:1},{id:7,lvl:1},{id:34,lvl:1},{id:70,lvl:1}]}}},
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:iron_ingot,	Count:8b,tag:{ench:[],display:{Name:"��������"}}},	sell:{id:minecraft:leather_chestplate,Count:1b,tag:
{ench:[{id:minecraft:0,lvl:2},{id:7,lvl:2},{id:34,lvl:2},{id:70,lvl:1}]}}},
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:gold_ingot,	Count:8b,tag:{ench:[],display:{Name:"���ƽ�"}}},	sell:{id:minecraft:iron_chestplate,Count:1b,tag:
{ench:[{id:minecraft:0,lvl:3},{id:7,lvl:3},{id:34,lvl:3},{id:70,lvl:1}]}}},
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:diamond,		Count:8b,tag:{ench:[],display:{Name:"������ʯ"}}},	sell:{id:minecraft:iron_chestplate,Count:1b,tag:
{ench:[{id:minecraft:0,lvl:4},{id:7,lvl:4},{id:34,lvl:4},{id:70,lvl:1}]}}},
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:nether_star,	Count:8b,tag:{ench:[],display:{Name:"�����½�֮��"}}},sell:{id:minecraft:diamond_chestplate,Count:1b,tag:
{ench:[{id:minecraft:0,lvl:5},{id:7,lvl:5}],Unbreakable:true}}},
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:coal,		Count:7b,tag:{ench:[],display:{Name:"����ú"}}},		sell:{id:minecraft:leather_leggings,Count:1b,tag:
{AttributeModifiers:[{Operation:0,UUIDLeast:7,UUIDMost:99,Amount:2,AttributeName:"generic.armorToughness",Name:"Tough"}],ench:[{id:1,lvl:1},{id:34,lvl:1},{id:70,lvl:1}],display:{Lore:["+2 ��������"]},HideFlags:2}}},
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:iron_ingot,	Count:7b,tag:{ench:[],display:{Name:"��������"}}},	sell:{id:minecraft:leather_leggings,Count:1b,tag:
{AttributeModifiers:[{Operation:0,UUIDLeast:7,UUIDMost:99,Amount:4,AttributeName:"generic.armorToughness",Name:"Tough"}],ench:[{id:1,lvl:2},{id:34,lvl:2},{id:70,lvl:1}],display:{Lore:["+4 ��������"]},HideFlags:2}}},
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:gold_ingot,	Count:7b,tag:{ench:[],display:{Name:"���ƽ�"}}},	sell:{id:minecraft:iron_leggings,Count:1b,tag:
{AttributeModifiers:[{Operation:0,UUIDLeast:7,UUIDMost:99,Amount:6,AttributeName:"generic.armorToughness",Name:"Tough"}],ench:[{id:1,lvl:3},{id:34,lvl:3},{id:70,lvl:1}],display:{Lore:["+6 ��������"]},HideFlags:2}}},
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:diamond,		Count:7b,tag:{ench:[],display:{Name:"������ʯ"}}},	sell:{id:minecraft:iron_leggings,Count:1b,tag:
{AttributeModifiers:[{Operation:0,UUIDLeast:7,UUIDMost:99,Amount:8,AttributeName:"generic.armorToughness",Name:"Tough"}],ench:[{id:1,lvl:4},{id:34,lvl:4},{id:70,lvl:1}],display:{Lore:["+8 ��������"]},HideFlags:2}}},
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:nether_star,	Count:7b,tag:{ench:[],display:{Name:"�����½�֮��"}}},sell:{id:minecraft:diamond_leggings,Count:1b,tag:
{AttributeModifiers:[{Operation:0,UUIDLeast:7,UUIDMost:99,Amount:10,AttributeName:"generic.armorToughness",Name:"Tough"}],ench:[{id:1,lvl:10}],display:{Lore:["+10 ��������"]},HideFlags:2,Unbreakable:true}}},
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:coal,		Count:5b,tag:{ench:[],display:{Name:"����ú"}}},		sell:{id:minecraft:leather_helmet,Count:1b,tag:
{ench:[{id:4,lvl:1},{id:5,lvl:1},{id:34,lvl:1},{id:70,lvl:1}]}}},
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:iron_ingot,	Count:5b,tag:{ench:[],display:{Name:"��������"}}},	sell:{id:minecraft:leather_helmet,Count:1b,tag:
{ench:[{id:4,lvl:2},{id:5,lvl:2},{id:34,lvl:2},{id:70,lvl:1}]}}},
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:gold_ingot,	Count:5b,tag:{ench:[],display:{Name:"���ƽ�"}}},	sell:{id:minecraft:iron_helmet,Count:1b,tag:
{ench:[{id:4,lvl:3},{id:5,lvl:3},{id:6,lvl:1},{id:34,lvl:3},{id:70,lvl:1}]}}},
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:diamond,		Count:5b,tag:{ench:[],display:{Name:"������ʯ"}}},	sell:{id:minecraft:iron_helmet,Count:1b,tag:
{ench:[{id:4,lvl:4},{id:5,lvl:4},{id:6,lvl:1},{id:34,lvl:4},{id:70,lvl:1}]}}},
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:nether_star,	Count:5b,tag:{ench:[],display:{Name:"�����½�֮��"}}},sell:{id:minecraft:diamond_helmet,Count:1b,tag:
{ench:[{id:4,lvl:5},{id:5,lvl:10},{id:6,lvl:1}],Unbreakable:true}}},
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:coal,		Count:4b,tag:{ench:[],display:{Name:"����ú"}}},		sell:{id:minecraft:leather_boots,Count:1b,tag:
{ench:[{id:2,lvl:1},{id:3,lvl:1},{id:minecraft:8,lvl:1},{id:34,lvl:1},{id:70,lvl:1}]}}},
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:iron_ingot,	Count:4b,tag:{ench:[],display:{Name:"��������"}}},	sell:{id:minecraft:leather_boots,Count:1b,tag:
{ench:[{id:2,lvl:2},{id:3,lvl:2},{id:minecraft:9,lvl:1},{id:34,lvl:2},{id:70,lvl:1}]}}},
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:gold_ingot,	Count:4b,tag:{ench:[],display:{Name:"���ƽ�"}}},	sell:{id:minecraft:iron_boots,Count:1b,tag:
{ench:[{id:2,lvl:3},{id:3,lvl:3},{id:minecraft:8,lvl:2},{id:34,lvl:3},{id:70,lvl:1}]}}},
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:diamond,		Count:4b,tag:{ench:[],display:{Name:"������ʯ"}}},	sell:{id:minecraft:iron_boots,Count:1b,tag:
{ench:[{id:2,lvl:4},{id:3,lvl:4},{id:minecraft:9,lvl:2},{id:34,lvl:4},{id:70,lvl:1}]}}},
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:nether_star,	Count:4b,tag:{ench:[],display:{Name:"�����½�֮��"}}},sell:{id:minecraft:diamond_boots,Count:1b,tag:
{ench:[{id:2,lvl:5},{id:3,lvl:5},{id:minecraft:8,lvl:3}],Unbreakable:true,HideFlags:2}}}
]}}

summon villager ~ ~.5 ~ {NoAI:true,Invulnerable:true,CustomName:"������",CustomNameVisible:true,Profession:0,Silent:true,Offers:{Recipes:[
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:leather_helmet,		Count:1b},sell:{id:minecraft:leather,		Count:2b}},
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:leather_chestplate,	Count:1b},sell:{id:minecraft:leather,		Count:4b}},
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:leather_leggings,	Count:1b},sell:{id:minecraft:leather,		Count:3b}},
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:leather_boots,		Count:1b},sell:{id:minecraft:leather,		Count:2b}},
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:chainmail_helmet,	Count:1b},sell:{id:minecraft:iron_ingot,	Count:2b}},
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:chainmail_chestplate,Count:1b},sell:{id:minecraft:iron_ingot,	Count:4b}},
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:chainmail_leggings,	Count:1b},sell:{id:minecraft:iron_ingot,	Count:3b}},
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:chainmail_boots,		Count:1b},sell:{id:minecraft:iron_ingot,	Count:2b}},
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:iron_helmet,			Count:1b},sell:{id:minecraft:iron_ingot,	Count:2b}},
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:iron_chestplate,		Count:1b},sell:{id:minecraft:iron_ingot,	Count:4b}},
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:iron_leggings,		Count:1b},sell:{id:minecraft:iron_ingot,	Count:3b}},
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:iron_boots,			Count:1b},sell:{id:minecraft:iron_ingot,	Count:2b}},
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:golden_helmet,		Count:1b},sell:{id:minecraft:gold_ingot,	Count:2b}},
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:golden_chestplate,	Count:1b},sell:{id:minecraft:gold_ingot,	Count:4b}},
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:golden_leggings,		Count:1b},sell:{id:minecraft:gold_ingot,	Count:3b}},
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:golden_boots,		Count:1b},sell:{id:minecraft:gold_ingot,	Count:2b}},
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:diamond_helmet,		Count:1b},sell:{id:minecraft:diamond,		Count:2b}},
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:diamond_chestplate,	Count:1b},sell:{id:minecraft:diamond,		Count:4b}},
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:diamond_leggings,	Count:1b},sell:{id:minecraft:diamond,		Count:3b}},
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:diamond_boots,		Count:1b},sell:{id:minecraft:diamond,		Count:2b}},
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:wooden_sword,		Count:1b},sell:{id:minecraft:planks,		Count:1b}},
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:stone_sword,			Count:1b},sell:{id:minecraft:cobblestone,	Count:1b}},
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:iron_sword,			Count:1b},sell:{id:minecraft:iron_ingot,	Count:1b}},
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:golden_sword,		Count:1b},sell:{id:minecraft:gold_ingot,	Count:1b}},
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:diamond_sword,		Count:1b},sell:{id:minecraft:diamond,		Count:1b}},
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:wooden_pickaxe,		Count:1b},sell:{id:minecraft:planks,		Count:1b}},
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:stone_pickaxe,		Count:1b},sell:{id:minecraft:cobblestone,	Count:1b}},
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:iron_pickaxe,		Count:1b},sell:{id:minecraft:iron_ingot,	Count:1b}},
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:golden_pickaxe,		Count:1b},sell:{id:minecraft:gold_ingot,	Count:1b}},
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:diamond_pickaxe,		Count:1b},sell:{id:minecraft:diamond,		Count:1b}},
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:iron_horse_armor,	Count:1b},sell:{id:minecraft:iron_ingot,	Count:3b}},
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:golden_horse_armor,	Count:1b},sell:{id:minecraft:gold_ingot,	Count:3b}},
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:diamond_horse_armor,	Count:1b},sell:{id:minecraft:diamond,		Count:3b}},
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:saddle,				Count:1b},sell:{id:minecraft:leather,		Count:3b}},
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:minecart,			Count:1b},sell:{id:minecraft:iron_ingot,	Count:2b}},
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:bow,					Count:1b},sell:{id:minecraft:string,		Count:3b}},
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:stone,Damage:1s,		Count:1b},sell:{id:minecraft:quartz,		Count:1b}},
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:stone,Damage:3s,		Count:2b},sell:{id:minecraft:quartz,		Count:1b}},
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:stone,Damage:5s,		Count:4b},sell:{id:minecraft:quartz,		Count:1b}},
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:coal,Damage:1,		Count:2b},sell:{id:minecraft:coal,		Count:1b}},
{maxUses:99999999,rewardExp:0b,buy:{id:minecraft:coal,			   Count:64},sell:{id:minecraft:diamond,		Count:1b}}
]}}

====	112 ���� 17
�����			fishing_rod			20
����			shears				30
ָ����			compass				100
��				clock				100
������			name_tag			200
��ħ֮ƿ		experience_bottle	30
ĩӰ����		ender_pearl			40
��				saddle				80
����			glass				2
���			bookshelf			30
��ë			wool				10
�ҽ�Ͱ			lava_bucket			100
��ʯ��		diamond_horse_armor	500
�ʳ�			elytra				1000
����ʱ��		clock				1926
�յ�ͼ			map					70
����̽�ռҵ�ͼ	filled_map			2000

summon falling_block ~ ~2 ~ {Time:1,Block:"minecraft:redstone_block",Passengers:[
{id:"falling_block",Time:1,Block:"minecraft:activator_rail",Passengers:[

{id:"commandblock_minecart",Command:"setblock ~-2 ~-1 ~ wall_sign 5 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"��������\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=20] minecraft:fishing_rod\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$20\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=20] CK 20\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~-2 ~-1 ~-1 wall_sign 5 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"�������\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=30] minecraft:shears\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$30\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=30] CK 30\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~-2 ~-1 ~-2 wall_sign 5 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"����ָ����\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=100] minecraft:compass\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$100\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=100] CK 100\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~-2 ~-1 ~-3 wall_sign 5 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"������\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=100] minecraft:clock\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$100\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=100] CK 100\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~-2 ~-1 ~-4 wall_sign 5 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"����������\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=200] minecraft:name_tag\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$200\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=200] CK 200\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~-2 ~-1 ~-5 wall_sign 5 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"����ħ֮ƿ\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=30] minecraft:experience_bottle\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$30\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=30] CK 30\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~-2 ~-1 ~-6 wall_sign 5 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"����ĩӰ����\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=40] minecraft:ender_pearl\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$40\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=40] CK 40\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~-2 ~-1 ~-7 wall_sign 5 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"����\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=80] minecraft:saddle\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$80\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=80] CK 80\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~-2 ~-1 ~-8 wall_sign 5 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"������\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=2] minecraft:glass\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$2\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=2] CK 2\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~-2 ~-1 ~-9 wall_sign 5 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"�������\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=30] minecraft:bookshelf\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$30\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=30] CK 30\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~-2 ~-1 ~-10 wall_sign 5 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"������ë\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=10] minecraft:wool\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$10\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=10] CK 10\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~-2 ~-1 ~-11 wall_sign 5 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"�����ҽ�Ͱ\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=100] minecraft:lava_bucket\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$100\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=100] CK 100\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~-2 ~-1 ~-12 wall_sign 5 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"������ʯ��\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=500] minecraft:diamond_horse_armor\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$500\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=500] CK 500\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~-2 ~-1 ~-13 wall_sign 5 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"�����ʳ�\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=1000] minecraft:elytra\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$1000\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=1000] CK 1000\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~-2 ~-1 ~-14 wall_sign 5 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"������ʱ��\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=1926] minecraft:clock 1 0 {AttributeModifiers:[{Operation:1,UUIDLeast:100,UUIDMost:999,Amount:1,AttributeName:\\\\\\\"generic.movementSpeed\\\\\\\",Name:\\\\\\\"Speed\\\\\\\"}], display:{Name:\\\\\\\"����ʱ��\\\\\\\",Lore:[\\\\\\\"�ٶ� +100%\\\\\\\",\\\\\\\"��ʱ������\\\\\\\"]},HideFlags:2,ench:[{id:999}]}\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$1926\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=1926] CK 1926\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~-2 ~-1 ~-15 wall_sign 5 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"����յ�ͼ\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=70] minecraft:map\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$70\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=70] CK 70\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~-2 ~-1 ~-16 wall_sign 5 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"������̽�ռҵ�ͼ\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=2000] minecraft:filled_map 1 20001 {Decorations:[{rot:180.0d,x:-3800.0d,z:-5048.0d,id:\\\\\\\"+\\\\\\\",type:9b}],display:{LocName:\\\\\\\"filled_map.monument\\\\\\\",MapColor:3830373}}\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$2000\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=2000] CK 2000\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~-2 ~-1 ~-17 wall_sign 5 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"������̽�ռҵ�ͼ\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=2000] minecraft:filled_map 1 20002 {Decorations:[{rot:180.0d,x:11944.0d,z:-2791.0d,id:\\\\\\\"+\\\\\\\",type:9b}],display:{LocName:\\\\\\\"filled_map.monument\\\\\\\",MapColor:3830373}}\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$2000\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=2000] CK 2000\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~ ~-1 ~ minecraft:lava 7 replace"},
{id:"commandblock_minecart",Command:"fill ~ ~ ~ ~ ~-1 ~ minecraft:air 0 replace"}]}]}

testfor @a[x=267,y=64,z=287,dx=9,dy=5,dz=19]
tellraw @a[x=267,y=64,z=287,dx=9,dy=5,dz=19] [{"text":"��ӭ�������������ߡ�����\n","color":"yellow"},
{"text":"����$2����ë$10�������$20������/���/��ħ֮ƿ$30��ĩӰ����$40\n","color":"light_purple"},
{"text":"��$80��ָ����/��/�ҽ�Ͱ$100��������$200����ʯ��$500\n","color":"gold"},
{"text":"�ʳ�$1000������ʱ��$1926���յ�ͼ$70������̽�ռҵ�ͼ$2000\n","color":"green"},
{"text":"�������Թ���ħ��","color":"red"}]

give @p[score_CK_min=1926] minecraft:clock 1 0 {AttributeModifiers:[{Operation:1,UUIDLeast:100,UUIDMost:999,Amount:1,AttributeName:"generic.movementSpeed",Name:"Speed"}], display:{Name:"����ʱ��",Lore:["�ٶ� +100%","��ʱ������"]},HideFlags:2,ench:[{id:999}]}
give @p[score_CK_min=2000] minecraft:filled_map 1 20001 {Decorations:[{rot:180.0d,x:-3800.0d,z:-5048.0d,id:"+",type:9b}],display:{LocName:"filled_map.monument",MapColor:3830373}}
give @p[score_CK_min=2000] minecraft:filled_map 1 20002 {Decorations:[{rot:180.0d,x:11944.0d,z:-2791.0d,id:"+",type:9b}],display:{LocName:"filled_map.monument",MapColor:3830373}}

summon villager ~ ~.5 ~ {Rotation:[270f,0f],NoAI:true,Invulnerable:true,CustomName:"ħ��ʦ",CustomNameVisible:true,Profession:1,Silent:true,Offers:{Recipes:[
{maxUses:99999999,buy:{id:minecraft:emerald,Count:14b},sell:{id:minecraft:enchanted_book,Count:1b,tag:{StoredEnchantments:[{id:0,lvl:4}]}}},
{maxUses:99999999,buy:{id:minecraft:emerald,Count:14b},sell:{id:minecraft:enchanted_book,Count:1b,tag:{StoredEnchantments:[{id:1,lvl:4}]}}},
{maxUses:99999999,buy:{id:minecraft:emerald,Count:14b},sell:{id:minecraft:enchanted_book,Count:1b,tag:{StoredEnchantments:[{id:2,lvl:4}]}}},
{maxUses:99999999,buy:{id:minecraft:emerald,Count:14b},sell:{id:minecraft:enchanted_book,Count:1b,tag:{StoredEnchantments:[{id:3,lvl:4}]}}},
{maxUses:99999999,buy:{id:minecraft:emerald,Count:14b},sell:{id:minecraft:enchanted_book,Count:1b,tag:{StoredEnchantments:[{id:4,lvl:4}]}}},
{maxUses:99999999,buy:{id:minecraft:emerald,Count:11b},sell:{id:minecraft:enchanted_book,Count:1b,tag:{StoredEnchantments:[{id:5,lvl:3}]}}},
{maxUses:99999999,buy:{id:minecraft:emerald,Count: 5b},sell:{id:minecraft:enchanted_book,Count:1b,tag:{StoredEnchantments:[{id:6,lvl:1}]}}},
{maxUses:99999999,buy:{id:minecraft:emerald,Count:11b},sell:{id:minecraft:enchanted_book,Count:1b,tag:{StoredEnchantments:[{id:7,lvl:3}]}}},
{maxUses:99999999,buy:{id:minecraft:emerald,Count:11b},sell:{id:minecraft:enchanted_book,Count:1b,tag:{StoredEnchantments:[{id:8,lvl:3}]}}},
{maxUses:99999999,buy:{id:minecraft:emerald,Count:16b},sell:{id:minecraft:enchanted_book,Count:1b,tag:{StoredEnchantments:[{id:9,lvl:2}]}}},
{maxUses:99999999,buy:{id:minecraft:emerald,Count:17b},sell:{id:minecraft:enchanted_book,Count:1b,tag:{StoredEnchantments:[{id:16,lvl:5}]}}},
{maxUses:99999999,buy:{id:minecraft:emerald,Count:17b},sell:{id:minecraft:enchanted_book,Count:1b,tag:{StoredEnchantments:[{id:17,lvl:5}]}}},
{maxUses:99999999,buy:{id:minecraft:emerald,Count:17b},sell:{id:minecraft:enchanted_book,Count:1b,tag:{StoredEnchantments:[{id:18,lvl:5}]}}},
{maxUses:99999999,buy:{id:minecraft:emerald,Count: 8b},sell:{id:minecraft:enchanted_book,Count:1b,tag:{StoredEnchantments:[{id:19,lvl:2}]}}},
{maxUses:99999999,buy:{id:minecraft:emerald,Count: 8b},sell:{id:minecraft:enchanted_book,Count:1b,tag:{StoredEnchantments:[{id:20,lvl:2}]}}},
{maxUses:99999999,buy:{id:minecraft:emerald,Count:11b},sell:{id:minecraft:enchanted_book,Count:1b,tag:{StoredEnchantments:[{id:21,lvl:3}]}}},
{maxUses:99999999,buy:{id:minecraft:emerald,Count:17b},sell:{id:minecraft:enchanted_book,Count:1b,tag:{StoredEnchantments:[{id:32,lvl:5}]}}},
{maxUses:99999999,buy:{id:minecraft:emerald,Count: 5b},sell:{id:minecraft:enchanted_book,Count:1b,tag:{StoredEnchantments:[{id:33,lvl:1}]}}},
{maxUses:99999999,buy:{id:minecraft:emerald,Count:11b},sell:{id:minecraft:enchanted_book,Count:1b,tag:{StoredEnchantments:[{id:34,lvl:3}]}}},
{maxUses:99999999,buy:{id:minecraft:emerald,Count:11b},sell:{id:minecraft:enchanted_book,Count:1b,tag:{StoredEnchantments:[{id:35,lvl:3}]}}},
{maxUses:99999999,buy:{id:minecraft:emerald,Count:17b},sell:{id:minecraft:enchanted_book,Count:1b,tag:{StoredEnchantments:[{id:48,lvl:5}]}}},
{maxUses:99999999,buy:{id:minecraft:emerald,Count: 8b},sell:{id:minecraft:enchanted_book,Count:1b,tag:{StoredEnchantments:[{id:49,lvl:2}]}}},
{maxUses:99999999,buy:{id:minecraft:emerald,Count: 5b},sell:{id:minecraft:enchanted_book,Count:1b,tag:{StoredEnchantments:[{id:50,lvl:1}]}}},
{maxUses:99999999,buy:{id:minecraft:emerald,Count: 5b},sell:{id:minecraft:enchanted_book,Count:1b,tag:{StoredEnchantments:[{id:51,lvl:1}]}}},
{maxUses:99999999,buy:{id:minecraft:emerald,Count:11b},sell:{id:minecraft:enchanted_book,Count:1b,tag:{StoredEnchantments:[{id:61,lvl:3}]}}},
{maxUses:99999999,buy:{id:minecraft:emerald,Count:11b},sell:{id:minecraft:enchanted_book,Count:1b,tag:{StoredEnchantments:[{id:62,lvl:3}]}}},
{maxUses:99999999,buy:{id:minecraft:emerald,Count:10b},sell:{id:minecraft:enchanted_book,Count:1b,tag:{StoredEnchantments:[{id:70,lvl:1}]}}}]}}

================================     �����㳡   ================================
setblock ~ ~ ~ standing_sign 0 replace {Text1:"{\"text\":\"\"}",
Text2:"{\"text\":\"����\",\"color\":\"dark_blue\"}",
Text3:"{\"text\":\"���ߣ��绨\",\"color\":\"dark_purple\"}",
Text4:"{\"text\":\"2016/12/15\",\"color\":\"dark_purple\"}"}

================================      ˢ��Ʒ    ================================
====	ˢѩ
testfor @a[x=315,y=63,z=355,dx=10,dy=5,dz=12]
tellraw @a[x=315,y=63,z=355,dx=10,dy=5,dz=12] [{"text":"��ӭ����ˢѩ��","color":"yellow"}]

====	ˢʯ
summon item ~1 ~3 ~2 {Item:{id:"minecraft:stone",Count:1b,Damage:0s}}
testfor @a[x=315,y=63,z=369,dx=10,dy=5,dz=12]
tellraw @a[x=315,y=63,z=369,dx=10,dy=5,dz=12] [{"text":"��ӭ����ˢʯ�ң�������ڴ�ˢʯͷ��Բʯ��","color":"yellow"}]

====	ˢ��
scoreboard players tag @e[type=item,r=10] add feathers {Item:{id:"minecraft:feather",Count:1b,Damage:0s}}
scoreboard players tag @e[type=item,r=10] add chickens {Item:{id:"minecraft:chicken",Count:1b,Damage:0s}}
scoreboard players tag @e[type=item,r=10] add eggs {Item:{id:"minecraft:egg",Count:1b,Damage:0s}}
tp @e[tag=eggs] 316 67 387
tp @e[tag=feathers] 324 66 383
tp @e[tag=chickens] 324 66 383
testfor @a[x=315,y=63,z=383,dx=10,dy=5,dz=12]
tellraw @a[x=315,y=63,z=383,dx=10,dy=5,dz=12] [{"text":"��ӭ����ˢ���ң�������ڴ�ˢ�������ë��","color":"yellow"}]

====	ˢ��
testfor @a[x=334,y=63,z=355,dx=5,dy=5,dz=17]
tellraw @a[x=334,y=63,z=355,dx=5,dy=5,dz=17] [{"text":"��ӭ�ڴ�ˢ����һ���ʾ�Ƽ��ɻ�ù�������","color":"yellow"}],
{"text":"���Ƿ۷����ڷ������ڣ��ٽ������Ģ����ֲ�ڲݷ�����˿�ϼ��ɡ�","color":"light_purple"}],
{"text":"��$80��ָ����/��/�ҽ�Ͱ$100��������$200����ʯ��$500\n","color":"gold"},
{"text":"�ʳ�$1000������ʱ��$1926���յ�ͼ$70������̽�ռҵ�ͼ$2000\n","color":"green"},
{"text":"�������Թ���ħ��","color":"red"}]

summon falling_block ~ ~2 ~ {Time:1,Block:"minecraft:redstone_block",Passengers:[
{id:"falling_block",Time:1,Block:"minecraft:activator_rail",Passengers:[

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~ wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"ˢ����\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"execute @p[score_CK_min=5] ~ ~ ~ summon vex ~ ~ ~ {NoAI:1,Silent:1,DeathLootTable:\\\\\\\"minecraft:entities/squid\\\\\\\",Health:1,LifeTicks:1}\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$5\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=5] CK 5\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~1 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"ˢ��ʬ\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"execute @p[score_CK_min=5] ~ ~ ~ summon vex ~ ~ ~ {NoAI:1,Silent:1,DeathLootTable:\\\\\\\"minecraft:entities/zombie\\\\\\\",Health:1,LifeTicks:1}\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$5\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=5] CK 5\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~2 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"ˢ����\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"execute @p[score_CK_min=5] ~ ~ ~ summon vex ~ ~ ~ {NoAI:1,Silent:1,DeathLootTable:\\\\\\\"minecraft:entities/skeleton\\\\\\\",Health:1,LifeTicks:1}\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$5\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=5] CK 5\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~3 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"ˢ������\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"execute @p[score_CK_min=5] ~ ~ ~ summon vex ~ ~ ~ {NoAI:1,Silent:1,DeathLootTable:\\\\\\\"minecraft:entities/creeper\\\\\\\",Health:1,LifeTicks:1}\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$5\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=5] CK 5\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~4 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"ˢ֩��\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"execute @p[score_CK_min=5] ~ ~ ~ summon vex ~ ~ ~ {NoAI:1,Silent:1,DeathLootTable:\\\\\\\"minecraft:entities/spider\\\\\\\",Health:1,LifeTicks:1}\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$5\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=5] CK 5\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~5 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"ˢʷ��ķ\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"execute @p[score_CK_min=5] ~ ~ ~ summon vex ~ ~ ~ {NoAI:1,Silent:1,DeathLootTable:\\\\\\\"minecraft:entities/slime\\\\\\\",Health:1,LifeTicks:1}\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$5\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=5] CK 5\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~6 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"ˢŮ��\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"execute @p[score_CK_min=5] ~ ~ ~ summon vex ~ ~ ~ {NoAI:1,Silent:1,DeathLootTable:\\\\\\\"minecraft:entities/witch\\\\\\\",Health:1,LifeTicks:1}\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$5\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=5] CK 5\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~8 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"ˢ��ʬ����\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"execute @p[score_CK_min=5] ~ ~ ~ summon vex ~ ~ ~ {NoAI:1,Silent:1,DeathLootTable:\\\\\\\"minecraft:entities/zombie_pigman\\\\\\\",Health:1,LifeTicks:1}\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$5\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=5] CK 5\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~9 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"ˢ�ҽ���\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"execute @p[score_CK_min=5] ~ ~ ~ summon vex ~ ~ ~ {NoAI:1,Silent:1,DeathLootTable:\\\\\\\"minecraft:entities/magma_cube\\\\\\\",Health:1,LifeTicks:1}\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$5\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=5] CK 5\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~11 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"ˢ��������\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"execute @p[score_CK_min=5] ~ ~ ~ summon vex ~ ~ ~ {NoAI:1,Silent:1,DeathLootTable:\\\\\\\"minecraft:entities/wither_skeleton\\\\\\\",Health:1,LifeTicks:1}\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$5\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=5] CK 5\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~12 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"ˢ���\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"execute @p[score_CK_min=80] ~ ~ ~ summon vex ~ ~ ~ {NoAI:1,Silent:1,DeathLootTable:\\\\\\\"minecraft:entities/ghast\\\\\\\",Health:1,LifeTicks:1}\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$80\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=80] CK 80\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~14 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"ˢĩӰ��\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"execute @p[score_CK_min=40] ~ ~ ~ summon vex ~ ~ ~ {NoAI:1,Silent:1,DeathLootTable:\\\\\\\"minecraft:entities/enderman\\\\\\\",Health:1,LifeTicks:1}\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$40\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=40] CK 80\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~15 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"ˢǱӰ��\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"execute @p[score_CK_min=80] ~ ~ ~ summon vex ~ ~ ~ {NoAI:1,Silent:1,DeathLootTable:\\\\\\\"minecraft:entities/shulker\\\\\\\",Health:1,LifeTicks:1}\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$80\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=80] CK 80\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~16 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"ˢ������\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"execute @p[score_CK_min=5] ~ ~ ~ summon vex ~ ~ ~ {NoAI:1,Silent:1,DeathLootTable:\\\\\\\"minecraft:entities/guardian\\\\\\\",Health:1,LifeTicks:1}\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$5\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=5] CK 5\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~2 ~-1 ~17 wall_sign 4 replace {
Text1:\"{\\\"text\\\":\\\"\\\"}\",
Text2:\"{\\\"text\\\":\\\"ˢ��ħ��\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"execute @p[score_CK_min=60] ~ ~ ~ summon vex ~ ~ ~ {NoAI:1,Silent:1,DeathLootTable:\\\\\\\"minecraft:entities/evocation_illager\\\\\\\",Health:1,LifeTicks:1}\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$60\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=60] CK 60\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},

{id:"commandblock_minecart",Command:"setblock ~ ~-1 ~ minecraft:lava 7 replace"},
{id:"commandblock_minecart",Command:"fill ~ ~ ~ ~ ~-1 ~ minecraft:air 0 replace"}]}]}

====	ˢĢ����ľͷ
testforblock 335 65 379 sapling
testforblock 335 65 379 brown_mushroom
testforblock 335 65 379 red_mushroom

setblock 335 65 379 air 0 destroy
fill 331 66 375 339 75 383 air 0 destroy

setblock ~ ~ ~ wall_sign 4 replace {Text1:"{\"text\":\"\"}",
Text2:"{\"text\":\"> ˢľͷ <\",\"color\":\"dark_blue\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"setblock 335 64 379 mycelium\"}}",
Text3:"{\"text\":\"ˢĢ��\",\"color\":\"black\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"clone ~ ~-3 ~ ~ ~-3 ~ ~ ~ ~\"}}",
Text4:"{\"text\":\"\"}"}
setblock ~ ~ ~ wall_sign 4 replace {Text1:"{\"text\":\"\"}",
Text2:"{\"text\":\"ˢľͷ\",\"color\":\"black\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"setblock 335 64 379 grass\"}}",
Text3:"{\"text\":\"> ˢĢ�� <\",\"color\":\"dark_blue\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"clone ~ ~-2 ~ ~ ~-2 ~ ~ ~ ~\"}}",
Text4:"{\"text\":\"\"}"}

testfor @a[x=333,y=63,z=374,dx=6,dy=5,dz=10]
tellraw @a[x=333,y=63,z=374,dx=6,dy=5,dz=10] [{"text":"��ӭ��ˢľͷ��Ģ����","color":"yellow"},
{"text":"���Ƿ۷����ڷ������ڣ��ٽ������Ģ����ֲ�ڲݷ�����˿�ϼ��ɡ�","color":"light_purple"}]

====	ˢС����˸������������ܲ�
testforblock 337 65 387 minecraft:wheat 7
testforblock 337 65 387 minecraft:potatoes 7
testforblock 337 65 387 minecraft:carrots 7
testforblock 337 65 387 minecraft:beetroots 3
setblock 337 65 387 minecraft:air 0 destroy

testfor @a[x=334,y=63,z=386,dx=3,dy=5,dz=3]
tellraw @a[x=334,y=63,z=386,dx=3,dy=5,dz=3] [{"text":"��ӭ��ˢС����˸������������ܲ���","color":"yellow"},
{"text":"���Ƿ۷����ڷ������ڣ��ٽ�������ֲ�ڸ����ϼ��ɡ�","color":"light_purple"}]

====	ˢ��
summon vex 339 65 391 {NoAI:1,Silent:1,Tags:["fishbat"],LifeTicks:15000}
scoreboard players add @e[tag=fishbat] temp 1
execute @e[tag=fishbat,score_temp_min=300] ~ ~ ~ summon vex ~ ~ ~ {NoAI:1,Silent:1,Health:1,DeathLootTable:"minecraft:gameplay/fishing",Tags:["mobs"],LifeTicks:1}
scoreboard players remove @e[tag=fishbat] temp 300

testfor @a[x=335,y=63,z=390,dx=4,dy=5,dz=5]
tellraw @a[x=335,y=63,z=390,dx=4,dy=5,dz=5] [{"text":"��ӭ����ˢ���ҡ�������ڴ�ˢ�������ë��","color":"yellow"},
{"text":"��֩�������ڳ�ɫ����ÿ��15����һ�ε������ã�ÿ��֩��������50��\n","color":"light_purple"}]

====	�Զ���ũ��
��ũ������С����˸������������ܲ����Ϲϡ����ϡ����ᡢ�����ơ��ɿɶ��������ࡣ

clone 350 63 355 385 63 395 350 64 355 filtered move minecraft:wheat 7
fill 350 63 355 385 63 395 minecraft:wheat 0 keep
scoreboard players tag @e[type=item] add wheat {Item:{id:minecraft:wheat}}
tp @e[type=item,tag=wheat] 386 66 395
clone 350 63 355 385 63 395 350 64 355 filtered move minecraft:beetroots 3
fill 350 63 355 385 63 395 minecraft:beetroots 0 keep
scoreboard players tag @e[type=item] add beetroot {Item:{id:minecraft:beetroot}}
tp @e[type=item,tag=beetroot] 387 66 395
clone 350 63 355 385 63 395 350 64 355 filtered move minecraft:carrots 7
fill 350 63 355 385 63 395 minecraft:carrots 0 keep
scoreboard players tag @e[type=item] add carrot {Item:{id:minecraft:carrot}}
tp @e[type=item,tag=carrot] 389 66 395
clone 350 63 355 385 63 395 350 64 355 filtered move minecraft:potatoes 7
fill 350 63 355 385 63 395 minecraft:potatoes 0 keep
scoreboard players tag @e[type=item] add potato {Item:{id:minecraft:potato}}
tp @e[type=item,tag=potato] 388 66 395

clone 396 63 355 413 63 395 396 64 355 filtered move minecraft:pumpkin
clone 396 63 355 413 63 395 396 64 355 filtered move minecraft:melon_block
fill 396 62 355 413 62 395 minecraft:farmland 7 replace minecraft:dirt
fill 396 62 355 413 62 395 minecraft:farmland 7 replace minecraft:grass
fill 396 64 355 413 64 395 minecraft:air 0 destroy
scoreboard players tag @e[type=item] add pumpkin {Item:{id:minecraft:pumpkin}}
scoreboard players tag @e[type=item] add melon {Item:{id:minecraft:melon}}
tp @e[type=item,tag=pumpkin] 390 66 395
tp @e[type=item,tag=melon] 391 66 395

fill 414 64 355 432 64 395 air 0 destroy
scoreboard players tag @e[type=item] add reeds {Item:{id:minecraft:reeds}}
scoreboard players tag @e[type=item] add cactus {Item:{id:minecraft:cactus}}
tp @e[type=item,tag=reeds] 392 66 395
tp @e[type=item,tag=cactus] 393 66 395
clone 445 63 355 445 68 395 445 69 355 filtered move minecraft:cocoa 11
fill 445 63 355 445 68 395 minecraft:cocoa 3 keep
scoreboard players tag @e[type=item] add cocoa {Item:{id:minecraft:dye,Damage:3s}}
tp @e[type=item,tag=cocoa] 394 66 395
clone 433 63 355 444 63 395 433 64 355 filtered move minecraft:nether_wart 3
fill 433 63 355 444 63 395 minecraft:nether_wart 0 keep
scoreboard players tag @e[type=item] add nether_wart {Item:{id:minecraft:nether_wart}}
tp @e[type=item,tag=nether_wart] 395 66 395







================================      1.-1     Ĺ��    ================================


���׼�
summon armor_stand ~-1.8 ~-1.1 ~ {Pose:{Head:[0f,90f,0f]},Small:1,DisabledSlots:1,Invisible:1,NoGravity:1,ArmorItems:[{},{},{},{id:minecraft:lava_bucket}]}

summon armor_stand ~-1 ~-1 ~ {Invisible:1,Marker:1,NoGravity:1,Passengers:[
{id:minecraft:Villager,Age:-1000000,Invulnerable:true,NoAI:true,Silent:1,ActiveEffects:[{id:14,Duration:9999999,ShowParticles:false}],ArmorItems:[{},{},{},{id:minecraft:saddle}]}]}

����
give @p written_book 1 0 {
AttributeModifiers:[{Operation:0,UUIDLeast:1,UUIDMost:1,Amount:0.025,AttributeName:generic.movementSpeed,Name:Speed}],
title:"����ָ��",
author:"Stan",
pages:[
    1:"{text:'    ��ӭ����',"extra":[{text:'�Ϸ���԰',"color":"red"},{text:'������',color:black},{text:'�ڵ�λ��Ϊ',color:black},{text:'����㳡',color:dark_purple},{text:'����Ҳ��',color:black},{text:'���',color:black},{text:'�����',color:dark_purple},{text:'���㳡�����У�\n',color:black},{text:'1-����',color:dark_purple},{text:'���۸��ַ������Ʒ;',color:black},{text:'2-������',color:dark_purple},{text:'�չ�����ũ����Ʒ;',color:black},{text:'3-����',color:dark_purple},{text:'��������ȡ���;\n',color:black},{text:'4-����������',color:dark_purple},{text:';\n',color:black},{text:'5-������',color:dark_purple},{text:'ǰ���½��ĩ��;\n',color:black},{text:'6-��ʯ��',color:dark_purple},{text:'����ʯͷ;\n',color:black},{text:'7-�����ͨ',color:dark_purple},{text:'�뿪������;\n',color:black},{text:'������',color:black},{text:'ҩ��',color:dark_purple},{text:'��',color:black},{text:'��԰',color:dark_purple},{text:'��',color:black},{text:'Сѧ',color:dark_purple},{text:'��',color:black},{text:'��������',color:dark_purple},{text:'��',color:black},{text:'�˶���',color:dark_purple},{text:'��',color:black},{text:'�����',color:dark_purple},{text:'��',color:black},{text:'������',color:dark_purple},{text:'��',color:black},{text:'Ĺ��',color:dark_purple},{text:'�ȵء�\n',color:black}]}",
    2:"{text:'         ����ָ��\n\n',color:gold,"extra":[{text:'    �㳡����400���ڲ��ܽ� �����ƻ������ڳ��вɹ�һЩ��Ʒ�����뿪������ǰ��ɳʯ�������档�����Ѹ�����100Ԫ�����ʽ�����Դ�����������������Ʒ�������������25%%���Ҹ����������ÿ�ﵽ1000Ԫ��10000Ԫ��100000Ԫ��1000000Ԫ�����ʻ���Ӧ����5%%��',color:black}]}",
    3:"{text:'         ���ڲ���\n\n',"color":"red","extra":[{text:'    �������Ҫȡ����� ���һ���Ӧ�����ӣ��������Ҫ����Ͷ����Ӧ���ң��������Ҫ������Ʒ���뽫��Ʒ���ڿ�����ĵ�һ��',color:black}]}",
    4:"{text:'         ��Ϸ����\n\n',color:dark_purple,"extra":[{text:'    �����ܷ��ƻ����飺��\n    �����Ƿ������Ʒ����\n    �ܷ���Ȼ���ɹ����\n    ��Ϸ����̵��ٶȣ�10\n    �����Խ���ˢ������ˢ��������Ϊ���Ƕ�����Ч�ġ�',color:black}]}"]}
give @p written_book 1 0 {
title:"������",author:"һЩ���õ�����",
pages:[
1:"{text:'\n',color:gold,
"extra":[{text:'1-��丽��7��ʯͷ�ػ�\n\n',"color":"red","clickEvent":{action:'run_command',value:'/fill ~-7 0 ~-7 ~7 2 ~7 stone 0 keep'},
"extra":[{text:'2-ʰ��������Ʒ\n\n',color:blue,"clickEvent":{action:'run_command',value:'/tp @e[type=Item] @p'},
"extra":[{text:'3-������������\n\n',color:gold,"clickEvent":{action:'run_command',value:'/tp @p 0 5 5'},
"extra":[{text:'4-�������ϵ�\n\n',color:gold,"clickEvent":{action:'run_command',value:'/tp @p 63 20 -18'},
"extra":[{text:'5-�������˵�\n\n',color:gold,"clickEvent":{action:'run_command',value:'/tp @p -63 20 -18'},
"extra":[{text:'6-�������ֿ�\n\n',color:gold,"clickEvent":{action:'run_command',value:'/tp @p -63 5 44'}
}]}]}]}]}]}]}",
2:"{text:'\n',color:gold,
"extra":[{text:'1-��С��\n\n',"color":"red","clickEvent":{action:'run_command',value:'/clone ~-10 ~ ~-10 ~10 ~ ~10 ~-10 ~1 ~-10 filtered move minecraft:wheat 7'},
"extra":[{text:'2-����˸�\n\n',color:blue,"clickEvent":{action:'run_command',value:'/clone ~-10 ~ ~-10 ~10 ~ ~10 ~-10 ~1 ~-10 filtered move minecraft:beetroots 3'},
"extra":[{text:'3-��ֹ�����ƻ�����\n\n',color:blue,"clickEvent":{action:'run_command',value:'/gamerule mobGriefing false'},
"extra":[{text:'4-��������ƻ�����\n\n',color:blue,"clickEvent":{action:'run_command',value:'/gamerule mobGriefing true'}
}]}]}]}]}"]}

��������������������������������������������������������������������������������������������������������������������������������


give @p written_book{
title:"������",author:"һЩ���õ�����",
pages:["{\"text\":\"\\n\",\"color\":\"gold\",
\"extra\":[{\"text\":\"1-��丽��7��ʯͷ�ػ�\\n\\n\",\"color\":\"red\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/fill ~-7 0 ~-7 ~7 2 ~7 stone 0 keep\"}},{\"text\":\"1-��丽��7��ʯͷ�ػ�\\n\\n\",\"color\":\"red\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/fill ~-7 0 ~-7 ~7 2 ~7 stone 0 keep\"}}]}"]}







setblock ~ ~-1 ~ minecraft:chest 0 replace {Lock:"potion"}



summon falling_block ~ ~1 ~ {Block:command_block,Time:1,TileEntityData:{Command:/setblock ~1 ~ ~ wall_sign 5 replace {Text1:"{text:\\\"Click\\\","clickEvent":{action:\\\"run_command\\\",value:\\\"blockdata ~-1 ~ ~ {Command:/replaceitem entity @p slot.hotbar.8 minecraft:diamond 1 0 {display:{Name:\\\u00a7bCBL,Lore:[0:\\\u00a73CommandBlockLogic,1:\\\u00a7eis A,2:\\\u00a72Great Team]}},}\\\"}}"}}}
give @a chest 1 0 {Lock:cisco}
give @p chest {}
�����{
���{
ȫ�Ӹ�Ƶ
gamemode 0 @a[name=!Dinnerbone,r=55,rm=51,m=2]
gamemode 2 @a[name=!Dinnerbone,r=50,m=0]
tell @a[name=!Dinnerbone,r=55,rm=50,m=0] ��ӭ����Dinnerbone�ļң�����������ƻ���
tellraw @a[name=Dinnerbone,r=55,rm=50,m=0] Dinnerbone����ӭ�ؼң�
}
�ͷ�{
testfor @p {Inventory:[{Slot:80b,id:minecraft:leather_helmet,Damage:0s},{Slot:81b,id:minecraft:leather_chestplate,Damage:0s},{Slot:82b,id:minecraft:leather_leggings,Damage:0s},{Slot:83b,id:minecraft:leather_boots,Damage:0s}]}
replaceitem entity @p slot.hotbar.0 air
testfor @p {Inventory:[{Slot:0b,id:minecraft:leather_helmet,Damage:0s,Count:1b}]}
testforblock -200 56 11 dropper 0 {Items:[{Slot:0b,id:minecraft:leather_helmet,Damage:0s}]}
testforblock -200 56 11 dropper 0 {Items:[
{Slot:0b,id:minecraft:wheat,Damage:0s,Count:1b}
]}
testforblock -200 56 11 chest 0 {Items:[{Slot:0b,id:minecraft:leather_helmet,Damage:0s},{Slot:1b,id:minecraft:leather_chestplate,Damage:0s},{Slot:3b,id:minecraft:leather_leggings,Damage:0s},{Slot:4b,id:minecraft:leather_boots,Damage:0s}]}
setblock 458 86 -366 lava
setblock 458 86 -366 dispenser 3 replace {Items:[{id:383,Count:1b,Slot:0,Damage:54}]}
kill @e[type=Item]
kill @e[type=commandblock_minecart]

setblock ~ ~1 ~ minecraft:mob_spawner 0 replace {Entityid:minecraft:Cow,SpawnCount:2b,SpawnRange:6,RequiredPlayerRange:128,Delay:10,MinSpawnDelay:10,MaxSpawnDelay:100,MaxNearbyEntities:20,SpawnPotentials:[{Type:Pig,Weight:1}]}

==================================��������Ʒ��==================================
abandoned_mineshaft - ���������ҵ�������󳵡�
desert_pyramid - ɳĮ���ı�����������ӡ�
end_city_treasure - ĩ�س�������ӡ�
igloo_chest - ѩ�ݵ�����������ӡ�
jungle_temple - ��������������ӡ�
nether_bridge - �½�Ҫ��������ӡ�
simple_dungeon - ����������ӡ�
spawn_bonus_chest - ����򿪽�����ѡ��Ļ�������������ʱ�Ľ����䡣
stronghold_corridor - Ҫ��̨�׼�̳������ӡ�
stronghold_crossing - Ҫ��������������ӡ�
stronghold_library - Ҫ��ͼ���������ӡ�
village_blacksmith - ��ׯ�е�������������ӡ�

summon creeper ~ ~1 ~ {DeathLootTable:"minecraft:chests/simple_dungeon",DeathLootTableSeed:123l}
setblock ~ ~1 ~ minecraft:chest 0 replace {LootTable:"minecraft:chests/end_city_treasure"}
give @p spawn_egg 1 0 {EntityTag:{id:minecraft:silverfish,DeathLootTable:"minecraft:chests/end_city_treasure"}}

=====================================��ָ��=====================================
summon falling_block ~ ~1 ~ {Block:stone,Time:1,Passengers:[{id:minecraft:falling_block,Block:redstone_block,Time:1,Passengers:[{id:minecraft:falling_block,Block:activator_rail,Time:1,Passengers:[
{id:minecraft:commandblock_minecart,Command:setblock ~1 ~-3 ~1 minecraft:repeating_command_block 3},
{id:minecraft:commandblock_minecart,Command:say 1},
{id:minecraft:commandblock_minecart,Command:setblock ~ ~ ~1 command_block 0 replace {Command:fill ~ ~-2 ~-1 ~ ~ ~ air}},
{id:minecraft:commandblock_minecart,Command:setblock ~ ~-1 ~1 redstone_block},
{id:minecraft:commandblock_minecart,Command:kill @e[type=commandblock_minecart,r=1]}]}]}]}

===================================����רҵID===================================
0	��ɫ���۴���(ũ��)
1	��ɫ���۴���(ͼ�����Ա)
2	��ɫ���۴���(��ʦ)
3	��ɫΧȹ����(����)
4	��ɫΧȹ����(����)
5	��ɫ����(ɵ��)
entitydata @e {Proffesion:1,Rotation:[270f,0f]}

=====================================ħ��ID=====================================
0	����IV
1	���汣��IV
2	ˤ�䱣��IV
3	��ը����IV
4	�����ﱣ��IV
5	ˮ�º���III
6	ˮ���پ�
7	����III
8	�̽����III
9	��˪����II
10 	������
16	����V
17	����ɱ��V
18	��֫ɱ��V
19	����II
20	���渽��II
21	����III
22	��ɨ֮��III
32	Ч��V
33	��׼�ɼ�
34	�;�III
35	ʱ��III
48	����V
49	���II
50	��ʸ
51	����
61	��֮���III
62	����III
70	�����޲�
71 	��ʧ����

=====================================״̬Ч��ID=====================================

{id:minecraft:potion,Count:1b,tag:{CustomPotionColor:2970007,display:{Name:"ˮ��ҩˮ"},CustomPotionEffects:[{Id:13,Duration:9600}]}}
{id:minecraft:potion,Count:1b,tag:{CustomPotionColor:14719033,display:{Name:"����ҩˮ"},CustomPotionEffects:[{Id:12,Duration:9600}]}}
{id:minecraft:potion,Count:1b,tag:{CustomPotionColor:2039710,display:{Name:"ҹ��ҩˮ"},CustomPotionEffects:[{Id:16,Duration:9600}]}}
{id:minecraft:potion,Count:1b,tag:{CustomPotionColor:8225168,display:{Name:"����ҩˮ"},CustomPotionEffects:[{Id:14,Duration:9600}]}}
{id:minecraft:potion,Count:1b,tag:{CustomPotionColor:15934242,display:{Name:"����ҩˮ"},CustomPotionEffects:[{Id:23,Duration:20}]}}
{id:minecraft:potion,Count:1b,tag:{CustomPotionColor:13261736,display:{Name:"����ҩˮ"},CustomPotionEffects:[{Id:10,Amplifier:1,Duration:9600}]}}
{id:minecraft:potion,Count:1b,tag:{CustomPotionColor:8039619,display:{Name:"Ѹ��ҩˮ"},CustomPotionEffects:[{Id:1,Amplifier:1,Duration:9600}]}}
{id:minecraft:potion,Count:1b,tag:{CustomPotionColor:14073154,display:{Name:"����ҩˮ"},CustomPotionEffects:[{Id:3,Amplifier:1,Duration:9600}]}}
{id:minecraft:potion,Count:1b,tag:{CustomPotionColor:2226763,display:{Name:"��Ծҩˮ"},CustomPotionEffects:[{Id:8,Amplifier:1,Duration:9600}]}}
{id:minecraft:potion,Count:1b,tag:{CustomPotionColor:9511714,display:{Name:"����ҩˮ"},CustomPotionEffects:[{Id:5,Amplifier:2,Duration:9600}]}}
{id:minecraft:potion,Count:1b,tag:{CustomPotionColor:16262179,display:{Name:"����ҩˮ"},CustomPotionEffects:[{Id:6,Amplifier:2}]}}
{id:minecraft:potion,Count:1b,tag:{CustomPotionColor:9913401,display:{Name:"����ҩˮ"},CustomPotionEffects:[{Id:11,Amplifier:2,Duration:9600}]}}
{id:minecraft:potion,Count:1b,tag:{CustomPotionColor:14841103,display:{Name:"����ҩˮ"},CustomPotionEffects:[{Id:21,Amplifier:2,Duration:9600}]}}

{id:minecraft:potion,Count:1b,tag:{CustomPotionColor:5859967,display:{Name:"�ٻ�ҩˮ"},CustomPotionEffects:[{Id:2,Amplifier:2,Duration:9600}]}}
{id:minecraft:potion,Count:1b,tag:{CustomPotionColor:4800791,display:{Name:"�ھ�ƣ��ҩˮ"},CustomPotionEffects:[{Id:4,Amplifier:2,Duration:9600}]}}
{id:minecraft:potion,Count:1b,tag:{CustomPotionColor:4393481,display:{Name:"�˺�ҩˮ"},CustomPotionEffects:[{Id:7,Amplifier:2,Duration:9600}]}}
{id:minecraft:potion,Count:1b,tag:{CustomPotionColor:5512521,display:{Name:"��θҩˮ"},CustomPotionEffects:[{Id:9,Amplifier:2,Duration:9600}]}}
{id:minecraft:potion,Count:1b,tag:{CustomPotionColor:2039586,display:{Name:"ʧ��ҩˮ"},CustomPotionEffects:[{Id:15,Amplifier:2,Duration:9600}]}}
{id:minecraft:potion,Count:1b,tag:{CustomPotionColor:5731410,display:{Name:"����ҩˮ"},CustomPotionEffects:[{Id:17,Amplifier:2,Duration:9600}]}}
{id:minecraft:potion,Count:1b,tag:{CustomPotionColor:4672583,display:{Name:"����ҩˮ"},CustomPotionEffects:[{Id:18,Amplifier:2,Duration:9600}]}}
{id:minecraft:potion,Count:1b,tag:{CustomPotionColor:5083440,display:{Name:"�綾ҩˮ"},CustomPotionEffects:[{Id:19,Amplifier:2,Duration:9600}]}}
{id:minecraft:potion,Count:1b,tag:{CustomPotionColor:3484199,display:{Name:"����ҩˮ"},CustomPotionEffects:[{Id:20,Amplifier:2,Duration:9600}]}}
{id:minecraft:potion,Count:1b,tag:{CustomPotionColor:12425542,display:{Name:"����ҩˮ"},CustomPotionEffects:[{Id:27,Amplifier:2,Duration:9600}]}}
{id:minecraft:potion,Count:1b,tag:{CustomPotionColor:13565951,display:{Name:"Ʈ��ҩˮ"},CustomPotionEffects:[{Id:25,Amplifier:2,Duration:9600}]}}
{id:minecraft:potion,Count:1b,tag:{CustomPotionColor:9740385,display:{Name:"����ҩˮ"},CustomPotionEffects:[{Id:24,Amplifier:2,Duration:9600}]}}
{id:minecraft:potion,Count:1b,tag:{CustomPotionColor:9740385,display:{Name:"����ҩˮ"},CustomPotionEffects:[{Id:28,Amplifier:2,Duration:9600}]}}

===================================   ��ɫ   ===================================
Ⱦ������ֵ	Ⱦ������	��ɫ		��ɫ(RGB)	��ɫ��		��Ⱦɫ��Ʒ����ֵ
0			ī��		1644825		#191919		��ɫ		15
1			õ���		10040115	#993333		��ɫ		14
2			��������	6717235		#667F33		��ɫ		13
3			�ɿɶ�		6704179		#664C33		��ɫ		12
4			���ʯ		3361970		#334CB2		��ɫ		11
5			��ɫȾ��	8339378		#7F3FB2		��ɫ		10
6			��ɫȾ��	5013401		#4C7F99		��ɫ		9
7			����ɫȾ��	10066329	#999999		����ɫ		8
8			��ɫȾ��	5000268		#4C4C4C		��ɫ		7
9			�ۺ�ɫȾ��	15892389	#F27FA5		�ۺ�ɫ		6
10			����ɫȾ��	8375321		#7FCC19		����ɫ		5
11			�ѹ�Ӣ��	15066419	#E5E533		��ɫ		4
12			����ɫȾ��	6724056		#6699D8		����ɫ		3
13			Ʒ��ɫȾ��	11685080	#B24CD8		Ʒ��ɫ		2
14			��ɫȾ��	14188339	#D87F33		��ɫ		1
15			�Ƿ�		16777215	#FFFFFF		��ɫ		0

setblock ~ ~ ~ wall_sign 2 replace {
Text1:"{\"text\":\"��\",\"color\":\"black\",\"extra\":[{\"text\":\"����\",\"color\":\"dark_blue\"},{\"text\":\"����\",\"color\":\"dark_green\"},{\"text\":\"����\",\"color\":\"dark_aqua\"},{\"text\":\"���\",\"color\":\"dark_red\"}]}",
Text2:"{\"text\":\"����\",\"color\":\"dark_purple\",\"extra\":[{\"text\":\"��\",\"color\":\"gold\"},{\"text\":\"��\",\"color\":\"gray\"},{\"text\":\"���\",\"color\":\"dark_gray\"},{\"text\":\"��\",\"color\":\"blue\"}]}",
Text3:"{\"text\":\"��\",\"color\":\"green\",\"extra\":[{\"text\":\"ˮ��\",\"color\":\"aqua\"},{\"text\":\"��\",\"color\":\"red\"},{\"text\":\"����\",\"color\":\"light_purple\"},{\"text\":\"��\",\"color\":\"yellow\"}]}",
Text4:"{\"text\":\"��\",\"color\":\"white\"}"}

��0	��ɫ	black
��1	����ɫ	dark_blue
��2	����ɫ	dark_green
��3	����ɫ	dark_aqua
��4	���ɫ	dark_red
��5	��ɫ	dark_purple
��6	��ɫ	gold
��7	��ɫ	gray
��8	���ɫ	dark_gray
��9	��ɫ	blue
��a	��ɫ	green
��b	����ɫ	aqua
��c	��ɫ	red
��d	��ɫ	light_purple
��e	��ɫ	yellow
��f	��ɫ	white
��k	����ַ�
��l	����
��m	ɾ����
��n	�»���
��o	б��
��r	����������ʽ

==================================ʱ��Ч���ӳ�===================================
��ʯ��ú���̱�ʯ���½�ʯӢ�����ʯ(6)	(F+1)/2+1/(F+2)
���ܲ�������							(F+5)/2
��ʯ 									(F+9)/2
������									(F+6)/2


summon fireworks_rocket ~ ~2 ~ {LifeTime:30,FireworksItem:{id:minecraft:fireworks,Count:1b,tag:{Fireworks:{Flight:3b,Explosions:[{Flicker:1,Trail:1,Type:1,Colors:[11743532,2437522,3887386,14602026,14188952,8073150],FadeColors:[15435844,6719955,12801229,2651799,4312372,5320730,3887386,15790320]}]}}}}



Text2:\"{\\\"text\\\":\\\"����15ɫ�̻����\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"give @p[score_CK_min=50] minecraft:fireworks 1 0 {Fireworks:{Flight:3b,Explosions:[{Flicker:1b,Trail:1b,Type:1b,Colors:[],FadeColors:[,]}]}}\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text3:\"{\\\"text\\\":\\\"$50\\\",\\\"clickEvent\\\":{\\\"action\\\":\\\"run_command\\\",\\\"value\\\":\\\"scoreboard players remove @p[score_CK_min=50] CK 50\\\"},\\\"color\\\":\\\"dark_blue\\\"}\",
Text4:\"{\\\"text\\\":\\\"\\\"}\"}"},




��ڷ��̻�
summon falling_block ~ ~1 ~ {Block:stone,Time:1,Passengers:[{id:falling_block,Block:redstone_block,Time:1,Passengers:[{id:falling_block,Block:activator_rail,Time:1,Passengers:[{id:commandblock_minecart,Command:execute @a ~5 ~ ~ summon fireworks_rocket ~ ~ ~ {LifeTime:30,FireworksItem:{id:minecraft:fireworks,Count:1b,tag:{Fireworks:{Explosions:[{Flicker:1,Trail:1,Type:1,Colors:[16711680,255],FadeColors:[16711935]}]}}}}},{id:commandblock_minecart,Command:execute @a ~-5 ~ ~ summon fireworks_rocket ~ ~ ~ {LifeTime:30,FireworksItem:{id:minecraft:fireworks,Count:1b,tag:{Fireworks:{Explosions:[{Flicker:1,Trail:1,Type:1,Colors:[16711680,255],FadeColors:[16711935]}]}}}}},{id:commandblock_minecart,Command:execute @a ~ ~ ~5 summon fireworks_rocket ~ ~ ~ {LifeTime:30,FireworksItem:{id:minecraft:fireworks,Count:1b,tag:{Fireworks:{Explosions:[{Flicker:1,Trail:1,Type:1,Colors:[16711680,255],FadeColors:[16711935]}]}}}}},{id:commandblock_minecart,Command:execute @a ~ ~ ~-5 summon fireworks_rocket ~ ~ ~ {LifeTime:30,FireworksItem:{id:minecraft:fireworks,Count:1b,tag:{Fireworks:{Explosions:[{Flicker:1,Trail:1,Type:1,Colors:[16711680,255],FadeColors:[16711935]}]}}}}},{id:commandblock_minecart,Command:setblock ~ ~ ~1 command_block 0 replace {Command:fill ~ ~-2 ~-1 ~ ~ ~ air}},{id:commandblock_minecart,Command:setblock ~ ~-1 ~1 redstone_block},{id:commandblock_minecart,Command:kill @e[type=commandblock_minecart,r=5]}]}]}]}

summon falling_block ~ ~1 ~ {Block:stone,Time:1,Passengers:[{id:minecraft:falling_block,Block:redstone_block,Time:1,Passengers:[{id:minecraft:falling_block,Block:activator_rail,Time:1,Passengers:[
{id:minecraft:commandblock_minecart,Command:execute @a ~5 ~ ~ summon FireworksRocketEntity ~ ~ ~ {LifeTime:30,FireworksItem:{id:minecraft:fireworks,Count:1b,tag:{Fireworks:{Explosions:[{Flicker:1,Trail:1,Type:1,Colors:[16711680,255],FadeColors:[16711935]}]}}}}},
{id:minecraft:commandblock_minecart,Command:execute @a ~-5 ~ ~ summon FireworksRocketEntity ~ ~ ~ {LifeTime:30,FireworksItem:{id:minecraft:fireworks,Count:1b,tag:{Fireworks:{Explosions:[{Flicker:1,Trail:1,Type:1,Colors:[16711680,255],FadeColors:[16711935]}]}}}}},
{id:minecraft:commandblock_minecart,Command:execute @a ~ ~ ~5 summon FireworksRocketEntity ~ ~ ~ {LifeTime:30,FireworksItem:{id:minecraft:fireworks,Count:1b,tag:{Fireworks:{Explosions:[{Flicker:1,Trail:1,Type:1,Colors:[16711680,255],FadeColors:[16711935]}]}}}}},
{id:minecraft:commandblock_minecart,Command:execute @a ~ ~ ~-5 summon FireworksRocketEntity ~ ~ ~ {LifeTime:30,FireworksItem:{id:minecraft:fireworks,Count:1b,tag:{Fireworks:{Explosions:[{Flicker:1,Trail:1,Type:1,Colors:[16711680,255],FadeColors:[16711935]}]}}}}},
{id:minecraft:commandblock_minecart,Command:setblock ~ ~ ~1 command_block 0 replace {Command:fill ~ ~-2 ~-1 ~ ~ ~ air}},
{id:minecraft:commandblock_minecart,Command:setblock ~ ~-1 ~1 redstone_block},
{id:minecraft:commandblock_minecart,Command:kill @e[type=commandblock_minecart,r=5]}]}]}]}










give @p written_book 1 0 {
title:"������",author:"һЩ���õ�����",AttributeModifiers:[{Operation:1,UUIDLeast:100,UUIDMost:999,Amount:3,AttributeName:"generic.movementSpeed",Name:"Speed"}],HideFlags:2,
pages:[
1:"{'text':'\n','color':'gold','extra':[
{'text':'ƽɽ ','color':'dark_blue','clickEvent':{action:'run_command',value:'/fill ~-15 ~ ~-15 ~15 ~30 ~15 air'}},
{'text':'���� ','color':'dark_blue','clickEvent':{action:'run_command',value:'/fill ~-5 ~-1 ~-5 ~5 ~-30 ~5 grass'}},
{'text':'��ʯ ','color':'dark_blue','clickEvent':{action:'run_command',value:'/fill ~-15 ~-1 ~-15 ~15 ~-1 ~15 grass 0 replace stone'}},
{'text':'��ɳ\n','color':'dark_blue','clickEvent':{action:'run_command',value:'/fill ~-15 ~-1 ~-15 ~15 ~-1 ~15 sand 0 replace sandstone'}},

{'text':'����� ','color':'red','clickEvent':{action:'run_command',value:'/fill ~ 62 ~ ~30 62 ~ sea_lantern'}},
{'text':'������Ҷ\n','color':'red','clickEvent':{action:'run_command',value:'/fill ~ 63 ~ ~30 63 ~ leaves 6'}},
{'text':'����̨�� ','color':'red','clickEvent':{action:'run_command',value:'/fill ~ 63 ~ ~30 63 ~ purpur_slab'}},
{'text':'����ʯ·\n\n','color':'red','clickEvent':{action:'run_command',value:'/fill ~ 62 ~-2 ~30 62 ~2 double_stone_slab'}},

{'text':'������� ','color':'red','clickEvent':{action:'run_command',value:'/fill ~ 62 ~ ~-30 62 ~ sea_lantern'}},
{'text':'��������Ҷ\n','color':'red','clickEvent':{action:'run_command',value:'/fill ~ 63 ~ ~-30 63 ~ leaves 6'}},
{'text':'������̨�� ','color':'red','clickEvent':{action:'run_command',value:'/fill ~ 63 ~ ~-30 63 ~ purpur_slab'}},
{'text':'������ʯ·\n\n','color':'red','clickEvent':{action:'run_command',value:'/fill ~ 62 ~-2 ~-30 62 ~2 double_stone_slab'}},

{'text':'������� ','color':'red','clickEvent':{action:'run_command',value:'/fill ~ 62 ~ ~ 62 ~30 sea_lantern'}},
{'text':'��������Ҷ\n','color':'red','clickEvent':{action:'run_command',value:'/fill ~ 63 ~ ~ 63 ~30 leaves 6'}},
{'text':'������̨�� ','color':'red','clickEvent':{action:'run_command',value:'/fill ~ 63 ~ ~ 63 ~30 purpur_slab'}},
{'text':'������ʯ·\n\n','color':'red','clickEvent':{action:'run_command',value:'/fill ~-2 62 ~ ~2 62 ~30 double_stone_slab'}},

{'text':'����� ','color':'red','clickEvent':{action:'run_command',value:'/fill ~ 62 ~ ~ 62 ~-30 sea_lantern'}},
{'text':'������Ҷ\n','color':'red','clickEvent':{action:'run_command',value:'/fill ~ 63 ~ ~ 63 ~-30 leaves 6'}},
{'text':'����̨�� ','color':'red','clickEvent':{action:'run_command',value:'/fill ~ 63 ~ ~ 63 ~-30 purpur_slab'}},
{'text':'����ʯ·\n\n','color':'red','clickEvent':{action:'run_command',value:'/fill ~-2 62 ~ ~2 62 ~-30 double_stone_slab'}}
]}",
2:"{'text':'\n','color':'gold','extra':[
{'text':'ǰ���㳡\n','color':'����ɫ','clickEvent':{action:'run_command',value:'/tp 175 68 212'}},
{'text':'ǰ���г�\n','color':'����ɫ','clickEvent':{action:'run_command',value:'/tp 250 65 310'}}
]}",
3:"{\"text\":\"����ɫ\",\"color\":\"dark_blue\",\"extra\":[{\"text\":\"����ɫ\",\"color\":\"dark_green\"},{\"text\":\"����ɫ\",\"color\":\"dark_aqua\"},{\"text\":\"���ɫ\",\"color\":\"dark_red\"},{\"text\":\"����ɫ\",\"color\":\"dark_purple\"},{\"text\":\"��ɫ\",\"color\":\"gold\"},{\"text\":\"��ɫ\",\"color\":\"gray\"},{\"text\":\"���ɫ\",\"color\":\"dark_gray\"},{\"text\":\"��ɫ\",\"color\":\"blue\"},{\"text\":\"��ɫ\",\"color\":\"green\"}
,{\"text\":\"ˮ��ɫ\",\"color\":\"aqua\"},{\"text\":\"��ɫ\",\"color\":\"red\"},{\"text\":\"����ɫ\",\"color\":\"light_purple\"},{\"text\":\"��ɫ\",\"color\":\"yellow\"}]}"
]}


2 2s 2b 2f ~-2 ~.2 ~2 ~0.2




give @p written_book 1 0 {
title:"������",author:"һЩ���õ�����",
pages:[
1:"{'text':'\n','color':'gold','extra':[
{'text':'ƽɽ ','color':'dark_blue','clickEvent':{action:'run_command',value:'/fill ~-15 ~ ~-15 ~15 ~30 ~15 air'}},
{'text':'���� ','color':'dark_blue','clickEvent':{action:'run_command',value:'/fill ~-5 ~-1 ~-5 ~5 ~-30 ~5 grass'}},
{'text':'��ʯ ','color':'dark_blue','clickEvent':{action:'run_command',value:'/fill ~-15 ~-1 ~-15 ~15 ~-1 ~15 grass 0 replace stone'}},
{'text':'��ɳ\n','color':'dark_blue','clickEvent':{action:'run_command',value:'/fill ~-15 ~-1 ~-15 ~15 ~-1 ~15 sand 0 replace sandstone'}},

{'text':'����� ','color':'red','clickEvent':{action:'run_command',value:'/fill ~ 62 ~ ~30 62 ~ sea_lantern'}},
{'text':'������Ҷ\n','color':'red','clickEvent':{action:'run_command',value:'/fill ~ 63 ~ ~30 63 ~ leaves 6'}},
{'text':'����̨�� ','color':'red','clickEvent':{action:'run_command',value:'/fill ~ 63 ~ ~30 63 ~ purpur_slab'}},
{'text':'����ʯ·\n\n','color':'red','clickEvent':{action:'run_command',value:'/fill ~ 62 ~-2 ~30 62 ~2 double_stone_slab'}},

{'text':'������� ','color':'red','clickEvent':{action:'run_command',value:'/fill ~ 62 ~ ~-30 62 ~ sea_lantern'}},
{'text':'��������Ҷ\n','color':'red','clickEvent':{action:'run_command',value:'/fill ~ 63 ~ ~-30 63 ~ leaves 6'}},
{'text':'������̨�� ','color':'red','clickEvent':{action:'run_command',value:'/fill ~ 63 ~ ~-30 63 ~ purpur_slab'}},
{'text':'������ʯ·\n\n','color':'red','clickEvent':{action:'run_command',value:'/fill ~ 62 ~-2 ~-30 62 ~2 double_stone_slab'}},

{'text':'������� ','color':'red','clickEvent':{action:'run_command',value:'/fill ~ 62 ~ ~ 62 ~30 sea_lantern'}},
{'text':'��������Ҷ\n','color':'red','clickEvent':{action:'run_command',value:'/fill ~ 63 ~ ~ 63 ~30 leaves 6'}},
{'text':'������̨�� ','color':'red','clickEvent':{action:'run_command',value:'/fill ~ 63 ~ ~ 63 ~30 purpur_slab'}},
{'text':'������ʯ·\n\n','color':'red','clickEvent':{action:'run_command',value:'/fill ~-2 62 ~ ~2 62 ~30 double_stone_slab'}},

{'text':'����� ','color':'red','clickEvent':{action:'run_command',value:'/fill ~ 62 ~ ~ 62 ~-30 sea_lantern'}},
{'text':'������Ҷ\n','color':'red','clickEvent':{action:'run_command',value:'/fill ~ 63 ~ ~ 63 ~-30 leaves 6'}},
{'text':'����̨�� ','color':'red','clickEvent':{action:'run_command',value:'/fill ~ 63 ~ ~ 63 ~-30 purpur_slab'}},
{'text':'����ʯ·\n\n','color':'red','clickEvent':{action:'run_command',value:'/fill ~-2 62 ~ ~2 62 ~-30 double_stone_slab'}}
]}",
2:"{'text':'\n','color':'gold','extra':[
{'text':'ǰ���㳡\n','color':'����ɫ','clickEvent':{action:'run_command',value:'/tp 175 68 212'}},
{'text':'ǰ���г�\n','color':'����ɫ','clickEvent':{action:'run_command',value:'/tp 250 65 310'}}
]}",
3:"{\"text\":\"����ɫ\",\"color\":\"dark_blue\",\"extra\":[{\"text\":\"����ɫ\",\"color\":\"dark_green\"},{\"text\":\"����ɫ\",\"color\":\"dark_aqua\"},{\"text\":\"���ɫ\",\"color\":\"dark_red\"},{\"text\":\"����ɫ\",\"color\":\"dark_purple\"},{\"text\":\"��ɫ\",\"color\":\"gold\"},{\"text\":\"��ɫ\",\"color\":\"gray\"},{\"text\":\"���ɫ\",\"color\":\"dark_gray\"},{\"text\":\"��ɫ\",\"color\":\"blue\"},{\"text\":\"��ɫ\",\"color\":\"green\"}
,{\"text\":\"ˮ��ɫ\",\"color\":\"aqua\"},{\"text\":\"��ɫ\",\"color\":\"red\"},{\"text\":\"����ɫ\",\"color\":\"light_purple\"},{\"text\":\"��ɫ\",\"color\":\"yellow\"}]}"
]}


















give @p minecraft:spawn_egg 1 0 {EntityTag:{id:minecraft:horse,display:{Name:["���� ��ʬ������"]},DeathLootTable:"user:horsezombie"}}






scoreboard players tag @e[type=item] add horsezombie {Item:{tag:{drop:"hz"}}}
execute @e[tag=horsezombie] ~ ~ ~ summon zombie ~ ~ ~
execute @e[tag=horsezombie] ~ ~ ~ summon zombie ~ ~ ~
execute @e[tag=horsezombie] ~ ~ ~ summon zombie ~ ~ ~
execute @e[tag=horsezombie] ~ ~ ~ summon zombie ~ ~ ~
kill @e[tag=horsezombie]
entitydata @e[tag=horsezombie] {Item:{tag:{drop:""}}}



setblock ~ ~ ~ wall_sign 4 replace {
Text1:"{\"text\":\"��1��\",\"color\":\"dark_blue\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/say 1\"}}",
Text2:"{\"text\":\"��2��\",\"color\":\"dark_red\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/say 2\"}}",
Text3:"{\"text\":\"��3��\",\"color\":\"blue\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/say 3\"}}",
Text4:"{\"text\":\"��4��\",\"color\":\"red\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/say 4\"}}"
}


give @p written_book{
title:"������",author:"���ߵ�����",
pages:[
"{'text':'һ���������\\n','color':'gold','extra':[
{'text':'������2ҳ\\n','color':'dark_blue','clickEvent':{action:'change_page',value:'2'}},
{'text':'������3ҳ\\n','color':'dark_blue','clickEvent':{action:'change_page',value:'3'}},
{'text':'������4ҳ\\n','color':'dark_blue','clickEvent':{action:'change_page',value:'4'}}
]}",
"{'text':'\\n','color':'gold','extra':[
{'text':'˵1\\n','color':'dark_blue','clickEvent':{action:'run_command',value:'/say 1'}},
{'text':'˵2','color':'dark_blue','clickEvent':{action:'run_command',value:'/say 2'}}
]}",
"{'text':'\\n','color':'gold','extra':[
{'text':'ǰ��(0,70,0)\\n','color':'����ɫ','clickEvent':{action:'run_command',value:'/tp 0 70 0'}},
{'text':'��ɱ\\n','color':'����ɫ','clickEvent':{action:'run_command',value:'/kill'}}
]}",
"{'text':'����ɫ','color':'dark_blue','extra':[{'text':'����ɫ','color':'dark_green'},{'text':'����ɫ','color':'dark_aqua'},{'text':'���ɫ','color':'dark_red'},{'text':'����ɫ','color':'dark_purple'},{'text':'��ɫ','color':'gold'},{'text':'��ɫ','color':'gray'},{'text':'���ɫ','color':'dark_gray'},{'text':'��ɫ','color':'blue'},{'text':'��ɫ','color':'green'}
,{'text':'ˮ��ɫ','color':'aqua'},{'text':'��ɫ','color':'red'},{'text':'����ɫ','color':'light_purple'},{'text':'��ɫ','color':'yellow'}]}"
]}












253 12 -270	 zombie
244 17 -367 spider




desert
1127 126

��ׯ
53 2
69 -16
54 35

Spider
916 35 246
873 42 240
877 36 179

885 112








give @p minecraft:paper 1 0 {display:{Name:"UHC Run - 1v1",Lore:["","Modo: �� Fantasy ��","Estado: Cargando��","Jugadores: 0/18","","iClick para entrar!"]}}



��r��6UHC Run ��7- ��51v1��r








{EntityTag:{id:minecraft:vex,Health:1,Tags:[\"bird\"],Silent:1,LifeTicks:1},display:{Name:\"��r���� ��\"}}"},"text":"������"}







give @p minecraft:leather_leggings 1 0 {AttributeModifiers:[{Operation:0,UUIDLeast:3001,UUIDMost:3001,Amount:8,AttributeName:"generic.armor",Name:"Armor"},{Operation:0,UUIDLeast:4001,UUIDMost:4001,Amount:2,AttributeName:"generic.armorToughness",Name:"Tough"}],ench:[{id:1,lvl:1},{id:34,lvl:1},{id:70,lvl:1}],display:{Lore:["+2 ��������"]},HideFlags:2}



give @p minecraft:leather_leggings 1 0 {AttributeModifiers:[{Operation:0,UUIDLeast:3001,UUIDMost:3001,Amount:8,AttributeName:"generic.armor",Name:"Armor"}]}




give @p minecraft:leather_leggings 1 0 {AttributeModifiers:[{Operation:0,UUIDLeast:4001,UUIDMost:4001,Amount:2,AttributeName:"generic.armorToughness",Name:"Tough"}],ench:[{id:1,lvl:1},{id:34,lvl:1},{id:70,lvl:1}],display:{Lore:["+2 ��������"]},HideFlags:2}



give @p minecraft:leather_chestplate 1 -1 {AttributeModifiers:[{Operation:0,UUIDLeast:2049170248,UUIDMost:2049170248,Amount:8,AttributeName:"generic.armor",Name:"Armor",Slot:chest},{Operation:0,UUIDLeast:1345884052,UUIDMost:1345884052,Amount:2,AttributeName:"generic.armorToughness",Name:"ArmorToughness",Slot:chest}],Unbreakable:1}


give @p minecraft:leather_chestplate 1 -1 {AttributeModifiers:[{Operation:0,UUIDLeast:2049170248,UUIDMost:2049170248,Amount:8,AttributeName:generic.armor,Name:Armor,Slot:chest},{Operation:0,UUIDLeast:1345884052,UUIDMost:1345884052,Amount:2,AttributeName:generic.armorToughness,Name:ArmorToughness,Slot:chest}],Unbreakable:1}



summon falling_block ~ ~2 ~ {Time:1,Block:"minecraft:redstone_block"}








scoreboard players add @p test 1
scoreboard players remove @p[score_test_min=30] test 30
testfor @e[score_test_min=29]





/give @p skull 1 3 {display:{Name:"Dog"},SkullOwner:{Id:"fa5d3210-6e39-47ca-adb4-a3b2f0f966d9",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNjlkMWQzMTEzZWM0M2FjMjk2MWRkNTlmMjgxNzVmYjQ3MTg4NzNjNmM0NDhkZmNhODcyMjMxN2Q2NyJ9fX0="}]}},AttributeModifiers:[{Slot:"head",Operation:1,UUIDLeast:1009,UUIDMost:1009,Amount:0.1,AttributeName:"generic.movementSpeed",Name:"Speed"}],ench:[{id:71,lvl:1}],display:{Name:"��ͷ",Lore:["��ʱ������"]}}


/entitydata @e[r=1] {display:{Name:"Dog"},AttributeModifiers:[{Slot:"head",Operation:1,UUIDLeast:1009,UUIDMost:1009,Amount:0.1,AttributeName:"generic.movementSpeed",Name:"Speed"}],ench:[{id:71,lvl:1}],display:{Name:"��ͷ",Lore:["��ʱ������"]}}


,HideFlags:2}



tellraw maifueller {"text":"ץ�����ˡ���","color":"gold"}



tellraw @p {"text":"\�����С��������ڴ�","color":"gold"}





/give @p skull 1 3 {display:{Name:"Dog"},SkullOwner:{Id:"fa5d3210-6e39-47ca-adb4-a3b2f0f966d9",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNjlkMWQzMTEzZWM0M2FjMjk2MWRkNTlmMjgxNzVmYjQ3MTg4NzNjNmM0NDhkZmNhODcyMjMxN2Q2NyJ9fX0="}]}},AttributeModifiers:[{Slot:"head",Operation:1,UUIDLeast:1009,UUIDMost:1009,Amount:0.1,AttributeName:"generic.movementSpeed",Name:"Speed"}],ench:[{id:71,lvl:1}],display:{Name:"��ͷ",Lore:["��ʱ������"]}}





tellraw ruhuasiyu {"text":"����˴��ɻ�ñ���һ������","color":"gold","clickEvent":{"action":"run_command","value":"/give ruhuasiyu chest 1 0"}}








/scoreboard players test #Byushu kills 0 0



/scoreboard players set #ten kills 10
/scoreboard players operation #Byushu kills = ���� kills
/scoreboard players operation #Byushu kills %= #ten kills
/scoreboard players operation #Bshang kills = ���� kills
/scoreboard players operation #Bshang kills -= #Byushu kills
/scoreboard players operation #Bshang kills /= #ten kills



/setblock -178 93 -26 redstone_block




setblock ~ ~ ~ wall_sign 5 replace {Text1:"{\"text\":\"\"}",Text2:"{\"text\":\"�������´ǡ�\",\"color\":\"dark_blue\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"/tellraw @a {\\\"text\\\":\\\"[world] <\u00a76������������ͷ��>-<\u00a7czzzz_ustc> ��ӭ������μ�����USTC-Minecraft����Ŀ��pvp���\\\"}\"}}",
Text3:"{\"text\":\"\",\"color\":\"black\"}",Text4:"{\"text\":\"\"}"}




tellraw @a [{"text":"��ϲ","color":"gold"},{"selector":"@p[r=2,c=-1]","color":"aqua"},{"text":"����������Ĥ��ʦ����ý���!","color":"gold"}]
tellraw @a [{"text":"��ϲ","color":"gold"},{"selector":"@p[r=2,c=-1]","color":"aqua"},{"text":"��������м�Ĥ��ʦ����ý���!","color":"gold"}]







summon villager 127 65.5 -173 {NoGravity:1,NoAI:1,Invulnerable:1,ActiveEffects:[{Id:14,ShowParticles:0b,Duration:9999999}],ArmorItems:[{},{},{},{id:"minecraft:dragon_egg",Count:1b,Damage:0s}]}

summon villager ~ ~ ~ {ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:{Id:"a60c9655-b7eb-47ca-91c0-7851e4bd8274",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzhhYzE5OGI4ODUwMWM5NDhhOTMzZDUyYjExMzNlM2Y2NTAyY2M1ZmY1YWNlM2Q1YzYwYWNlYjU0NDk3NzZkIn19fQ=="}]}}}}]}


give ruhuasiyu minecraft:tipped_arrow 64 0 {CustomPotionEffects:[
{Id:2,Amplifier:2,Duration:8000},
{Id:4,Amplifier:2,Duration:8000},
{Id:7,Amplifier:2,Duration:8000},
{Id:19,Amplifier:2,Duration:8000}]
}

/give @p skull 1 3 {display:{Name:"Santa Claus"},SkullOwner:{Id:"a60c9655-b7eb-47ca-91c0-7851e4bd8274",Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzhhYzE5OGI4ODUwMWM5NDhhOTMzZDUyYjExMzNlM2Y2NTAyY2M1ZmY1YWNlM2Q1YzYwYWNlYjU0NDk3NzZkIn19fQ=="}]}}}

give ruhuasiyu minecraft:tipped_arrow 64 0 {CustomPotionEffects:[
{Id:6,Amplifier:2,Duration:8000},
{Id:10,Amplifier:2,Duration:8000}]
}


give ruhuasiyu minecraft:fireworks 1 0 {Fireworks:{Flight:2b,Explosions:[{Flicker:1b,Trail:1b,Type:1b,Colors:[11743532,2437522,3887386,14602026,14188952,8073150],FadeColors:[15435844,6719955,12801229,2651799,4312372,5320730,3887386,15790320,]}]}}


give ruhuasiyu minecraft:fireworks 1 0 {Fireworks:{Flight:4b,Explosions:[{Flicker:1b,Trail:1b,Type:1b,Colors:[11743532,2437522,3887386,14602026,14188952,8073150],FadeColors:[15435844,6719955,12801229,2651799,4312372,5320730,3887386,15790320,]}]}}



testfor @a[x=115,y=63,z=208,dx=30,dy=15,dz=20]
tellraw @p {"text":"��ӭ����ruhuasiyu�ļ�!","color":"yellow"}




summon villager ~ ~ ~ {NoGravity:1,NoAI:1,ArmorItems:[{},{},{},{id:"minecraft:dark_oak_fence_gate",Count:1b}]}



entitydata @e[r=2] {OwnerUUID:1b26ddd5-1e2d-31ca-b17f-a511f522bf75}

give ruhuasiyu minecraft:spawn_egg 1 0 {display:{Name:"����̽����"},EntityTag:{id:minecraft:mooshroom,Tags:["findore2"],NoAI:1,Silent:1,ActiveEffects:[{Id:14,Duration:9,ShowParticles:0b}],DeathLootTable:minecraft:empty},ench:[{id:999}]}





summon minecraft:evocation_illager ~ ~ ~ {NoAI:true,SpellTicks:80}



execute @e[r=5] ~ ~ ~ tp @e[r=1] ~ ~ ~0.1 ~0.1 ~ ~



setblock 322 66 -228 standing_sign 0 replace {Text1:"{\"text\":\"Intel Pentyum\",\"color\":\"dark_blue\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tellraw @p {\\\"text\\\":\\\"��,�ȵƵȵ�\\\",\\\"color\\\":\\\"gold\\\"}\"}}",Text2:"{\"text\":\"inside\",\"color\":\"dark_blue\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"\"}}",Text3:"{\"text\":\"\",\"color\":\"dark_blue\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"\"}}",Text4:"{\"text\":\"\"}"}




\\\u00a79
setblock ~ ~ ~1 wall_sign 3 replace {Text1:"{\"text\":\"aaa\",\"color\":\"dark_blue\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"blockdata ~ ~ ~-1 {auto:0b,Command:give ruhuasiyu minecraft:potion 1 0 {CustomPotionColor:5083440,display:{Name:\\\"\u00a7r�綾ҩˮ\\\",Lore:[\\\"\u00a7c�ж� (8:00)\\\"]},CustomPotionEffects:[{Id:21,Duration:9600}],HideFlags:63}}\"}}",Text2:"{\"text\":\"aaa\",\"color\":\"dark_blue\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"blockdata ~ ~ ~-1 {auto:1b}\"}}",Text3:"{\"text\":\"aaa\",\"color\":\"dark_blue\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"blockdata ~ ~ ~-1 {auto:0b}\"}}",Text4:"{\"text\":\"\"}"}



setblock ~ ~ ~1 wall_sign 3 replace {Text1:"{\"text\":\"\",\"color\":\"dark_blue\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"say 1\"}}",
Text2:"{\"text\":\"\"}",Text3:"{\"text\":\"\"}",Text4:"{\"text\":\"\"}"}





give @p written_book{
title:"����ָ��",
author:"Stan",
pages:[
"{\"text\":\"\\ufb00\\ufb01\\ufb02\\ufb03\\ufb04\\ufb05\\ufb06\\ufb07\\ufb08\",\"color\":\"white\"}"]}