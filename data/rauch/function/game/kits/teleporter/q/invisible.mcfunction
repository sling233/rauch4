scoreboard players remove @s tele2 1
execute as @s[scores={tele2=..0}] run tag @s add temp
execute as @s[scores={damage_dealt=1..}] run tag @s add temp
execute as @s[tag=temp] run scoreboard players reset @s tele2
execute as @s[tag=temp] run effect clear @s invisibility
execute as @s[tag=temp] run clear @s carrot_on_a_stick
execute as @s[tag=temp] run function rauch:game/mechanics/weapon
execute as @s[tag=temp] run function rauch:game/kits/set_armor_body
execute as @s[tag=temp] run tag @s remove temp
