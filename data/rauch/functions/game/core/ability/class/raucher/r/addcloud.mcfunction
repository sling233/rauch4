scoreboard players add @s projectileRNum 1
execute unless score @s projectileRNum = @s projectileRMax run scoreboard players operation @s cool1 = @s cool1_target
