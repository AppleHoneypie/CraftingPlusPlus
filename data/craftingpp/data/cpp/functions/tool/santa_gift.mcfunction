execute unless entity @s[distance=..6] run function cpp:use_carrot_on_a_stick/tool/santa_gift_done
execute if entity @s[distance=..6] unless block ^ ^ ^ #cpp:fluids positioned ^ ^ ^-0.01 anchored feet run function cpp:use_carrot_on_a_stick/tool/santa_gift_done
execute if entity @s[distance=..6] if block ^ ^ ^ #cpp:fluids positioned ^ ^ ^0.005 anchored feet run function cpp:use_carrot_on_a_stick/tool/santa_gift
