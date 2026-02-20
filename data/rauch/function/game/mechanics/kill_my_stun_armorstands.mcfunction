tag @s add temp
execute as @e[type=minecraft:armor_stand,tag=stun] if score @s pnum = @a[tag=temp,limit=1] pnum run kill @s
tag @s remove temp
