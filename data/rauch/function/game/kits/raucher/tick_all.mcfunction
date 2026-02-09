execute as @s[tag=raucher_control,tag=!raucher_debuff] run function rauch:game/kits/raucher/r/slow/leave
execute as @s[scores={raucherdmg=0..}] run function rauch:game/kits/raucher/q/buff
tag @s remove raucher_debuff
