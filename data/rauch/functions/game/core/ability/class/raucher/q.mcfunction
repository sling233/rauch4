execute as @s[team=Red] as @a[team=Blue] at @s run effect give @s minecraft:glowing 5 1 false
execute as @s[team=Blue] as @a[team=Red] at @s run effect give @s minecraft:glowing 5 1 false
execute as @s[team=Red] as @a[team=Blue] at @s run playsound minecraft:block.beacon.power_select master @s
execute as @s[team=Blue] as @a[team=Red] at @s run playsound minecraft:block.beacon.power_select master @s
execute at @s run playsound minecraft:block.beacon.power_select master @s

scoreboard players operation @s cool2 = @s cool2_target
