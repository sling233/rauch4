scoreboard players reset @s tank
function rauch:game/core/ui/bossbar/tank/invisible
scoreboard players operation @s tank_damage_taken /= Global 10
execute at @s[team=Red] as @a[team=Red,tag=game,tag=!dead,distance=..5] unless score @s pnum = @p pnum run scoreboard players operation @s heal = @p tank_damage_taken
execute at @s[team=Blue] as @a[team=Blue,tag=game,tag=!dead,distance=..5] unless score @s pnum = @p pnum run scoreboard players operation @s heal = @p tank_damage_taken
execute at @s run playsound minecraft:block.brewing_stand.brew master @a
execute as @a[scores={heal=1..}] run function rauch:game/core/ability/tank/f/heal
