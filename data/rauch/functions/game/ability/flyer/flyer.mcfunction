execute as @s[scores={slime_despawn_timer=-1}] run function rauch:game/ability/flyer/r/despawn
execute as @s[scores={flyerRSchedule=..0}] run function rauch:game/ability/flyer/r/schedule
execute as @s[scores={flyerQSchedule=..-1}] run function rauch:game/ability/flyer/q/schedule
execute as @s[scores={flyerFSchedule=-1}] run function rauch:game/ability/flyer/f/stop_jump
execute as @s[scores={fly=1..},tag=!flying] run function rauch:game/ability/flyer/f/liftoff
execute as @s[scores={elytra=0..}] run function rauch:game/ability/flyer/f/elytra_cooldown
execute as @s[tag=flying] run function rauch:game/ability/flyer/f/flying
