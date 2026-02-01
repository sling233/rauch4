function rauch:game/ui/bossbar/speed/update

execute as @s[scores={fly=60..},tag=!fast] run function rauch:game/kits/pikka/f/fast

# "lands" when no longer flying (so also when cancelling elytra with q)
# fly score can give false negatives. but its faster to check than the predicate so i just combined them
execute unless score @s fly matches 1.. unless predicate rauch:flying run function rauch:game/kits/pikka/f/land
# "lands" when on ground (so q does not cancel it). might be op
#execute unless score @s fly matches 1.. if predicate rauch:on_ground run function rauch:game/kits/pikka/f/land
