# as bolt
function rauch:macros/data_get {storage:"bolt_hit"}

# save count of hit players in temp variable
scoreboard players set t_hit_count temp 0
# for each player hit 
tag @s add t_bolt
function rauch:macros/foreach {for_path:"macros data.list",for_function:"rauch:game/kits/bolt/q/for_hit_entry"}
tag @s remove t_bolt

# give damage buff
execute if score t_hit_count temp matches 0 at @s run playsound minecraft:block.beacon.deactivate master @a
execute if score t_hit_count temp matches 1 run attribute @s minecraft:attack_damage modifier add boltdmg 2.4 add_value
execute if score t_hit_count temp matches 2 run attribute @s minecraft:attack_damage modifier add boltdmg 4.8 add_value
execute if score t_hit_count temp matches 3 run attribute @s minecraft:attack_damage modifier add boltdmg 7.2 add_value
execute if score t_hit_count temp matches 4 run attribute @s minecraft:attack_damage modifier add boltdmg 9.6 add_value
execute if score t_hit_count temp matches 5 run attribute @s minecraft:attack_damage modifier add boltdmg 12 add_value
execute if score t_hit_count temp matches 6.. run attribute @s minecraft:attack_damage modifier add boltdmg 14.4 add_value
execute if score t_hit_count temp matches 1.. run scoreboard players set @s boltdmg 80


scoreboard players reset @s bolt
function rauch:game/ui/bossbar/bolt/invisible

scoreboard players reset t_hit_count temp
function rauch:macros/data_remove {storage:"bolt_hit",path:"list"}