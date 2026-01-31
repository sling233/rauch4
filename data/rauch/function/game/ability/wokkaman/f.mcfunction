execute if entity @s[predicate=rauch:on_ground] run tag @s add t_grounded
execute as @s[tag=t_grounded,scores={cool3=0}] run function rauch:game/ability/wokkaman/f/launch
execute as @s[tag=!t_grounded,tag=!wok_f_air] run function rauch:game/ability/wokkaman/f/fall
execute as @s[tag=!t_grounded,tag=wok_f_air] run function rauch:game/ability/wokkaman/f/hover
tag @s remove t_grounded
