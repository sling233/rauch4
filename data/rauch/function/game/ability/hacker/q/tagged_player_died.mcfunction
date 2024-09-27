# as the player that just died
# check all the hacker's arrays to see if the player was tagged
tag @s add temp
execute as @a[scores={kit=4}] run function rauch:macros/auto_foreach {storage:"hacker_q_tag",path:"list",for_function:"rauch:game/ability/hacker/q/tag/reward_check"}
tag @s remove temp
