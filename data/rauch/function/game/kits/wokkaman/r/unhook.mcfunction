# at hooking player, as vehicle
tag @p add t_hooker
execute on passengers run function rauch:game/kits/wokkaman/r/unhook_player
tag @p remove t_hooker
kill @s
