# set @s's data to element 0 in bolt_hit
function rauch:game/core/ability/bolt/q/array/find_me

# call functuion for every tagged player
function rauch:game/core/ability/bolt/q/array/for_tagged

# give buff (save count of hit players in temp variable)
scoreboard objectives add t_list_count dummy
execute store result score Global t_list_count run data get storage game_data bolt_hit[0].list

execute as @s[scores={t_list_count=0}] at @s run playsound minecraft:block.beacon.deactivate master @a
execute as @s[scores={t_list_count=1}] run attribute @s minecraft:generic.attack_damage modifier add 0-0-0-0-4 "boltdmg1" 2.4 add
execute as @s[scores={t_list_count=2}] run attribute @s minecraft:generic.attack_damage modifier add 0-0-0-0-5 "boltdmg2" 4.8 add
execute as @s[scores={t_list_count=3}] run attribute @s minecraft:generic.attack_damage modifier add 0-0-0-0-6 "boltdmg3" 7.2 add
execute as @s[scores={t_list_count=4}] run attribute @s minecraft:generic.attack_damage modifier add 0-0-0-0-7 "boltdmg4" 9.6 add
execute as @s[scores={t_list_count=5}] run attribute @s minecraft:generic.attack_damage modifier add 0-0-0-0-8 "boltdmg5" 12 add
execute as @s[scores={t_list_count=6}] run attribute @s minecraft:generic.attack_damage modifier add 0-0-0-0-9 "boltdmg6" 14.4 add
execute as @s[scores={t_list_count=6..}] run say what

execute as @s[scores={t_list_count=1..}] run scoreboard players set @s boltdmg 80

scoreboard objectives remove t_list_count
data remove storage game_data bolt_hit[0].list

scoreboard players reset @s bolt
function rauch:game/core/ui/bossbar/bolt/invisible
