# set lobby data
data merge storage lobby_data {version:3,spawn_location:[],position:[]}
# remember to change the versiob in lobby_check as well

execute at @s align xyz run summon marker ~0.5 ~ ~0.5 {Tags:["lobbysetup","spawn"]}
execute at @s align xyz run summon marker ~33.5 ~44 ~37.5 {Tags:["lobbysetup","position"]}
data modify storage lobby_data spawn_location set from entity @s Pos

data modify storage lobby_data spawn_location set from entity @e[type=marker,tag=lobbysetup,tag=spawn,limit=1] Pos
data modify storage lobby_data position set from entity @e[type=marker,tag=lobbysetup,tag=position,limit=1] Pos
kill @e[type=marker,tag=lobbysetup]

# spawn lobby
execute at @s positioned ~ ~ ~ run place template rauch:lobby000
execute at @s positioned ~ ~ ~48 run place template rauch:lobby001
execute at @s positioned ~ ~48 ~ run place template rauch:lobby010
execute at @s positioned ~ ~48 ~48 run place template rauch:lobby011
execute at @s positioned ~48 ~ ~ run place template rauch:lobby100
execute at @s positioned ~48 ~ ~48 run place template rauch:lobby101
execute at @s positioned ~48 ~48 ~ run place template rauch:lobby110
execute at @s positioned ~48 ~48 ~48 run place template rauch:lobby111

# add water and lava for afk pool to stop bugness from happening
setblock ~2 ~45 ~42 water 
setblock ~4 ~45 ~44 lava 
