#executed at Pikka as hit player

scoreboard players add @s stun 60
function rauch:game/mechanics/stuninit

execute unless entity @p[scores={raucherdmg=1..}] run damage @s 48 minecraft:falling_anvil by @p
execute if entity @p[scores={raucherdmg=1..}] run damage @s 72 minecraft:falling_anvil by @p
