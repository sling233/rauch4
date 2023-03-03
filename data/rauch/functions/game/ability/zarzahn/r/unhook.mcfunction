scoreboard objectives add t_hooker dummy
scoreboard players operation Global t_hooker = @s zarzahn_f
execute on passengers run function rauch:game/ability/zarzahn/r/unhook_player
scoreboard objectives remove t_hooker
kill @s
