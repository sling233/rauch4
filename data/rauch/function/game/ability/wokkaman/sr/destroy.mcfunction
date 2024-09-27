execute as @s[tag=hit_something] at @s run particle minecraft:enchanted_hit ~ ~ ~ 0.2 0.2 0.2 2 300 force
execute as @s[tag=hit_something] at @s run particle minecraft:crit ~ ~ ~ 0.2 0.2 0.2 2 300 force
execute as @s[tag=hit_something] at @s run playsound minecraft:entity.breeze.wind_burst master @a
execute as @s[tag=!hit_something] at @s run playsound minecraft:entity.vex.hurt master @a
function rauch:macros/data_remove {storage:"wok_bow_tag",path:"list"}
kill @s
