function rauch:game/kits/pikka/r/despawn
scoreboard players reset @s flyerQSchedule

tag @s remove flying

execute as @s[tag=fast] run attribute @s minecraft:attack_damage modifier remove flyer_fast
execute as @s[tag=fast] run attribute @s minecraft:entity_interaction_range modifier remove flyer_fast_range
tag @s remove fast

attribute @s gravity base reset

function rauch:game/kits/pikka/f/elytrarestore
function rauch:game/ui/bossbar/speed/invisible
