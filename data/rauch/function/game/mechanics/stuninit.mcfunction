execute at @s as @e[type=minecraft:armor_stand,tag=stun] if score @s pnum = @p pnum run kill @s
execute at @s run summon minecraft:armor_stand ~ ~ ~ {CustomName:{"text":"a long time"},CustomNameVisible:1b,Invisible:1b,Marker:0b,NoGravity:1b,Tags:["setup","stun"]}
execute at @s run scoreboard players operation @e[type=minecraft:armor_stand,tag=setup,tag=stun,sort=nearest,limit=1] pnum = @s pnum
execute at @s run tp @e[type=minecraft:armor_stand,tag=setup,tag=stun,sort=nearest,limit=1] @s
execute at @s run tag @e[type=minecraft:armor_stand,tag=setup,tag=stun,sort=nearest,limit=1] remove setup

execute at @s[scores={pnum=1}] store result bossbar minecraft:stun1 max run scoreboard players get @s stun
execute at @s[scores={pnum=2}] store result bossbar minecraft:stun2 max run scoreboard players get @s stun
execute at @s[scores={pnum=3}] store result bossbar minecraft:stun3 max run scoreboard players get @s stun
execute at @s[scores={pnum=4}] store result bossbar minecraft:stun4 max run scoreboard players get @s stun
execute at @s[scores={pnum=5}] store result bossbar minecraft:stun5 max run scoreboard players get @s stun
execute at @s[scores={pnum=6}] store result bossbar minecraft:stun6 max run scoreboard players get @s stun
execute at @s[scores={pnum=7}] store result bossbar minecraft:stun7 max run scoreboard players get @s stun
execute at @s[scores={pnum=8}] store result bossbar minecraft:stun8 max run scoreboard players get @s stun
execute at @s[scores={pnum=9}] store result bossbar minecraft:stun9 max run scoreboard players get @s stun
execute at @s[scores={pnum=10}] store result bossbar minecraft:stun10 max run scoreboard players get @s stun
execute at @s[scores={pnum=11}] store result bossbar minecraft:stun11 max run scoreboard players get @s stun
execute at @s[scores={pnum=12}] store result bossbar minecraft:stun12 max run scoreboard players get @s stun
function rauch:game/ui/bossbar/stun/visible
