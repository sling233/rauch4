execute as @s[tag=hit_something] at @s run particle minecraft:enchanted_hit ~ ~ ~ 0.2 0.2 0.2 2 300 force
execute as @s[tag=hit_something] at @s run particle minecraft:crit ~ ~ ~ 0.2 0.2 0.2 2 300 force
execute as @s[tag=hit_something] at @s run particle flash{color:[1,1,1,1]} ~ ~ ~ 0 0 0 1 1 force
execute as @s[tag=hit_something] at @s run playsound minecraft:entity.breeze.wind_burst master @a
execute as @s[tag=!hit_something] at @s run playsound minecraft:entity.vex.hurt master @a

# stun each player hit
function rauch:macros/data_get {storage:"wok_bow_tag"}
function rauch:macros/foreach {for_path:"macros data.list",for_function:"rauch:game/kits/wokkaman/sr/stun_foreach"}

function rauch:macros/data_remove {storage:"wok_bow_tag",path:"list"}
kill @s
