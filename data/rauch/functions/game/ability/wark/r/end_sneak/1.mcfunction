tellraw @s {"text":"The wark stopped sneaking and is no longer focused","color":"green"}
execute at @s run playsound minecraft:entity.allay.item_taken master @s
tag @s remove wark_hitby1
execute as @s[tag=!wark_hitby1,tag=!wark_hitby2,tag=!wark_hitby3,tag=!wark_hitby4,tag=!wark_hitby5,tag=!wark_hitby6,tag=!wark_hitby7,tag=!wark_hitby8,tag=!wark_hitby9,tag=!wark_hitby10,tag=!wark_hitby11,tag=!wark_hitby12] run function rauch:game/ability/wark/r/end