tag @s add temp
execute as @a[scores={kit=4}] run function rauch:macros/auto_foreach {storage:"hacker_q_tag",path:"list",for_function:"rauch:game/kits/hacker/q/tag/remove_tag"}
tag @s remove temp
