execute as @s[scores={wark_buff=0..}] run function rauch:game/ability/wark/q/buff
execute as @s[scores={wark_f=..-1}] run function rauch:game/ability/wark/f/schedule
scoreboard players add @s[scores={wark_charge=..99999}] wark_charge 50
scoreboard players remove @s[scores={wark_charge=100200..}] wark_charge 200
