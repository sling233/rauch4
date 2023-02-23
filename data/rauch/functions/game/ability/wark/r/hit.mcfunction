#execute as @s[scores={pnum=1}] run scoreboard players reset @p[tag=temp3] wark_hit1
#execute as @s[scores={pnum=2}] run scoreboard players reset @p[tag=temp3] wark_hit2
#execute as @s[scores={pnum=3}] run scoreboard players reset @p[tag=temp3] wark_hit3
#execute as @s[scores={pnum=4}] run scoreboard players reset @p[tag=temp3] wark_hit4
#execute as @s[scores={pnum=5}] run scoreboard players reset @p[tag=temp3] wark_hit5
#execute as @s[scores={pnum=6}] run scoreboard players reset @p[tag=temp3] wark_hit6
#execute as @s[scores={pnum=7}] run scoreboard players reset @p[tag=temp3] wark_hit7
#execute as @s[scores={pnum=8}] run scoreboard players reset @p[tag=temp3] wark_hit8
#execute as @s[scores={pnum=9}] run scoreboard players reset @p[tag=temp3] wark_hit9
#execute as @s[scores={pnum=10}] run scoreboard players reset @p[tag=temp3] wark_hit10
#execute as @s[scores={pnum=11}] run scoreboard players reset @p[tag=temp3] wark_hit11
#execute as @s[scores={pnum=12}] run scoreboard players reset @p[tag=temp3] wark_hit12

execute if entity @p[tag=temp3,scores={pnum=1}] run tag @s add wark_hitby1
execute if entity @p[tag=temp3,scores={pnum=2}] run tag @s add wark_hitby2
execute if entity @p[tag=temp3,scores={pnum=3}] run tag @s add wark_hitby3
execute if entity @p[tag=temp3,scores={pnum=4}] run tag @s add wark_hitby4
execute if entity @p[tag=temp3,scores={pnum=5}] run tag @s add wark_hitby5
execute if entity @p[tag=temp3,scores={pnum=6}] run tag @s add wark_hitby6
execute if entity @p[tag=temp3,scores={pnum=7}] run tag @s add wark_hitby7
execute if entity @p[tag=temp3,scores={pnum=8}] run tag @s add wark_hitby8
execute if entity @p[tag=temp3,scores={pnum=9}] run tag @s add wark_hitby9
execute if entity @p[tag=temp3,scores={pnum=10}] run tag @s add wark_hitby10
execute if entity @p[tag=temp3,scores={pnum=11}] run tag @s add wark_hitby11
execute if entity @p[tag=temp3,scores={pnum=12}] run tag @s add wark_hitby12

tellraw @s [{"text":"The Wark ","color":"red"},{"selector":"@a[tag=temp3,limit=1]"},{"text":" focused on you! Hit them to break the curse!"}]
execute at @s run playsound minecraft:entity.warden.dig master @s
scoreboard players set @s wark_r 240
function rauch:game/ui/bossbar/wark_r/visible
