scoreboard players remove Global gamestart 1
#execute if score Global gamestart matches 110 as @a[tag=game] at @s run playsound minecraft:music_disc.wait record @s
execute if score Global gamestart matches 100 as @a[tag=game] run title @s title {"text":"5","color":"gold"}
execute if score Global gamestart matches 100 as @a[tag=game] run title @s[team=Red] subtitle {"text":"You are in Team Red","color":"red"}
execute if score Global gamestart matches 100 as @a[tag=game] run title @s[team=Blue] subtitle {"text":"You are in Team Blue","color":"blue"}
#execute if score Global gamestart matches 100 as @a[tag=game] at @s run playsound minecraft:ui.button.click master @s ~ ~ ~

execute if score Global gamestart matches 80 as @a[tag=game] run title @s title {"text":"4","color":"gold"}
#execute if score Global gamestart matches 80 as @a[tag=game] at @s run playsound minecraft:ui.button.click master @s ~ ~ ~

execute if score Global gamestart matches 60 as @a[tag=game] run title @s title {"text":"3","color":"gold"}
#execute if score Global gamestart matches 60 as @a[tag=game] at @s run playsound minecraft:ui.button.click master @s ~ ~ ~

execute if score Global gamestart matches 40 as @a[tag=game] run title @s title {"text":"2","color":"gold"}
#execute if score Global gamestart matches 40 as @a[tag=game] at @s run playsound minecraft:ui.button.click master @s ~ ~ ~

execute if score Global gamestart matches 20 as @a[tag=game] run title @s title {"text":"1","color":"gold"}
#execute if score Global gamestart matches 20 as @a[tag=game] at @s run playsound minecraft:ui.button.click master @s ~ ~ ~

execute if score Global gamestart matches 0 as @a[tag=game] run title @s title {"text":"The Game has started!","color":"gold"}
#execute if score Global gamestart matches 0 as @a[tag=game] at @s run playsound minecraft:entity.ender_dragon.growl master @s ~ ~ ~

execute if score Global gamestart matches 0 as @a[tag=game] run title @s subtitle {"text":""}
execute if score Global gamestart matches 0 run scoreboard players reset Global gamestart
scoreboard players set @a[tag=game] cool1 2
scoreboard players set @a[tag=game] cool2 2
scoreboard players set @a[tag=game] cool3 2
execute at @e[tag=t1,tag=map,tag=active,type=armor_stand] run tp @a[team=Red] ~ ~-20 ~
execute at @e[tag=t2,tag=map,tag=active,type=armor_stand] run tp @a[team=Blue] ~ ~-20 ~
