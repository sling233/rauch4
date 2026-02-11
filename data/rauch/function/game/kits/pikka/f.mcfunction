execute unless score @s cool3 matches 0 run return 1

scoreboard players operation @s cool3 = @s cool3_target


execute at @s run playsound minecraft:item.trident.riptide_3 master @s ~ ~ ~

execute if score @s flyerQSchedule matches ..-1 run return run function rauch:game/kits/pikka/f/interrupt_q
# # can launch with f while using q
#execute if score @s flyerQSchedule matches ..-1 run function rauch:game/kits/pikka/f/interrupt_q

# launch
function rauch:game/mechanics/vertical_launch/launch {power:150}
