#say hitby
#scoreboard players operation @s decode = @s bolt_hitby
#function rauch:game/core/mechanics/utility/decode

#scoreboard players operation @s decode = @p pnum
#execute as @s[scores={decode=1}] as @s[tag=!decode1] run scoreboard players add @s bolt_hitby 1
#execute as @s[scores={decode=2}] as @s[tag=!decode2] run scoreboard players add @s bolt_hitby 2
#execute as @s[scores={decode=3}] as @s[tag=!decode3] run scoreboard players add @s bolt_hitby 4
#execute as @s[scores={decode=4}] as @s[tag=!decode4] run scoreboard players add @s bolt_hitby 8
#execute as @s[scores={decode=5}] as @s[tag=!decode5] run scoreboard players add @s bolt_hitby 16
#execute as @s[scores={decode=6}] as @s[tag=!decode6] run scoreboard players add @s bolt_hitby 32
#execute as @s[scores={decode=7}] as @s[tag=!decode7] run scoreboard players add @s bolt_hitby 64
#execute as @s[scores={decode=8}] as @s[tag=!decode8] run scoreboard players add @s bolt_hitby 128
#execute as @s[scores={decode=9}] as @s[tag=!decode9] run scoreboard players add @s bolt_hitby 256
#execute as @s[scores={decode=10}] as @s[tag=!decode10] run scoreboard players add @s bolt_hitby 512
#execute as @s[scores={decode=11}] as @s[tag=!decode11] run scoreboard players add @s bolt_hitby 1024
#execute as @s[scores={decode=12}] as @s[tag=!decode12] run scoreboard players add @s bolt_hitby 2048
#execute as @s[tag=decodeerror] run scoreboard players reset @s bolt_hitby

#function rauch:game/core/mechanics/utility/decode_reset

#this should be enough
scoreboard players operation @s decode = @p pnum
execute as @s[scores={decode=1}] run scoreboard players add @s bolt_hitby 1
execute as @s[scores={decode=2}] run scoreboard players add @s bolt_hitby 2
execute as @s[scores={decode=3}] run scoreboard players add @s bolt_hitby 4
execute as @s[scores={decode=4}] run scoreboard players add @s bolt_hitby 8
execute as @s[scores={decode=5}] run scoreboard players add @s bolt_hitby 16
execute as @s[scores={decode=6}] run scoreboard players add @s bolt_hitby 32
execute as @s[scores={decode=7}] run scoreboard players add @s bolt_hitby 64
execute as @s[scores={decode=8}] run scoreboard players add @s bolt_hitby 128
execute as @s[scores={decode=9}] run scoreboard players add @s bolt_hitby 256
execute as @s[scores={decode=10}] run scoreboard players add @s bolt_hitby 512
execute as @s[scores={decode=11}] run scoreboard players add @s bolt_hitby 1024
execute as @s[scores={decode=12}] run scoreboard players add @s bolt_hitby 2048
scoreboard players reset @s decode
