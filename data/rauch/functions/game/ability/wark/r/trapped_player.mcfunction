scoreboard players remove @s wark_detect 1
function rauch:game/ui/bossbar/wark/update_detect
execute as @s[scores={pnum=1}] at @s unless entity @e[type=marker,tag=wark_detect,tag=active,distance=..3,scores={wark_charge=1}] run function rauch:game/ability/wark/r/out
execute as @s[scores={pnum=2}] at @s unless entity @e[type=marker,tag=wark_detect,tag=active,distance=..3,scores={wark_charge=2}] run function rauch:game/ability/wark/r/out
execute as @s[scores={pnum=3}] at @s unless entity @e[type=marker,tag=wark_detect,tag=active,distance=..3,scores={wark_charge=3}] run function rauch:game/ability/wark/r/out
execute as @s[scores={pnum=4}] at @s unless entity @e[type=marker,tag=wark_detect,tag=active,distance=..3,scores={wark_charge=4}] run function rauch:game/ability/wark/r/out
execute as @s[scores={pnum=5}] at @s unless entity @e[type=marker,tag=wark_detect,tag=active,distance=..3,scores={wark_charge=5}] run function rauch:game/ability/wark/r/out
execute as @s[scores={pnum=6}] at @s unless entity @e[type=marker,tag=wark_detect,tag=active,distance=..3,scores={wark_charge=6}] run function rauch:game/ability/wark/r/out
execute as @s[scores={pnum=7}] at @s unless entity @e[type=marker,tag=wark_detect,tag=active,distance=..3,scores={wark_charge=7}] run function rauch:game/ability/wark/r/out
execute as @s[scores={pnum=8}] at @s unless entity @e[type=marker,tag=wark_detect,tag=active,distance=..3,scores={wark_charge=8}] run function rauch:game/ability/wark/r/out
execute as @s[scores={pnum=9}] at @s unless entity @e[type=marker,tag=wark_detect,tag=active,distance=..3,scores={wark_charge=9}] run function rauch:game/ability/wark/r/out
execute as @s[scores={pnum=10}] at @s unless entity @e[type=marker,tag=wark_detect,tag=active,distance=..3,scores={wark_charge=10}] run function rauch:game/ability/wark/r/out
execute as @s[scores={pnum=11}] at @s unless entity @e[type=marker,tag=wark_detect,tag=active,distance=..3,scores={wark_charge=11}] run function rauch:game/ability/wark/r/out
execute as @s[scores={pnum=12}] at @s unless entity @e[type=marker,tag=wark_detect,tag=active,distance=..3,scores={wark_charge=12}] run function rauch:game/ability/wark/r/out
execute as @s[scores={wark_detect=..0}] run function rauch:game/ability/wark/r/end
