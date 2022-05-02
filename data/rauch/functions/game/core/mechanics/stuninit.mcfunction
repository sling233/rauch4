execute at @s unless entity @s[scores={tank=1..}] as @e[type=minecraft:armor_stand,tag=stun] if score @s pnum = @p pnum run kill @s
execute at @s unless entity @s[scores={tank=1..}] run summon minecraft:armor_stand ~ ~ ~ {CustomName:'{"text":""}',CustomNameVisible:1b,Invisible:1b,Marker:0b,NoGravity:1b,Tags:["setup","stun"]}
execute at @s unless entity @s[scores={tank=1..}] run scoreboard players operation @e[type=minecraft:armor_stand,tag=setup,tag=stun,sort=nearest,limit=1] pnum = @s pnum
execute at @s unless entity @s[scores={tank=1..}] run tp @e[type=minecraft:armor_stand,tag=setup,tag=stun,sort=nearest,limit=1] @s
execute at @s unless entity @s[scores={tank=1..}] run tag @e[type=minecraft:armor_stand,tag=setup,tag=stun,sort=nearest,limit=1] remove setup

execute at @s[scores={pnum=1}] unless entity @s[scores={tank=1..}] store result bossbar minecraft:stun1 max run scoreboard players get @s stun
execute at @s[scores={pnum=2}] unless entity @s[scores={tank=1..}] store result bossbar minecraft:stun2 max run scoreboard players get @s stun
execute at @s[scores={pnum=3}] unless entity @s[scores={tank=1..}] store result bossbar minecraft:stun3 max run scoreboard players get @s stun
execute at @s[scores={pnum=4}] unless entity @s[scores={tank=1..}] store result bossbar minecraft:stun4 max run scoreboard players get @s stun
execute at @s[scores={pnum=5}] unless entity @s[scores={tank=1..}] store result bossbar minecraft:stun5 max run scoreboard players get @s stun
execute at @s[scores={pnum=6}] unless entity @s[scores={tank=1..}] store result bossbar minecraft:stun6 max run scoreboard players get @s stun
execute at @s[scores={pnum=7}] unless entity @s[scores={tank=1..}] store result bossbar minecraft:stun7 max run scoreboard players get @s stun
execute at @s[scores={pnum=8}] unless entity @s[scores={tank=1..}] store result bossbar minecraft:stun8 max run scoreboard players get @s stun
execute at @s[scores={pnum=9}] unless entity @s[scores={tank=1..}] store result bossbar minecraft:stun9 max run scoreboard players get @s stun
execute at @s[scores={pnum=10}] unless entity @s[scores={tank=1..}] store result bossbar minecraft:stun10 max run scoreboard players get @s stun
execute at @s[scores={pnum=11}] unless entity @s[scores={tank=1..}] store result bossbar minecraft:stun11 max run scoreboard players get @s stun
execute at @s[scores={pnum=12}] unless entity @s[scores={tank=1..}] store result bossbar minecraft:stun12 max run scoreboard players get @s stun
function rauch:game/core/ui/bossbar/stun/visible

execute at @s[scores={tank=1..}] run scoreboard players reset @s stun
