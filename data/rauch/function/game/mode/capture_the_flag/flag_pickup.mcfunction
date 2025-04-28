kill @e[type=armor_stand,tag=flag]
tag @s add flagPickedUp
effect give @s minecraft:glowing infinite 0 true
execute at @s run summon marker ~ ~ ~ {Tags:["flag_pos"]}
#scoreboard players set Global flag_min_distance_red 9999999
#scoreboard players set Global flag_min_distance_blue 9999999

title @a[tag=game] title ""
title @a[tag=spectator] title ""

execute as @s[team=Red] run title @a[tag=game,team=Red] subtitle {"text":"Teammate Picked up Flag","color":"yellow"}
execute as @s[team=Red] run title @a[tag=game,team=Blue] subtitle {"text":"Enemy Picked up Flag","color":"dark_red"}
execute as @s[team=Red] run title @a[tag=spectator] subtitle {"text":"Red Picked up the Flag","color":"red"}
execute as @s[team=Blue] run title @a[tag=game,team=Blue] subtitle {"text":"Teammate Picked up Flag","color":"yellow"}
execute as @s[team=Blue] run title @a[tag=game,team=Red] subtitle {"text":"Enemy Picked up Flag","color":"dark_red"}
execute as @s[team=Blue] run title @a[tag=spectator] subtitle {"text":"Blue Picked up the Flag","color":"blue"}

title @s title {"text":"Picked up Flag","color":"gold"}
title @s[team=Red] subtitle {"text":"Bring it to Blue base!","color":"gray"}
title @s[team=Blue] subtitle {"text":"Bring it to Red base!","color":"gray"}

scoreboard players set @s hack 200
function rauch:game/ability/hacker/r/hack_init
execute at @s[scores={kit=2}] as @e[type=marker,tag=zarzahn_rocket] if score @s pnum = @p pnum run kill @s

function rauch:game/mechanics/armor
