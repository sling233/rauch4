execute as @s[tag=t1] run data modify entity @s Pos set from entity @e[type=armor_stand,tag=map,tag=root,tag=active,limit=1] ArmorItems[3].tag.Cords[0]
execute as @s[tag=t2] run data modify entity @s Pos set from entity @e[type=armor_stand,tag=map,tag=root,tag=active,limit=1] ArmorItems[3].tag.Cords[1]
execute as @s[tag=ce] run data modify entity @s Pos set from entity @e[type=armor_stand,tag=map,tag=root,tag=active,limit=1] ArmorItems[3].tag.Cords[2]

execute at @s[tag=t1] run tp @a[team=Red] ~ ~-20 ~
execute at @s[tag=t2] run tp @a[team=Blue] ~ ~-20 ~

execute at @s[tag=t1] run spawnpoint @a[team=Red] ~ ~-20 ~
execute at @s[tag=t2] run spawnpoint @a[team=Blue] ~ ~-20 ~
