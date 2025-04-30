# removes executing player from every wok_bow_tag list
scoreboard players operation t_pnum temp = @s pnum
execute as @a[scores={kit=9}] run function rauch:macros/auto_foreach {path:"list",storage:"wok_bow_tag",for_function:"rauch:game/ability/wokkaman/sr/remove_tag/element"}
scoreboard players reset t_pnum temp