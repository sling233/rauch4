effect give @s regeneration 1 127 true
execute if score @s heal matches ..0 run effect clear @s regeneration

scoreboard players remove @s heal 1