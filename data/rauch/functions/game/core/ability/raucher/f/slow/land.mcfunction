execute as @s[tag=red] run summon minecraft:marker ~ ~ ~ {Tags:["red","r_s","cloud","projectile"]}
execute as @s[tag=blu] run summon minecraft:marker ~ ~ ~ {Tags:["blu","r_s","cloud","projectile"]}
execute as @s[tag=red] run summon minecraft:marker ~ ~2 ~ {Tags:["red","r_s","indicator"]}
execute as @s[tag=blu] run summon minecraft:marker ~ ~2 ~ {Tags:["blu","r_s","indicator"]}
playsound minecraft:block.fire.extinguish master @a ~ ~ ~ 1
kill @s
