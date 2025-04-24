execute as @s[scores={push_levitation_timer=-1}] run effect clear @s minecraft:levitation
execute as @s[scores={raucher_spider_despawn_timer=-179}] run function rauch:game/ability/raucher/f/activate
execute as @s[scores={raucher_spider_despawn_timer=-1}] run function rauch:game/ability/raucher/f/kill_spiders
