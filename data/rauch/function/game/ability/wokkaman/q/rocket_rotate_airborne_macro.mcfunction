$execute at @a[tag=temp,limit=1] positioned ~ ~1.6 ~ rotated ~ ~ run tp @s ^$(delta_z) ^$(delta_x) ^ ~ ~
execute unless score t_is_sneaking temp matches 1 at @s run tp @s ^ ^ ^0.5
execute if score t_is_sneaking temp matches 1 at @s run tp @s ^ ^ ^0.6
