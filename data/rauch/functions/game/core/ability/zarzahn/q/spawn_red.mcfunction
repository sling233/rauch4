execute at @s run tag @a[team=Blue,distance=..7] add temp
#ändern zu blue, nur für testen
execute as @a[tag=temp] run scoreboard players set @s push_levitation_timer -4
execute as @a[tag=temp] run effect give @s minecraft:levitation 1 50 true
tag @a remove temp

execute at @s run summon slime ~ ~-2 ~ {Team:"Red",Invulnerable:1b,Silent:1b,NoAI:1b,Size:27,Tags:["push","setup"]}
execute at @s run summon slime ~ ~-2 ~ {Team:"Red",Invulnerable:1b,Silent:1b,NoAI:1b,Size:27,Tags:["push","setup"]}
execute at @s run summon slime ~ ~-2 ~ {Team:"Red",Invulnerable:1b,Silent:1b,NoAI:1b,Size:27,Tags:["push","setup"]}
execute at @s run summon slime ~ ~-2 ~ {Team:"Red",Invulnerable:1b,Silent:1b,NoAI:1b,Size:27,Tags:["push","setup"]}
execute at @s run summon slime ~ ~-2 ~ {Team:"Red",Invulnerable:1b,Silent:1b,NoAI:1b,Size:27,Tags:["push","setup"]}
execute at @s run summon slime ~ ~-2 ~ {Team:"Red",Invulnerable:1b,Silent:1b,NoAI:1b,Size:27,Tags:["push","setup"]}
execute at @s run summon slime ~ ~-2 ~ {Team:"Red",Invulnerable:1b,Silent:1b,NoAI:1b,Size:27,Tags:["push","setup"]}
execute at @s run summon slime ~ ~-2 ~ {Team:"Red",Invulnerable:1b,Silent:1b,NoAI:1b,Size:27,Tags:["push","setup"]}
execute at @s run summon slime ~ ~-2 ~ {Team:"Red",Invulnerable:1b,Silent:1b,NoAI:1b,Size:27,Tags:["push","setup"]}
execute at @s run summon slime ~ ~-2 ~ {Team:"Red",Invulnerable:1b,Silent:1b,NoAI:1b,Size:27,Tags:["push","setup"]}
execute at @s run summon slime ~ ~-2 ~ {Team:"Red",Invulnerable:1b,Silent:1b,NoAI:1b,Size:27,Tags:["push","setup"]}
execute at @s run summon slime ~ ~-2 ~ {Team:"Red",Invulnerable:1b,Silent:1b,NoAI:1b,Size:27,Tags:["push","setup"]}
execute at @s run summon slime ~ ~-2 ~ {Team:"Red",Invulnerable:1b,Silent:1b,NoAI:1b,Size:27,Tags:["push","setup"]}
execute at @s run summon slime ~ ~-2 ~ {Team:"Red",Invulnerable:1b,Silent:1b,NoAI:1b,Size:27,Tags:["push","setup"]}
execute at @s run summon slime ~ ~-2 ~ {Team:"Red",Invulnerable:1b,Silent:1b,NoAI:1b,Size:27,Tags:["push","setup"]}
execute at @s run summon slime ~ ~-2 ~ {Team:"Red",Invulnerable:1b,Silent:1b,NoAI:1b,Size:27,Tags:["push","setup"]}

scoreboard players operation @e[type=slime,tag=setup,tag=push] pnum = @s pnum
tag @e[type=slime,tag=setup,tag=push] remove setup
