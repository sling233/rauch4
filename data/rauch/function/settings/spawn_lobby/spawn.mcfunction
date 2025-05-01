# set lobby data
data merge storage lobby_data {spawn_location:[],position:[]}
data modify storage lobby_data version set from storage lobby_data latest_version

execute at @s align xyz positioned ~0.5 ~ ~0.5 summon marker run function rauch:settings/spawn_lobby/set_spawn
execute at @s align xyz positioned ~33.5 ~44 ~37.5 summon marker run function rauch:settings/spawn_lobby/set_position

# spawn lobby
execute at @s positioned ~ ~ ~ store success score t_success_1 temp run place template rauch:lobby000
execute at @s positioned ~ ~ ~48 store success score t_success_2 temp run place template rauch:lobby001
execute at @s positioned ~ ~48 ~ store success score t_success_3 temp run place template rauch:lobby010
execute at @s positioned ~ ~48 ~48 store success score t_success_4 temp run place template rauch:lobby011
execute at @s positioned ~48 ~ ~ store success score t_success_5 temp run place template rauch:lobby100
execute at @s positioned ~48 ~ ~48 store success score t_success_6 temp run place template rauch:lobby101
execute at @s positioned ~48 ~48 ~ store success score t_success_7 temp run place template rauch:lobby110
execute at @s positioned ~48 ~48 ~48 store success score t_success_8 temp run place template rauch:lobby111

# add water and lava for afk pool to stop bugness from happening
execute at @s store success score t_success_9 temp run setblock ~2 ~45 ~42 water
execute at @s store success score t_success_10 temp run setblock ~4 ~45 ~44 lava

scoreboard players operation t_success_1 temp *= t_success_2 temp
scoreboard players operation t_success_1 temp *= t_success_3 temp
scoreboard players operation t_success_1 temp *= t_success_4 temp
scoreboard players operation t_success_1 temp *= t_success_5 temp
scoreboard players operation t_success_1 temp *= t_success_6 temp
scoreboard players operation t_success_1 temp *= t_success_7 temp
scoreboard players operation t_success_1 temp *= t_success_8 temp
scoreboard players operation t_success_1 temp *= t_success_9 temp
scoreboard players operation t_success_1 temp *= t_success_10 temp
execute if score t_success_1 temp matches 0 run tellraw @s {"text":"Lobby could not spawn correctly as the area was not fully loaded.","color":"red"}

scoreboard players reset * temp