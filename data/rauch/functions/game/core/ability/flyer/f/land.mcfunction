tag @s remove flying
function rauch:game/core/ui/bossbar/speed/invisible
execute as @s[tag=fast] run attribute @s minecraft:generic.attack_damage modifier remove 0-0-0-0-3
tag @s remove fast
