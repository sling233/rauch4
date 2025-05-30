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

#scoreboard players set @a[tag=game] cool1 2
#scoreboard players set @a[tag=game] cool2 2
#scoreboard players set @a[tag=game] cool3 2

# counteract wark q charge changes during countdown
scoreboard players remove @a[scores={wark_charge=..99999}] wark_charge 75
scoreboard players add @a[scores={wark_charge=100150..}] wark_charge 150

# tp players every 10 ticks because tp-ing every tick leads to problems for minecraft on servers
scoreboard players set 10 const 10

scoreboard players operation t_mod10 temp = Global gamestart
scoreboard players operation t_mod10 temp %= 10 const
execute if score t_mod10 temp matches 0 at @e[type=marker,tag=t1,tag=map] run tp @a[team=Red] ~ ~-20 ~
execute if score t_mod10 temp matches 0 at @e[type=marker,tag=t2,tag=map] run tp @a[team=Blue] ~ ~-20 ~
scoreboard players reset t_mod10 temp
