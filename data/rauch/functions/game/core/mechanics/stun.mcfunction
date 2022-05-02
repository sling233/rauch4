scoreboard players remove @s stun 1
function rauch:game/core/ui/bossbar/stun/update

execute at @s[scores={stun=59}] as @e[type=armor_stand,tag=stun] if score @s pnum = @p pnum run data modify entity @s CustomName set value '{"color":"red","text":"▉▉▉▉▉▉▉▉▉▉▉▉"}'
execute at @s[scores={stun=54}] as @e[type=armor_stand,tag=stun] if score @s pnum = @p pnum run data modify entity @s CustomName set value '{"color":"red","text":"▉▉▉▉▉▉▉▉▉▉▉"}'
execute at @s[scores={stun=49}] as @e[type=armor_stand,tag=stun] if score @s pnum = @p pnum run data modify entity @s CustomName set value '{"color":"red","text":"▉▉▉▉▉▉▉▉▉▉"}'
execute at @s[scores={stun=44}] as @e[type=armor_stand,tag=stun] if score @s pnum = @p pnum run data modify entity @s CustomName set value '{"color":"red","text":"▉▉▉▉▉▉▉▉▉"}'
execute at @s[scores={stun=39}] as @e[type=armor_stand,tag=stun] if score @s pnum = @p pnum run data modify entity @s CustomName set value '{"color":"red","text":"▉▉▉▉▉▉▉▉"}'
execute at @s[scores={stun=34}] as @e[type=armor_stand,tag=stun] if score @s pnum = @p pnum run data modify entity @s CustomName set value '{"color":"red","text":"▉▉▉▉▉▉▉"}'
execute at @s[scores={stun=29}] as @e[type=armor_stand,tag=stun] if score @s pnum = @p pnum run data modify entity @s CustomName set value '{"color":"red","text":"▉▉▉▉▉▉"}'
execute at @s[scores={stun=24}] as @e[type=armor_stand,tag=stun] if score @s pnum = @p pnum run data modify entity @s CustomName set value '{"color":"red","text":"▉▉▉▉▉"}'
execute at @s[scores={stun=19}] as @e[type=armor_stand,tag=stun] if score @s pnum = @p pnum run data modify entity @s CustomName set value '{"color":"red","text":"▉▉▉▉"}'
execute at @s[scores={stun=14}] as @e[type=armor_stand,tag=stun] if score @s pnum = @p pnum run data modify entity @s CustomName set value '{"color":"red","text":"▉▉▉"}'
execute at @s[scores={stun=9}] as @e[type=armor_stand,tag=stun] if score @s pnum = @p pnum run data modify entity @s CustomName set value '{"color":"red","text":"▉▉"}'
execute at @s[scores={stun=4}] as @e[type=armor_stand,tag=stun] if score @s pnum = @p pnum run data modify entity @s CustomName set value '{"color":"red","text":"▉"}'



#execute at @s positioned ~ ~1.6 ~ run particle minecraft:crit ~ ~ ~ 0.2 0.4 0.2 0 5 force
#execute at @p run particle minecraft:damage_indicator ~ ~1.6 ~ 0.2 0.3 0.2 0.04 1 force
#execute at @p run particle minecraft:angry_villager ~ ~1.6 ~ 0.2 0.3 0.2 0.04 1 force
execute at @s run particle minecraft:crit ~ ~2.3 ~ 0.2 0.3 0.2 0.2 5 force

execute at @s as @e[type=armor_stand,tag=stun] if score @s pnum = @p pnum run tp @p @s
effect give @s weakness 2 255 true

execute as @s[scores={stun=..0}] run function rauch:game/core/mechanics/unstun
