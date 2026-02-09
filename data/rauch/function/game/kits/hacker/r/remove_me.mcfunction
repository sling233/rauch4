# removes @s from all hacker q lists
tag @s add temp
execute as @a[scores={kit=4}] run function rauch:macros/auto_foreach {storage:"hacker_r_tag",path:"list",for_function:"rauch:game/kits/hacker/r/tag/remove_tag"}
tag @s remove temp
