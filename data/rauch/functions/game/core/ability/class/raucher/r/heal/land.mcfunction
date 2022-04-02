execute as @s[tag=red] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:70,Tags:["red","r_h","cloud"]}
execute as @s[tag=blu] run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:70,Tags:["blu","r_h","cloud"]}
execute as @s[tag=red] run summon minecraft:area_effect_cloud ~ ~2 ~ {Duration:70,Tags:["red","r_h","indicator"]}
execute as @s[tag=blu] run summon minecraft:area_effect_cloud ~ ~2 ~ {Duration:70,Tags:["blu","r_h","indicator"]}
playsound minecraft:entity.puffer_fish.blow_out master @a ~ ~ ~ 1
kill @s
