# gets called by died player in case they are on a hit list
scoreboard players operation t_pnum temp = @s pnum
execute as @a[tag=game,tag=!dead,scores={kit=1,bolt=1..}] run function rauch:macros/auto_foreach {storage:"bolt_hit",path:"list",for_function:"rauch:game/kits/bolt/q/remove_idk"}
scoreboard players reset t_pnum temp

