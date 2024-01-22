execute as @s[scores={push_levitation_timer=-1}] run effect clear @s minecraft:levitation
execute as @s[scores={raucher_spider_despawn_timer=-170}] run function rauch:game/ability/raucher/r/tp_to_summoner
execute as @s[scores={raucher_spider_despawn_timer=-1}] run function rauch:game/ability/raucher/r/kill_spiders
