execute if entity @a[tag=game] run tellraw @s {"text":"The game can't be started since there is already a game running","color":"red"}
execute unless entity @a[tag=game] run function rauch:game/core/framework/start_game
