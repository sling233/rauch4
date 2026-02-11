#effect give @s minecraft:levitation 1 80 true

function rauch:game/mechanics/vertical_launch/launch {power:150}

execute at @s run playsound minecraft:item.trident.return master @s ~ ~ ~
scoreboard players operation @s cool3 = @s cool3_target