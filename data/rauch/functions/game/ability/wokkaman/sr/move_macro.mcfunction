# storage macros data has tag list. players in that list are tagged with wok_bow_tagged
# $(gravity) has gravity value
# wokka owner has tag t_wokka
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
execute at @s[tag=searching,tag=red] as @a[team=Blue,tag=game,tag=!wok_bow_tagged,tag=!dead,distance=..5,sort=nearest,limit=1] run function rauch:game/ability/wokkaman/sr/found
execute at @s[tag=searching,tag=blu] as @a[team=Red,tag=game,tag=!wok_bow_tagged,tag=!dead,distance=..5,sort=nearest,limit=1] run function rauch:game/ability/wokkaman/sr/found

execute at @s[tag=!searching,tag=red] positioned ~-0.5 ~-0.5 ~-0.5 as @a[team=Blue,tag=game,tag=!dead,dx=0,dy=0,dz=0,limit=1] run function rauch:game/ability/wokkaman/sr/hit
execute at @s[tag=!searching,tag=blu] positioned ~-0.5 ~-0.5 ~-0.5 as @a[team=Red,tag=game,tag=!dead,dx=0,dy=0,dz=0,limit=1] run function rauch:game/ability/wokkaman/sr/hit
tag @s remove temp

#destroy
execute at @s[tag=searching] unless block ^ ^ ^0.3 #nonsolid run function rauch:game/ability/wokkaman/sr/destroy

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
execute at @s[tag=searching,tag=red] as @a[team=Blue,tag=game,tag=!wok_bow_tagged,tag=!dead,distance=..5,sort=nearest,limit=1] run function rauch:game/ability/wokkaman/sr/found
execute at @s[tag=searching,tag=blu] as @a[team=Red,tag=game,tag=!wok_bow_tagged,tag=!dead,distance=..5,sort=nearest,limit=1] run function rauch:game/ability/wokkaman/sr/found

execute at @s[tag=!searching,tag=red] positioned ~-0.75 ~-0.75 ~-0.75 as @a[team=Blue,tag=game,tag=!dead,dx=0.5,dy=0.5,dz=0.5,limit=1] run function rauch:game/ability/wokkaman/sr/hit
execute at @s[tag=!searching,tag=blu] positioned ~-0.75 ~-0.75 ~-0.75 as @a[team=Red,tag=game,tag=!dead,dx=0.5,dy=0.5,dz=0.5,limit=1] run function rauch:game/ability/wokkaman/sr/hit
tag @s remove temp

#destroy
execute at @s[tag=searching] unless block ^ ^ ^0.3 #nonsolid run function rauch:game/ability/wokkaman/sr/destroy
