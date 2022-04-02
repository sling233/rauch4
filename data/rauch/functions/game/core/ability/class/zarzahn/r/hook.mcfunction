execute at @s as @a[scores={kit=2}] if score @s pnum = @p zarzahn_id facing entity @s feet run tp @p ^ ^ ^0.7

effect give @s minecraft:slow_falling 2 3 true

execute at @s positioned ~-2 ~-2 ~-2 as @a[scores={kit=2},dx=3,dy=3,dz=3] positioned ~2 ~2 ~2 if score @s pnum = @p zarzahn_id run tag @p add temp
execute at @s positioned ~-2 ~-2 ~-2 as @a[scores={kit=2},dx=3,dy=3,dz=3] positioned ~2 ~2 ~2 if score @s pnum = @p zarzahn_id run

effect clear @s[tag=temp] minecraft:slow_falling
execute as @s[tag=temp] run scoreboard players set @s stun 20
execute as @s[tag=temp] run function rauch:game/core/mechanics/stuninit
tag @s[tag=temp] remove zarzahn_hook
tag @s[tag=temp] remove temp
