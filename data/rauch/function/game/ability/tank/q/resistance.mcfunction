scoreboard players remove @s tank_resistance 1
execute at @s[team=Red] as @a[team=Red,tag=game,tag=!dead,distance=..4.5] unless score @s pnum = @p pnum run effect give @s minecraft:resistance 1 0
execute at @s[team=Blue] as @a[team=Blue,tag=game,tag=!dead,distance=..4.5] unless score @s pnum = @p pnum run effect give @s minecraft:resistance 1 0
execute at @s run particle minecraft:glow ~ ~1 ~ 0.2 0.4 0.2 1 7
execute as @s[scores={tank_resistance=..0}] run function rauch:game/ability/tank/q/remove_buff
