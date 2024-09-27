execute at @s rotated ~ 0 run summon slime ^ ^ ^-1 {Team:"Blue",Invulnerable:1b,Silent:1b,NoAI:1b,Size:6,Tags:["wark_push","setup"]}
execute at @s rotated ~ 0 run summon slime ^ ^ ^-1 {Team:"Blue",Invulnerable:1b,Silent:1b,NoAI:1b,Size:6,Tags:["wark_push","setup"]}
execute at @s rotated ~ 0 run summon slime ^ ^ ^-1 {Team:"Blue",Invulnerable:1b,Silent:1b,NoAI:1b,Size:6,Tags:["wark_push","setup"]}
execute at @s rotated ~ 0 run summon slime ^ ^ ^-1 {Team:"Blue",Invulnerable:1b,Silent:1b,NoAI:1b,Size:6,Tags:["wark_push","setup"]}

scoreboard players operation @e[type=slime,tag=setup,tag=wark_push] pnum = @s pnum
tag @e[type=slime,tag=setup,tag=wark_push] remove setup
