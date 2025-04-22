function rauch:game/ui/bossbar/speed/update

execute as @s[scores={fly=60..},tag=!fast] run function rauch:game/ability/flyer/f/fast

execute unless score @s fly matches 1.. run function rauch:game/ability/flyer/f/land
