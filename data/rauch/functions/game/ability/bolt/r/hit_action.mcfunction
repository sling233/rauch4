# execute at player hit, as bolt
execute as @s[scores={bolt=1..}] run function rauch:game/ability/bolt/r/q_tag

execute unless entity @s[scores={raucherdmg=1..}] run damage @p 15 minecraft:falling_anvil by @s
execute if entity @s[scores={raucherdmg=1..}] run damage @p 23 minecraft:falling_anvil by @s
