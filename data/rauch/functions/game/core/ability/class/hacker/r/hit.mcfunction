scoreboard players set @s stun 50
function rauch:game/core/mechanics/stuninit
execute at @s positioned ~ ~1 ~ run kill @e[type=area_effect_cloud,tag=hacker,distance=..0.2]
