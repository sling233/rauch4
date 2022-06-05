execute as @s[scores={wark_r=-11}] at @s as @e[type=marker,tag=wark] if score @s pnum = @p pnum at @s run function rauch:game/core/ability/wark/r/move2
execute as @s[scores={wark_r=-1}] at @s as @e[type=marker,tag=wark] if score @s pnum = @p pnum at @s run function rauch:game/core/ability/wark/r/move3
execute as @s[scores={wark_r=-1}] at @s run playsound minecraft:entity.warden.sonic_boom master @a
