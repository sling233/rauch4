# as player hit, projectile has tag temp, wokka owner has tag t_wokka
execute at @s as @e[type=marker,tag=temp,tag=wok_bow] run function rauch:game/ability/wokkaman/sr/hit_projectile
execute at @s as @a[tag=t_wokka] run function rauch:game/ability/wokkaman/sr/hit_wokka

execute at @s positioned ~ ~1.6 ~ run playsound minecraft:entity.arrow.hit_player master @a ~ ~ ~
execute at @s positioned ~ ~1.6 ~ run particle minecraft:flash ~ ~ ~ 0 0 0 1 1 force
execute at @s positioned ~ ~1 ~ run particle minecraft:end_rod ~ ~ ~ 0.2 0.4 0.2 0.3 80 force
execute at @s positioned ~ ~1 ~ run particle minecraft:enchanted_hit ~ ~ ~ 0.2 0.4 0.2 1 200 force
