execute as @s[scores={slime_despawn_timer=-1}] run function rauch:game/kits/pikka/r/despawn
execute as @s[scores={flyerQSchedule=..-1}] run function rauch:game/kits/pikka/q/schedule
execute as @s[scores={flyerFSchedule=-1}] run function rauch:game/kits/pikka/f/stop_jump
execute as @s[scores={fly=1..},tag=!flying] run function rauch:game/kits/pikka/f/liftoff
execute as @s[scores={elytra=0..}] run function rauch:game/kits/pikka/f/elytra_cooldown
execute as @s[tag=flying] run function rauch:game/kits/pikka/f/flying
