#execute at @s run tag @a[tag=game,tag=!dead,distance=..5] add temp
#ändern zu Red, nur für testen
#execute as @a[tag=temp] run scoreboard players set @s push_levitation_timer -4
#execute as @a[tag=temp] run effect give @s minecraft:levitation 1 30 true
#tag @a remove temp
execute at @s as @a[tag=game,tag=!dead,distance=..5] run function rauch:game/mechanics/vertical_launch/launch {power:90}


execute at @s run summon slime ~ ~-2 ~ {Invulnerable:1b,Silent:1b,NoAI:1b,Size:18,Tags:["zar_rok","setup"]}
execute at @s run summon slime ~ ~-2 ~ {Invulnerable:1b,Silent:1b,NoAI:1b,Size:18,Tags:["zar_rok","setup"]}
execute at @s run summon slime ~ ~-2 ~ {Invulnerable:1b,Silent:1b,NoAI:1b,Size:18,Tags:["zar_rok","setup"]}
execute at @s run summon slime ~ ~-2 ~ {Invulnerable:1b,Silent:1b,NoAI:1b,Size:18,Tags:["zar_rok","setup"]}
execute at @s run summon slime ~ ~-2 ~ {Invulnerable:1b,Silent:1b,NoAI:1b,Size:18,Tags:["zar_rok","setup"]}

scoreboard players operation @e[type=slime,tag=setup,tag=zar_rok] pnum = @s pnum
tag @e[type=slime,tag=setup,tag=zar_rok] remove setup
