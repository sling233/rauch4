execute as @a[tag=game] run clear @s
execute as @a[tag=game] run function rauch:game/mechanics/set_weapon
execute as @a[tag=game] run function rauch:game/kits/set_armor_body
execute as @a[tag=game] run function rauch:game/mechanics/set_helmet

execute as @a[tag=game] run item replace entity @s saddle with minecraft:heavy_core[equippable={slot:"saddle",equip_sound:"intentionally_empty"}]
execute as @a[tag=game] run function rauch:game/mechanics/set_protection
# wokkaman give starting rockets
execute as @a[tag=game,scores={kit=9}] run function rauch:game/framework/wokkaman_set_starting_rockets
execute as @a[tag=game,scores={kit=9}] run function rauch:game/kits/wokkaman/fireworks/give_starting_firework_rockets
execute as @a[tag=game,scores={kit=9}] run function rauch:game/framework/wokkaman_give_starting_maces
