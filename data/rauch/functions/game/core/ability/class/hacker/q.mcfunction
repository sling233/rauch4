scoreboard players set @s hacking 15
scoreboard players operation @s cool2 = @s cool2_target

summon area_effect_cloud ~ ~ ~ {Particle:"dust",Duration:14,Tags:["f","hacker2","hacker2_setup"]}
summon area_effect_cloud ~ ~ ~ {Particle:"dust",Duration:14,Tags:["b","hacker2","hacker2_setup"]}
summon area_effect_cloud ~ ~ ~ {Particle:"dust",Duration:14,Tags:["l","hacker2","hacker2_setup"]}
summon area_effect_cloud ~ ~ ~ {Particle:"dust",Duration:14,Tags:["r","hacker2","hacker2_setup"]}
summon area_effect_cloud ~ ~ ~ {Particle:"dust",Duration:14,Tags:["fl","hacker2","hacker2_setup"]}
summon area_effect_cloud ~ ~ ~ {Particle:"dust",Duration:14,Tags:["fr","hacker2","hacker2_setup"]}
summon area_effect_cloud ~ ~ ~ {Particle:"dust",Duration:14,Tags:["bl","hacker2","hacker2_setup"]}
summon area_effect_cloud ~ ~ ~ {Particle:"dust",Duration:14,Tags:["br","hacker2","hacker2_setup"]}

tp @e[type=area_effect_cloud,tag=hacker2_setup] @s
#execute as @e[type=area_effect_cloud,tag=hacker2_setup] at @s run tp @s ~ ~ ~
execute as @e[type=area_effect_cloud,tag=hacker2_setup,tag=f] at @s run tp @s ~ ~ ~ ~0 0
execute as @e[type=area_effect_cloud,tag=hacker2_setup,tag=b] at @s run tp @s ~ ~ ~ ~180 0
execute as @e[type=area_effect_cloud,tag=hacker2_setup,tag=l] at @s run tp @s ~ ~ ~ ~-90 0
execute as @e[type=area_effect_cloud,tag=hacker2_setup,tag=r] at @s run tp @s ~ ~ ~ ~90 0
execute as @e[type=area_effect_cloud,tag=hacker2_setup,tag=fl] at @s run tp @s ~ ~ ~ ~-45 0
execute as @e[type=area_effect_cloud,tag=hacker2_setup,tag=fr] at @s run tp @s ~ ~ ~ ~45 0
execute as @e[type=area_effect_cloud,tag=hacker2_setup,tag=bl] at @s run tp @s ~ ~ ~ ~-135 0
execute as @e[type=area_effect_cloud,tag=hacker2_setup,tag=br] at @s run tp @s ~ ~ ~ ~135 0

#scoreboard players operation @e[type=area_effect_cloud,tag=hacker2_setup] pnum = @s pnum

execute at @s run playsound minecraft:block.conduit.deactivate master @a

tag @e[type=area_effect_cloud,tag=hacker2_setup] remove hacker_setup
