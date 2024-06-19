# set @s's data to element 0 in bolt_hit
function rauch:game/ability/bolt/q/array/find_me

# give buff (save count of hit players in temp variable)
scoreboard objectives add t_list_count dummy
execute store result score Global t_list_count run data get storage game_data bolt_hit[0].list

# call functuion for every tagged player
function rauch:game/ability/bolt/q/array/for_tagged

#scoreboard players set Global t_list_count 3
execute if score Global t_list_count matches 0 at @s run playsound minecraft:block.beacon.deactivate master @a
execute if score Global t_list_count matches 1 run attribute @s minecraft:generic.attack_damage modifier add boltdmg 2.4 add_value
execute if score Global t_list_count matches 2 run attribute @s minecraft:generic.attack_damage modifier add boltdmg 4.8 add_value
execute if score Global t_list_count matches 3 run attribute @s minecraft:generic.attack_damage modifier add boltdmg 7.2 add_value
execute if score Global t_list_count matches 4 run attribute @s minecraft:generic.attack_damage modifier add boltdmg 9.6 add_value
execute if score Global t_list_count matches 5 run attribute @s minecraft:generic.attack_damage modifier add boltdmg 12 add_value
execute if score Global t_list_count matches 6 run attribute @s minecraft:generic.attack_damage modifier add boltdmg 14.4 add_value
execute if score Global t_list_count matches 7.. run say what

execute if score Global t_list_count matches 1.. run scoreboard players set @s boltdmg 80

scoreboard objectives remove t_list_count
data remove storage game_data bolt_hit[0].list

scoreboard players reset @s bolt
function rauch:game/ui/bossbar/bolt/invisible
