execute at @s[team=Red] run function rauch:game/core/ability/wark/r/detectred
execute at @s[team=Blue] run function rauch:game/core/ability/wark/r/detectblue

execute as @s[scores={wark_hit1=..1}] as @a[scores={pnum=1},tag=temp] run tag @s add temp2
execute as @s[scores={wark_hit2=..1}] as @a[scores={pnum=2},tag=temp] run tag @s add temp2
execute as @s[scores={wark_hit3=..1}] as @a[scores={pnum=3},tag=temp] run tag @s add temp2
execute as @s[scores={wark_hit4=..1}] as @a[scores={pnum=4},tag=temp] run tag @s add temp2
execute as @s[scores={wark_hit5=..1}] as @a[scores={pnum=5},tag=temp] run tag @s add temp2
execute as @s[scores={wark_hit6=..1}] as @a[scores={pnum=6},tag=temp] run tag @s add temp2
execute as @s[scores={wark_hit7=..1}] as @a[scores={pnum=7},tag=temp] run tag @s add temp2
execute as @s[scores={wark_hit8=..1}] as @a[scores={pnum=8},tag=temp] run tag @s add temp2
execute as @s[scores={wark_hit9=..1}] as @a[scores={pnum=9},tag=temp] run tag @s add temp2
execute as @s[scores={wark_hit10=..1}] as @a[scores={pnum=10},tag=temp] run tag @s add temp2
execute as @s[scores={wark_hit11=..1}] as @a[scores={pnum=11},tag=temp] run tag @s add temp2
execute as @s[scores={wark_hit12=..1}] as @a[scores={pnum=12},tag=temp] run tag @s add temp2
tag @s add temp3
execute at @s as @a[tag=temp2,limit=1,sort=furthest] run function rauch:game/core/ability/wark/r/hit
tag @s remove temp3

#execute if entity @a[tag=temp2] at @s run playsound minecraft:entity.warden.listening_angry master @a
execute if entity @a[tag=temp2] run scoreboard players operation @s cool1 = @s cool1_target
execute unless entity @a[tag=temp2] at @s run playsound minecraft:entity.puffer_fish.blow_out master @s
execute unless entity @a[tag=temp2] at @s run tellraw @s {"text":"No tagged enemy found!","color":"red"}

tag @a remove temp
tag @a remove temp2
