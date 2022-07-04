execute as @s[scores={wark_buff=0..}] run function rauch:game/core/ability/wark/q/buff
execute as @s[scores={wark_f=..-1}] run function rauch:game/core/ability/wark/f/schedule
execute as @s[scores={hitPnum=1..}] run function rauch:game/core/ability/wark/r/hit_player
execute as @s[scores={wark_hit1=..-1}] run function rauch:game/core/ability/wark/r/tag1
execute as @s[scores={wark_hit2=..-1}] run function rauch:game/core/ability/wark/r/tag2
