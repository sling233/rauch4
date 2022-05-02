scoreboard players add @s projectileRNum 1
execute unless score @s projectileRNum = @s projectileRMax run scoreboard players operation @s cool3 = @s cool3_target
