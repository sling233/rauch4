function rauch:game/mechanics/armor
execute unless score @s hack matches 1.. at @s run playsound minecraft:item.armor.equip_elytra master @s ~ ~ ~
function rauch:game/ui/bossbar/elytra/invisible
scoreboard players reset @s elytra
