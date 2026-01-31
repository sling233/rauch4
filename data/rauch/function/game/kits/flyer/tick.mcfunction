execute as @s[scores={slime_despawn_timer=-1}] run function rauch:game/kits/flyer/r/despawn
execute as @s[scores={flyerQSchedule=..-1}] run function rauch:game/kits/flyer/q/schedule
execute as @s[scores={flyerFSchedule=-1}] run function rauch:game/kits/flyer/f/stop_jump
execute as @s[scores={fly=1..},tag=!flying] run function rauch:game/kits/flyer/f/liftoff
execute as @s[scores={elytra=0..}] run function rauch:game/kits/flyer/f/elytra_cooldown
execute as @s[tag=flying] run function rauch:game/kits/flyer/f/flying
