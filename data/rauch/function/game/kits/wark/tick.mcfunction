execute as @s[scores={wark_buff=0..}] run function rauch:game/kits/wark/q/buff
execute as @s[scores={wark_f=..-1}] run function rauch:game/kits/wark/f/schedule
scoreboard players add @s[scores={wark_charge=..99999}] wark_charge 75
scoreboard players remove @s[scores={wark_charge=100150..}] wark_charge 150
