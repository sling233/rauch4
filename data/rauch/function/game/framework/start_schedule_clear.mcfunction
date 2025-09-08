execute as @a[tag=game] run clear @s
execute as @a[tag=game] run function rauch:game/mechanics/armor
execute as @a[tag=game] run function rauch:game/mechanics/weapon
# wokkaman give starting rockets
execute as @a[tag=game,scores={kit=9}] run function rauch:game/framework/wokkaman_set_starting_rockets
execute as @a[tag=game,scores={kit=9}] run function rauch:game/framework/wokkaman_give_starting_firework_rockets
execute as @a[tag=game,scores={kit=9}] run function rauch:game/framework/wokkaman_give_starting_maces
