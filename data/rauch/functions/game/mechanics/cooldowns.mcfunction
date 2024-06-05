execute as @s[scores={kit=3,cool1=0}] if score @s projectileRNum < @s projectileRMax run function rauch:game/ability/raucher/r/addcloud

execute as @s[scores={cool1=1..}] run scoreboard players remove @s cool1 1
execute unless score @s cool1 matches 0.. run scoreboard players set @s cool1 0
execute as @s[scores={cool2=1..}] run scoreboard players remove @s cool2 1
execute unless score @s cool2 matches 0.. run scoreboard players set @s cool2 0
execute as @s[scores={cool3=1..}] run scoreboard players remove @s cool3 1
execute unless score @s cool3 matches 0.. run scoreboard players set @s cool3 0
