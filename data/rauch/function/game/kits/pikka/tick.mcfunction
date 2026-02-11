execute as @s[scores={flyerQSchedule=..-1}] run function rauch:game/kits/pikka/q/schedule
execute as @s[tag=!flying] if predicate rauch:flying run function rauch:game/kits/pikka/fly/liftoff
execute as @s[scores={elytra=0..}] run function rauch:game/kits/pikka/fly/elytra_cooldown
execute as @s[tag=flying] run function rauch:game/kits/pikka/fly/flying

scoreboard players reset @s fly
