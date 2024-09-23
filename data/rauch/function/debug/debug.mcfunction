#$(name) has function name
# call like this: function rauch:debug/debug {name:"my_function"}
$tellraw @a [{"text":"Debug function Info for function","color":"green"},{"text":" $(name)","color":"light_purple"}]
execute store result score t_game_tick temp run time query gametime
tellraw @a [{"text":"  Tick: ","color":"yellow"},{"score":{"name":"t_game_tick","objective":"temp"},"color":"light_purple"}]
scoreboard players reset t_game_tick temp

execute if entity @s run tellraw @a [{"text":"  @s: ","color":"yellow"},{"selector":"@s"}]
execute unless entity @s run tellraw @a [{"text":"  @s: ","color":"green"},{"text":"None"}]
tellraw @a [{"text":"  @p: ","color":"yellow"},{"selector":"@p"}]

execute summon marker run function rauch:debug/position
execute if entity @s[distance=..0.01] run tellraw @a [{"text":"  Executed at @s: ","color":"yellow"},{"text":"Yes","color":"green"}]
execute unless entity @s[distance=..0.01] run tellraw @a [{"text":"  Executed at @s: ","color":"yellow"},{"text":"No","color":"red"}]

execute as @p if entity @s[distance=..0.01] run tellraw @a [{"text":"  Executed at @p: ","color":"yellow"},{"text":"Yes","color":"green"}]
execute as @p unless entity @s[distance=..0.01] run tellraw @a [{"text":"  Executed at @p: ","color":"yellow"},{"text":"No","color":"red"}]
