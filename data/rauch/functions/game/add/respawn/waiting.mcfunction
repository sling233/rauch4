scoreboard players add @s respawn 1
execute if score Global mode matches 1 as @s[scores={respawn=120..}] run function rauch:game/add/respawn/respawn
execute if score Global mode matches 2 as @s[scores={respawn=120..}] run function rauch:game/add/respawn/respawn
execute if score Global mode matches 4 as @s[scores={respawn=120..}] run function rauch:game/add/respawn/respawn
function rauch:game/core/ui/bossbar/respawn/update
