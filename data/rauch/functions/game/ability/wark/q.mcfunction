execute at @s run playsound minecraft:entity.warden.roar master @a
execute as @s[team=Red] as @a[team=Blue,tag=!dead,tag=game] run effect give @s darkness 2 0 true
execute as @s[team=Blue] as @a[team=Red,tag=!dead,tag=game] run effect give @s darkness 2 0 true
effect give @s minecraft:speed 10 2 false
effect give @s minecraft:jump_boost 10 1 false
attribute @s minecraft:generic.attack_damage modifier add 0-0-0-0-11 "warkbuff" 0.5 multiply
scoreboard players set @s wark_buff 200
scoreboard players remove @s wark_charge 100000
