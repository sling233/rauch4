#say qmain
scoreboard players set @s bolt 80
function rauch:game/ui/bossbar/bolt/visible
execute at @s run playsound minecraft:item.trident.thunder master @a ~ ~ ~ 2.5
scoreboard players operation @s cool2 = @s cool2_target
