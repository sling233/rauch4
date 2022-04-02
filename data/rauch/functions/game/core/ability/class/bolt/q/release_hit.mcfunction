#say release_hit
scoreboard players operation @s decode = @p pnum
execute as @s[scores={decode=1}] run scoreboard players remove @s bolt_hitby 1
execute as @s[scores={decode=2}] run scoreboard players remove @s bolt_hitby 2
execute as @s[scores={decode=3}] run scoreboard players remove @s bolt_hitby 4
execute as @s[scores={decode=4}] run scoreboard players remove @s bolt_hitby 8
execute as @s[scores={decode=5}] run scoreboard players remove @s bolt_hitby 16
execute as @s[scores={decode=6}] run scoreboard players remove @s bolt_hitby 32
execute as @s[scores={decode=7}] run scoreboard players remove @s bolt_hitby 64
execute as @s[scores={decode=8}] run scoreboard players remove @s bolt_hitby 128
execute as @s[scores={decode=9}] run scoreboard players remove @s bolt_hitby 256
execute as @s[scores={decode=10}] run scoreboard players remove @s bolt_hitby 512
execute as @s[scores={decode=11}] run scoreboard players remove @s bolt_hitby 1024
execute as @s[scores={decode=12}] run scoreboard players remove @s bolt_hitby 2048
scoreboard players reset @s decode
tag @s add bolt
