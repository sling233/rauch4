function rauch:game/ui/bossbar/speed/update

execute as @s[scores={fly=60..},tag=!fast] run function rauch:game/ability/flyer/f/fast

# fly score can give false negatives. but its faster to check than the predicate so i just combined them
execute unless score @s fly matches 1.. unless predicate rauch:flying run function rauch:game/ability/flyer/f/land
