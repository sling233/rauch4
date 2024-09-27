execute at @s[scores={hacker_charges=..1}] unless score @s got_reward matches 1.. run playsound minecraft:block.end_portal.spawn master @s ~ ~ ~ 0.4
execute at @s[scores={hacker_charges=..1}] unless score @s got_reward matches 1.. run scoreboard players add @s hacker_charges 1
scoreboard players add @s got_reward 1