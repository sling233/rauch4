function rauch:game/core/ui/bossbar/speed/update

execute as @s[scores={fly=85..},tag=!fast] run function rauch:game/core/ability/flyer/f/fast

execute unless score @s fly matches 1.. run function rauch:game/core/ability/flyer/f/land
