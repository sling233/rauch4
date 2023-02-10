# set @s's data to front of bolt_hit
function rauch:game/core/ability/bolt/q/array/find_me

scoreboard objectives add found dummy
# test if hit player was hit before (sets found to 1 if yes)
function rauch:game/core/ability/bolt/q/array/hit_pnum_check

execute unless score Global found matches 1 run data modify storage game_data bolt_hit[0].list prepend value -1
execute unless score Global found matches 1 store result storage game_data bolt_hit[0].list[0] int 1 run scoreboard players get @s hitPnum
execute at @s as @a if score @s pnum = @p hitPnum run function rauch:game/core/ability/bolt/q/tag_action
scoreboard objectives remove found
