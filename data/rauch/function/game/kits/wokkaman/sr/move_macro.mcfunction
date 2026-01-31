# storage macros data has tag list. players in that list are tagged with wok_bow_tagged
# $(gravity) has gravity value
# wokka owner has tag t_wokka

# look towards target if existent
scoreboard players operation t_target_pnum temp = @s zarzahn_hooking
tag @s add t_proj
execute at @s as @a if score @s pnum = t_target_pnum temp facing entity @s eyes run tp @e[type=marker,tag=wok_bow,tag=t_proj] ~ ~ ~ ~ ~
tag @s remove t_proj

###### move ###########
execute at @s run tp @s ^ ^ ^0.3
$execute at @s[tag=searching] run tp @s ~ ~-$(gravity) ~
execute at @s run particle minecraft:crit ~ ~ ~ 0 0 0 0.05 1 force
execute at @s run particle minecraft:enchanted_hit ~ ~ ~ 0.05 0.05 0.05 0.3 4 force
execute at @s[tag=!searching] run particle minecraft:end_rod ~ ~ ~ 0 0 0 0 1 force
execute at @s[tag=!searching] run particle minecraft:end_rod ^ ^ ^-0.1 0 0 0 0 1 force
execute at @s[tag=!searching] run particle minecraft:end_rod ^ ^ ^-0.2 0 0 0 0 1 force

#detect
tag @s add temp
execute at @s[tag=searching,tag=red] positioned ~ ~-1.6 ~ as @a[team=Blue,tag=game,tag=!wok_bow_tagged,tag=!dead,distance=..6,sort=nearest,limit=1] run function rauch:game/kits/wokkaman/sr/found
execute at @s[tag=searching,tag=blu] positioned ~ ~-1.6 ~ as @a[team=Red,tag=game,tag=!wok_bow_tagged,tag=!dead,distance=..6,sort=nearest,limit=1] run function rauch:game/kits/wokkaman/sr/found

execute at @s[tag=!searching,tag=red] positioned ~-0.5 ~-0.5 ~-0.5 as @a[team=Blue,tag=game,tag=!dead,dx=0,dy=0,dz=0] if score @s pnum = t_target_pnum temp run function rauch:game/kits/wokkaman/sr/hit
execute at @s[tag=!searching,tag=blu] positioned ~-0.5 ~-0.5 ~-0.5 as @a[team=Red,tag=game,tag=!dead,dx=0,dy=0,dz=0] if score @s pnum = t_target_pnum temp run function rauch:game/kits/wokkaman/sr/hit
tag @s remove temp

#destroy
execute at @s[tag=searching] unless block ^ ^ ^0.3 #nonsolid run function rauch:game/kits/wokkaman/sr/destroy

###### move ###########
execute at @s run tp @s ^ ^ ^0.3
$execute at @s[tag=searching] run tp @s ~ ~-$(gravity) ~
execute at @s run particle minecraft:crit ~ ~ ~ 0 0 0 0.05 1 force
execute at @s run particle minecraft:enchanted_hit ~ ~ ~ 0.05 0.05 0.05 0.3 4 force
execute at @s[tag=!searching] run particle minecraft:end_rod ~ ~ ~ 0 0 0 0 1 force
execute at @s[tag=!searching] run particle minecraft:end_rod ^ ^ ^-0.1 0 0 0 0 1 force
execute at @s[tag=!searching] run particle minecraft:end_rod ^ ^ ^-0.2 0 0 0 0 1 force


#detect
tag @s add temp
execute at @s[tag=searching,tag=red] positioned ~ ~-1.6 ~ as @a[team=Blue,tag=game,tag=!wok_bow_tagged,tag=!dead,distance=..6,sort=nearest,limit=1] run function rauch:game/kits/wokkaman/sr/found
execute at @s[tag=searching,tag=blu] positioned ~ ~-1.6 ~ as @a[team=Red,tag=game,tag=!wok_bow_tagged,tag=!dead,distance=..6,sort=nearest,limit=1] run function rauch:game/kits/wokkaman/sr/found

execute at @s[tag=!searching,tag=red] positioned ~-0.5 ~-0.5 ~-0.5 as @a[team=Blue,tag=game,tag=!dead,dx=0,dy=0,dz=0] if score @s pnum = t_target_pnum temp run function rauch:game/kits/wokkaman/sr/hit
execute at @s[tag=!searching,tag=blu] positioned ~-0.5 ~-0.5 ~-0.5 as @a[team=Red,tag=game,tag=!dead,dx=0,dy=0,dz=0] if score @s pnum = t_target_pnum temp run function rauch:game/kits/wokkaman/sr/hit
tag @s remove temp

#destroy
execute at @s[tag=searching] unless block ^ ^ ^0.3 #nonsolid run function rauch:game/kits/wokkaman/sr/destroy

###### move ###########
execute at @s run tp @s ^ ^ ^0.3
$execute at @s[tag=searching] run tp @s ~ ~-$(gravity) ~
execute at @s run particle minecraft:crit ~ ~ ~ 0 0 0 0.05 1 force
execute at @s run particle minecraft:enchanted_hit ~ ~ ~ 0.05 0.05 0.05 0.3 4 force
execute at @s[tag=!searching] run particle minecraft:end_rod ~ ~ ~ 0 0 0 0 1 force
execute at @s[tag=!searching] run particle minecraft:end_rod ^ ^ ^-0.1 0 0 0 0 1 force
execute at @s[tag=!searching] run particle minecraft:end_rod ^ ^ ^-0.2 0 0 0 0 1 force


#detect
tag @s add temp
execute at @s[tag=searching,tag=red] positioned ~ ~-1.6 ~ as @a[team=Blue,tag=game,tag=!wok_bow_tagged,tag=!dead,distance=..6,sort=nearest,limit=1] run function rauch:game/kits/wokkaman/sr/found
execute at @s[tag=searching,tag=blu] positioned ~ ~-1.6 ~ as @a[team=Red,tag=game,tag=!wok_bow_tagged,tag=!dead,distance=..6,sort=nearest,limit=1] run function rauch:game/kits/wokkaman/sr/found

execute at @s[tag=!searching,tag=red] positioned ~-0.5 ~-0.5 ~-0.5 as @a[team=Blue,tag=game,tag=!dead,dx=0,dy=0,dz=0] if score @s pnum = t_target_pnum temp run function rauch:game/kits/wokkaman/sr/hit
execute at @s[tag=!searching,tag=blu] positioned ~-0.5 ~-0.5 ~-0.5 as @a[team=Red,tag=game,tag=!dead,dx=0,dy=0,dz=0] if score @s pnum = t_target_pnum temp run function rauch:game/kits/wokkaman/sr/hit
tag @s remove temp

#destroy
execute at @s[tag=searching] unless block ^ ^ ^0.3 #nonsolid run function rauch:game/kits/wokkaman/sr/destroy

scoreboard players reset t_target_pnum temp
