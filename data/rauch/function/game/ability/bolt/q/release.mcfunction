# set @s's data to element 0 in bolt_hit
function rauch:game/ability/bolt/q/array/find_me

# give buff (save count of hit players in temp variable)
execute store result score t_list_count temp run data get storage game_data bolt_hit[0].list

# call functuion for every tagged player
function rauch:game/ability/bolt/q/array/for_tagged

#scoreboard players set t_list_count temp 3
execute if score t_list_count temp matches 0 at @s run playsound minecraft:block.beacon.deactivate master @a
execute if score t_list_count temp matches 1 run attribute @s minecraft:attack_damage modifier add boltdmg 2.4 add_value
execute if score t_list_count temp matches 2 run attribute @s minecraft:attack_damage modifier add boltdmg 4.8 add_value
execute if score t_list_count temp matches 3 run attribute @s minecraft:attack_damage modifier add boltdmg 7.2 add_value
execute if score t_list_count temp matches 4 run attribute @s minecraft:attack_damage modifier add boltdmg 9.6 add_value
execute if score t_list_count temp matches 5 run attribute @s minecraft:attack_damage modifier add boltdmg 12 add_value
execute if score t_list_count temp matches 6 run attribute @s minecraft:attack_damage modifier add boltdmg 14.4 add_value
execute if score t_list_count temp matches 7.. run say what

execute if score t_list_count temp matches 1.. run scoreboard players set @s boltdmg 80

scoreboard players reset @s bolt
function rauch:game/ui/bossbar/bolt/invisible


scoreboard players reset t_list_count temp
data remove storage game_data bolt_hit[0].list
