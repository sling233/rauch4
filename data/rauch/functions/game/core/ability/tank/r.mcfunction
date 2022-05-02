#execute at @s[team=Red] if entity @a[team=Blue,distance=..8] run effect give @s instant_health 1 2 true
#execute at @s[team=Blue] if entity @a[team=Red,distance=..8] run effect give @s instant_health 1 2 true

#execute at @s[team=Red] unless entity @a[team=Blue,distance=..8] run tellraw @s {"text":"An enemy must be within 8 blocks in order for you to activate your skill","color":"red"}
#execute at @s[team=Blue] unless entity @a[team=Red,distance=..8] run tellraw @s {"text":"An enemy must be within 8 blocks in order for you to activate your skill","color":"red"}

#execute at @s[team=Red] if entity @a[team=Blue,distance=..8] run scoreboard players operation @s cool1 = @s cool1_target
#execute at @s[team=Blue] if entity @a[team=Red,distance=..8] run scoreboard players operation @s cool1 = @s cool1_target


#execute at @s[team=Red] if entity @a[team=Blue,distance=..8] run playsound minecraft:block.brewing_stand.brew master @a
#execute at @s[team=Blue] if entity @a[team=Red,distance=..8] run playsound minecraft:block.brewing_stand.brew master @a


execute at @s[team=Red] run summon area_effect_cloud ~ ~0.1 ~ {Duration:120,Tags:["red","shield"]}
execute at @s[team=Blue] run summon area_effect_cloud ~ ~0.1 ~ {Duration:120,Tags:["blu","shield"]}

scoreboard players operation @s cool1 = @s cool1_target
