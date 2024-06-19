function rauch:game/ui/bossbar/hack/set_max
function rauch:game/ui/bossbar/hack/visible

execute as @s[scores={kit=8}] unless score @s elytra matches 1.. run function rauch:game/ui/bossbar/elytra/visible
execute as @s[scores={kit=8}] unless score @s elytra matches 1.. run scoreboard players set @s elytra 1
execute as @s[scores={kit=8}] unless score @s elytra matches 1.. run function rauch:game/mechanics/armor
#execute as @s[scores={kit=1}] run function rauch:game/ability/bolt/q/remove_hit_id
execute at @s[scores={kit=2}] as @e[type=marker,tag=zarzahn] if score @s pnum = @p pnum run kill @s
execute at @s[scores={kit=2,zarzahn_hooking=0..}] run function rauch:game/ability/zarzahn/r/cancel_hook_zar
