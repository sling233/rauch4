scoreboard players add @s respawn 1
execute if score Global mode matches 1 as @s[scores={respawn=120..}] run function rauch:game/mechanics/respawn/respawn
execute if score Global mode matches 2 as @s[scores={respawn=120..}] run function rauch:game/mechanics/respawn/respawn
execute if score Global mode matches 3 as @s[scores={respawn=10..}] run function rauch:game/mechanics/respawn/respawn
execute if score Global mode matches 4 as @s[scores={respawn=120..}] run function rauch:game/mechanics/respawn/respawn
execute if score Global mode matches 5 as @s[scores={respawn=120..}] run function rauch:game/mechanics/respawn/respawn
function rauch:game/ui/bossbar/respawn/update
