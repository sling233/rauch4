# at player stunned, as vehicle
tag @p add t_stunned
execute on passengers run function rauch:game/ability/wokkaman/r/unhook_inverted_player
tag @a remove t_stunned
kill @s
