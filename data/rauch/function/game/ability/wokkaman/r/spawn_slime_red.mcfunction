# stunned has tag t_stunned, @s is wokka
execute at @a[tag=t_stunned] facing entity @s feet positioned ~ ~-0.5 ~ run summon slime ^ ^ ^0.5 {Team:"Red",Invulnerable:1b,Silent:1b,NoAI:1b,Size:6,Tags:["wok_push","setup"]}
execute at @a[tag=t_stunned] facing entity @s feet positioned ~ ~-0.5 ~ run summon slime ^ ^ ^0.5 {Team:"Red",Invulnerable:1b,Silent:1b,NoAI:1b,Size:6,Tags:["wok_push","setup"]}
execute at @a[tag=t_stunned] facing entity @s feet positioned ~ ~-0.5 ~ run summon slime ^ ^ ^0.5 {Team:"Red",Invulnerable:1b,Silent:1b,NoAI:1b,Size:6,Tags:["wok_push","setup"]}
execute at @a[tag=t_stunned] facing entity @s feet positioned ~ ~-0.5 ~ run summon slime ^ ^ ^0.5 {Team:"Red",Invulnerable:1b,Silent:1b,NoAI:1b,Size:6,Tags:["wok_push","setup"]}
execute at @a[tag=t_stunned] facing entity @s feet positioned ~ ~-0.5 ~ run summon slime ^ ^ ^0.5 {Team:"Red",Invulnerable:1b,Silent:1b,NoAI:1b,Size:6,Tags:["wok_push","setup"]}
execute at @a[tag=t_stunned] facing entity @s feet positioned ~ ~-0.5 ~ run summon slime ^ ^ ^0.5 {Team:"Red",Invulnerable:1b,Silent:1b,NoAI:1b,Size:6,Tags:["wok_push","setup"]}

scoreboard players operation @e[type=slime,tag=setup,tag=wok_push] pnum = @s pnum
tag @e[type=slime,tag=setup,tag=wok_push] remove setup
