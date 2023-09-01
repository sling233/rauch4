scoreboard players remove Global gamestart 1
#execute if score Global gamestart matches 110 as @a[tag=game] at @s run playsound minecraft:music_disc.wait record @s
execute if score Global gamestart matches 100 as @a[tag=game] run title @s times 10 0 10
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
execute if score Global gamestart matches 0 as @a[tag=game] run title @s[team=Red] subtitle {"text":"You are in Team Red","color":"red"}
execute if score Global gamestart matches 0 as @a[tag=game] run title @s[team=Blue] subtitle {"text":"You are in Team Blue","color":"blue"}
execute if score Global gamestart matches 0 as @a[tag=game] run title @s times 10 30 10
#execute if score Global gamestart matches 0 as @a[tag=game] at @s run playsound minecraft:entity.ender_dragon.growl master @s ~ ~ ~

#execute if score Global gamestart matches 0 as @a[tag=game] run title @s subtitle {"text":""}
execute if score Global gamestart matches 0 run scoreboard players reset Global gamestart

execute if score Global mode matches 1 run scoreboard players set Global time_red 400200
execute if score Global mode matches 1 run scoreboard players set Global time_blue 400200
execute if score Global mode matches 4 run scoreboard players set Global ctf_time 3600
scoreboard players set @a[tag=game] cool1 2
scoreboard players set @a[tag=game] cool2 2
scoreboard players set @a[tag=game] cool3 2
scoreboard players set @a[tag=game,scores={kit=5}] wark_charge 0

# tp players every 10 ticks because tp-ing every tick leads to problems for minecraft on servers
scoreboard objectives add mod10 dummy
scoreboard players operation Global mod10 = Global gamestart
scoreboard players operation Global mod10 %= Global 10
execute if score Global mod10 matches 0 at @e[type=marker,tag=t1,tag=map] run tp @a[team=Red] ~ ~-20 ~
execute if score Global mod10 matches 0 at @e[type=marker,tag=t2,tag=map] run tp @a[team=Blue] ~ ~-20 ~
scoreboard objectives remove mod10
