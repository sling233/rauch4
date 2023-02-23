# save who the projectile belonged to (basically, who hit this player)
scoreboard objectives add hitByPnum dummy
scoreboard players operation @s hitByPnum = @e[type=marker,tag=temp,limit=1] pnum

# execute at this, as bolt
execute at @s as @a if score @s pnum = @p hitByPnum run function rauch:game/ability/bolt/r/hit_action

scoreboard objectives remove hitByPnum