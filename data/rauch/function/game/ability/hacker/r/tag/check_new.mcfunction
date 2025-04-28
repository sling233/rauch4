# $(index) has current index. Hacker is @s, player hit has tag temp

# check if player was already tagged (if yes found is set to 1)
$execute store result score t_comparer temp run data get storage macros data.list[$(index)]
execute if score @a[tag=temp,limit=1] pnum = t_comparer temp run function rauch:game/ability/hacker/r/tag/check_found
scoreboard players reset t_comparer temp
