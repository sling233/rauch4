scoreboard players remove @s teleweak 1
#execute at @s run particle minecraft:smoke ~ ~1 ~ 0.1 0.4 0.1 0.03 8 force
execute at @s run particle minecraft:dust{color:[0.6,0.6,0.6],scale:1.5} ~ ~1 ~ 0.2 0.4 0.2 1 2 force
execute as @s[scores={teleweak=..0}] run attribute @s minecraft:attack_damage modifier remove teleweak
