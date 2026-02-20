scoreboard players remove @s stun 1
function rauch:game/ui/bossbar/stun/update

tag @s add temp
execute if score @s stun matches 89 as @e[type=armor_stand,tag=stun] if score @s pnum = @a[tag=temp,limit=1] pnum run data modify entity @s CustomName set value {"color":"red","text":"▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉"}
execute if score @s stun matches 84 as @e[type=armor_stand,tag=stun] if score @s pnum = @a[tag=temp,limit=1] pnum run data modify entity @s CustomName set value {"color":"red","text":"▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉"}
execute if score @s stun matches 79 as @e[type=armor_stand,tag=stun] if score @s pnum = @a[tag=temp,limit=1] pnum run data modify entity @s CustomName set value {"color":"red","text":"▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉"}
execute if score @s stun matches 74 as @e[type=armor_stand,tag=stun] if score @s pnum = @a[tag=temp,limit=1] pnum run data modify entity @s CustomName set value {"color":"red","text":"▉▉▉▉▉▉▉▉▉▉▉▉▉▉▉"}
execute if score @s stun matches 69 as @e[type=armor_stand,tag=stun] if score @s pnum = @a[tag=temp,limit=1] pnum run data modify entity @s CustomName set value {"color":"red","text":"▉▉▉▉▉▉▉▉▉▉▉▉▉▉"}
execute if score @s stun matches 64 as @e[type=armor_stand,tag=stun] if score @s pnum = @a[tag=temp,limit=1] pnum run data modify entity @s CustomName set value {"color":"red","text":"▉▉▉▉▉▉▉▉▉▉▉▉▉"}
execute if score @s stun matches 59 as @e[type=armor_stand,tag=stun] if score @s pnum = @a[tag=temp,limit=1] pnum run data modify entity @s CustomName set value {"color":"red","text":"▉▉▉▉▉▉▉▉▉▉▉▉"}
execute if score @s stun matches 54 as @e[type=armor_stand,tag=stun] if score @s pnum = @a[tag=temp,limit=1] pnum run data modify entity @s CustomName set value {"color":"red","text":"▉▉▉▉▉▉▉▉▉▉▉"}
execute if score @s stun matches 49 as @e[type=armor_stand,tag=stun] if score @s pnum = @a[tag=temp,limit=1] pnum run data modify entity @s CustomName set value {"color":"red","text":"▉▉▉▉▉▉▉▉▉▉"}
execute if score @s stun matches 44 as @e[type=armor_stand,tag=stun] if score @s pnum = @a[tag=temp,limit=1] pnum run data modify entity @s CustomName set value {"color":"red","text":"▉▉▉▉▉▉▉▉▉"}
execute if score @s stun matches 39 as @e[type=armor_stand,tag=stun] if score @s pnum = @a[tag=temp,limit=1] pnum run data modify entity @s CustomName set value {"color":"red","text":"▉▉▉▉▉▉▉▉"}
execute if score @s stun matches 34 as @e[type=armor_stand,tag=stun] if score @s pnum = @a[tag=temp,limit=1] pnum run data modify entity @s CustomName set value {"color":"red","text":"▉▉▉▉▉▉▉"}
execute if score @s stun matches 29 as @e[type=armor_stand,tag=stun] if score @s pnum = @a[tag=temp,limit=1] pnum run data modify entity @s CustomName set value {"color":"red","text":"▉▉▉▉▉▉"}
execute if score @s stun matches 24 as @e[type=armor_stand,tag=stun] if score @s pnum = @a[tag=temp,limit=1] pnum run data modify entity @s CustomName set value {"color":"red","text":"▉▉▉▉▉"}
execute if score @s stun matches 19 as @e[type=armor_stand,tag=stun] if score @s pnum = @a[tag=temp,limit=1] pnum run data modify entity @s CustomName set value {"color":"red","text":"▉▉▉▉"}
execute if score @s stun matches 14 as @e[type=armor_stand,tag=stun] if score @s pnum = @a[tag=temp,limit=1] pnum run data modify entity @s CustomName set value {"color":"red","text":"▉▉▉"}
execute if score @s stun matches 9 as @e[type=armor_stand,tag=stun] if score @s pnum = @a[tag=temp,limit=1] pnum run data modify entity @s CustomName set value {"color":"red","text":"▉▉"}
execute if score @s stun matches 4 as @e[type=armor_stand,tag=stun] if score @s pnum = @a[tag=temp,limit=1] pnum run data modify entity @s CustomName set value {"color":"red","text":"▉"}

execute as @e[type=armor_stand,tag=stun] if score @s pnum = @a[tag=temp,limit=1] pnum run tp @a[tag=temp,limit=1] @s
tag @s remove temp

#execute at @s positioned ~ ~1.6 ~ run particle minecraft:crit ~ ~ ~ 0.2 0.4 0.2 0 5 force
#execute at @p run particle minecraft:damage_indicator ~ ~1.6 ~ 0.2 0.3 0.2 0.04 1 force
#execute at @p run particle minecraft:angry_villager ~ ~1.6 ~ 0.2 0.3 0.2 0.04 1 force
execute at @s run particle minecraft:crit ~ ~2.3 ~ 0.2 0.3 0.2 0.2 5 force

effect give @s weakness 2 255 true

execute as @s[scores={stun=..0}] run function rauch:game/mechanics/unstun
