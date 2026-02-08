# as player hit, wark has tag t_wark 
scoreboard players set @s wark_startup 0
execute as @s[scores={pnum=1}] run bossbar set minecraft:wark1 max 20
execute as @s[scores={pnum=2}] run bossbar set minecraft:wark2 max 20
execute as @s[scores={pnum=3}] run bossbar set minecraft:wark3 max 20
execute as @s[scores={pnum=4}] run bossbar set minecraft:wark4 max 20
execute as @s[scores={pnum=5}] run bossbar set minecraft:wark5 max 20
execute as @s[scores={pnum=6}] run bossbar set minecraft:wark6 max 20
execute as @s[scores={pnum=7}] run bossbar set minecraft:wark7 max 20
execute as @s[scores={pnum=8}] run bossbar set minecraft:wark8 max 20
execute as @s[scores={pnum=9}] run bossbar set minecraft:wark9 max 20
execute as @s[scores={pnum=10}] run bossbar set minecraft:wark10 max 20
execute as @s[scores={pnum=11}] run bossbar set minecraft:wark11 max 20
execute as @s[scores={pnum=12}] run bossbar set minecraft:wark12 max 20
function rauch:game/ui/bossbar/wark/visible
execute at @s run playsound minecraft:entity.warden.death master @s

execute at @s run summon marker ~ ~ ~ {Tags:["wark_detect","setup"]}
scoreboard players operation @e[type=marker,tag=wark_detect,tag=setup,limit=1] pnum = @a[tag=t_wark,limit=1] pnum
scoreboard players operation @e[type=marker,tag=wark_detect,tag=setup,limit=1] wark_charge = @s pnum
tag @e[type=marker,tag=wark_detect,tag=setup] remove setup
