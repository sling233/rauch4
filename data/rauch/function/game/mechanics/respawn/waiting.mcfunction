scoreboard players add @s respawn 1
function rauch:game/ui/bossbar/respawn/update

execute store result score t_respawn_time temp run function rauch:game/mode/get_respawn_time
execute if score @s respawn > t_respawn_time temp run function rauch:game/mechanics/respawn/respawn
scoreboard players reset t_respawn_time temp
