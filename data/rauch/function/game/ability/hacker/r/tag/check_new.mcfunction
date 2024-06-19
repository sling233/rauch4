# $(index) has current index. Hacker is @s, player hit has tag temp

# # check if player was already tagged (if yes found is set to 1)
$execute store result score %comparer global run data get storage macros data.list[$(index)]
execute if score @a[tag=temp,limit=1] pnum = %comparer global run function rauch:game/ability/hacker/r/tag/check_found
scoreboard players reset %comparer global
