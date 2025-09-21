# $x,$y,$z have spawn coordinates
data modify storage lobby_data time set value 1
data modify storage lobby_data weather set value 1
data modify storage lobby_data has_launchpads set value 0
# spawn lobby
$execute positioned $(x) $(y) $(z) positioned ~ ~ ~ store success score t_success_1 temp run place template rauch:lobby000
$execute positioned $(x) $(y) $(z) positioned ~ ~ ~48 store success score t_success_2 temp run place template rauch:lobby001
$execute positioned $(x) $(y) $(z) positioned ~ ~48 ~ store success score t_success_3 temp run place template rauch:lobby010
$execute positioned $(x) $(y) $(z) positioned ~ ~48 ~48 store success score t_success_4 temp run place template rauch:lobby011
$execute positioned $(x) $(y) $(z) positioned ~48 ~ ~ store success score t_success_5 temp run place template rauch:lobby100
$execute positioned $(x) $(y) $(z) positioned ~48 ~ ~48 store success score t_success_6 temp run place template rauch:lobby101
$execute positioned $(x) $(y) $(z) positioned ~48 ~48 ~ store success score t_success_7 temp run place template rauch:lobby110
$execute positioned $(x) $(y) $(z) positioned ~48 ~48 ~48 store success score t_success_8 temp run place template rauch:lobby111

$execute positioned $(x) $(y) $(z) align xyz positioned ~33.5 ~44 ~37.5 summon marker run function rauch:settings/spawn_lobby/set_position

# add water and lava for afk pool to stop bugness from happening
$execute positioned $(x) $(y) $(z) store success score t_success_9 temp run setblock ~2 ~45 ~42 water
$execute positioned $(x) $(y) $(z) store success score t_success_10 temp run setblock ~4 ~45 ~44 lava

scoreboard players operation t_success_1 temp *= t_success_2 temp
scoreboard players operation t_success_1 temp *= t_success_3 temp
scoreboard players operation t_success_1 temp *= t_success_4 temp
scoreboard players operation t_success_1 temp *= t_success_5 temp
scoreboard players operation t_success_1 temp *= t_success_6 temp
scoreboard players operation t_success_1 temp *= t_success_7 temp
scoreboard players operation t_success_1 temp *= t_success_8 temp
scoreboard players operation t_success_1 temp *= t_success_9 temp
scoreboard players operation t_success_1 temp *= t_success_10 temp

execute if score t_success_1 temp matches 0 run return fail