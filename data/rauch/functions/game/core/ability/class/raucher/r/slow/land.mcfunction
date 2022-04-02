execute as @s[tag=red] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:80,Tags:["red","r_s","cloud"]}
execute as @s[tag=blu] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:80,Tags:["blu","r_s","cloud"]}
execute as @s[tag=red] run summon minecraft:area_effect_cloud ~ ~2 ~ {Duration:80,Tags:["red","r_s","indicator"]}
execute as @s[tag=blu] run summon minecraft:area_effect_cloud ~ ~2 ~ {Duration:80,Tags:["blu","r_s","indicator"]}
playsound minecraft:block.fire.extinguish master @a ~ ~ ~ 1
kill @s
