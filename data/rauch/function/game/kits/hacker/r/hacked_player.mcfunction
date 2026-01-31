scoreboard players remove @s hack 1
function rauch:game/ui/bossbar/hack/update

execute at @s run particle minecraft:dust_color_transition{from_color:[0.0,0.7,0.0],scale:1,to_color:[0.0,0.2,0.0]} ~ ~1 ~ 0.2 0.4 0.2 0.03 5
execute as @s[scores={hack=..0}] run function rauch:game/kits/hacker/r/hack_end
