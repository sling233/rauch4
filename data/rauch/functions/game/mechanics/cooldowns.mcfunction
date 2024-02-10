execute as @s[scores={kit=3,cool1=0}] if score @s projectileRNum < @s projectileRMax run function rauch:game/ability/raucher/r/addcloud

execute as @s[scores={cool1=1..}] run function rauch:game/ui/counter1
execute as @s[scores={cool2=1..}] run function rauch:game/ui/counter2
execute as @s[scores={cool3=1..}] run function rauch:game/ui/counter3