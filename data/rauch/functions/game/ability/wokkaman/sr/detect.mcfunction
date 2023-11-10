tag @s add temp
execute at @s[tag=!test,tag=searching,tag=red] as @a[team=Blue,tag=game,tag=!dead,distance=..4,sort=nearest,limit=1] run function rauch:game/ability/wokkaman/sr/found
execute at @s[tag=!test,tag=searching,tag=blu] as @a[team=Red,tag=game,tag=!dead,distance=..4,sort=nearest,limit=1] run function rauch:game/ability/wokkaman/sr/found

execute at @s[tag=!searching,tag=red] positioned ~-0.75 ~-0.75 ~-0.75 as @a[team=Blue,tag=game,tag=!dead,dx=0.5,dy=0.5,dz=0.5,limit=1] run function rauch:game/ability/wokkaman/sr/hit
execute at @s[tag=!searching,tag=blu] positioned ~-0.75 ~-0.75 ~-0.75 as @a[team=Red,tag=game,tag=!dead,dx=0.5,dy=0.5,dz=0.5,limit=1] run function rauch:game/ability/wokkaman/sr/hit
tag @s remove temp
