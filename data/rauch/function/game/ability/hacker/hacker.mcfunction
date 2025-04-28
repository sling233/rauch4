scoreboard players remove @s[scores={hacker_damage_timer_control=0..}] hacker_damage_timer_control 1
execute as @s[scores={hacker_damage_timer_control=..0}] run function rauch:game/ability/hacker/q/tag_end
scoreboard players remove @s[scores={hack_tag_timer=0..}] hack_tag_timer 1
execute as @s[scores={hack_tag_timer=..0}] run function rauch:game/ability/hacker/r/tag_end
