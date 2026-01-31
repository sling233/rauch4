tag @s add temp
# sets t_pnum to pnum of this projectile (the player who)
scoreboard players operation t_pnum temp = @s pnum
execute at @s[tag=red] positioned ~-1 ~-1 ~-1 as @a[team=Blue,tag=game,tag=!wok_hook,tag=!dead,dx=1,dy=1,dz=1,limit=1] run function rauch:game/kits/zarzahn/r/hit_detected
execute at @s[tag=blu] positioned ~-1 ~-1 ~-1 as @a[team=Red,tag=game,tag=!wok_hook,tag=!dead,dx=1,dy=1,dz=1,limit=1] run function rauch:game/kits/zarzahn/r/hit_detected
execute at @s[tag=!hit] unless block ^ ^ ^0.3 #nonsolid run function rauch:game/kits/zarzahn/r/kill
scoreboard players reset t_pnum temp
tag @s remove temp
