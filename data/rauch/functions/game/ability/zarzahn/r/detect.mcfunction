tag @s add temp
# sets t_pnum to pnum of this projectile (the player who)
scoreboard objectives add t_pnum dummy
scoreboard players operation Global t_pnum = @s pnum
execute at @s[tag=red] positioned ~-1 ~-1 ~-1 as @a[team=Blue,tag=!dead,dx=1,dy=1,dz=1,limit=1] run function rauch:game/ability/zarzahn/r/hit_detected
execute at @s[tag=blu] positioned ~-1 ~-1 ~-1 as @a[team=Red,tag=!dead,dx=1,dy=1,dz=1,limit=1] run function rauch:game/ability/zarzahn/r/hit_detected
execute at @s[tag=!hit] unless block ^ ^ ^0.3 #nonsolid run function rauch:game/ability/zarzahn/r/kill
scoreboard objectives remove t_pnum
tag @s remove temp
