# $(index) has current index. Hacker is @s, player hit has tag temp
$execute store result score %comparer global run data get storage macros data.list[$(index)]
execute if score @a[tag=temp,limit=1] pnum = %comparer global run function rauch:game/ability/hacker/r/tag/reward_found
# a bit ugly, but this removes the player from the list
$execute if score Global for_break matches 1 run data remove storage macros data.list[$(index)]
scoreboard players reset %comparer global