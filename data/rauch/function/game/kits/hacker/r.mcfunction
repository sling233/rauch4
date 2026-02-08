execute unless score @s cool1 matches 0 run return 1

scoreboard players operation @s cool1 = @s cool1_target
execute at @s[team=Red] run summon marker ~ ~ ~ {Tags:["projectile","hacker","setup","red","remove_on_death"]}
execute at @s[team=Blue] run summon marker ~ ~ ~ {Tags:["projectile","hacker","setup","blu","remove_on_death"]}
execute at @s rotated as @s run tp @e[type=marker,tag=setup,tag=hacker] ~ ~1.6 ~ ~ ~
scoreboard players operation @e[type=marker,tag=setup,tag=hacker,limit=1] pnum = @s pnum
tag @e[type=marker,tag=setup,tag=hacker] remove setup
execute at @s run playsound minecraft:entity.bat.takeoff master @a ~ ~ ~ 0.5

scoreboard players set 3 const 3
scoreboard players operation t_one_third_hacker_cool temp = @s cool1_target
scoreboard players operation t_one_third_hacker_cool temp /= 3 const
scoreboard players operation @s cool1 = t_one_third_hacker_cool temp
scoreboard players reset t_one_third_hacker_cool temp
