execute at @s run tag @a[distance=..5] add temp
#ändern zu Red, nur für testen
execute as @a[tag=temp] run scoreboard players set @s push_levitation_timer -4
execute as @a[tag=temp] run effect give @s minecraft:levitation 1 20 true
tag @a remove temp


execute at @s run summon slime ~ ~ ~ {Invulnerable:1b,Silent:1b,NoAI:1b,Size:18,Tags:["rauch_rok","setup"]}
execute at @s run summon slime ~ ~ ~ {Invulnerable:1b,Silent:1b,NoAI:1b,Size:18,Tags:["rauch_rok","setup"]}
execute at @s run summon slime ~ ~ ~ {Invulnerable:1b,Silent:1b,NoAI:1b,Size:18,Tags:["rauch_rok","setup"]}
execute at @s run summon slime ~ ~ ~ {Invulnerable:1b,Silent:1b,NoAI:1b,Size:18,Tags:["rauch_rok","setup"]}
execute at @s run summon slime ~ ~ ~ {Invulnerable:1b,Silent:1b,NoAI:1b,Size:18,Tags:["rauch_rok","setup"]}

scoreboard players operation @e[type=slime,tag=setup,tag=rauch_rok] pnum = @s pnum
tag @e[type=slime,tag=setup,tag=rauch_rok] remove setup
