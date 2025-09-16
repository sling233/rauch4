execute at @s run summon minecraft:item_display ~ ~ ~ {transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0.707f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.6f,0.6f,0.6f]},billboard:"fixed",Tags:["wok_rocket","rotating","setup"],item:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{}}},teleport_duration:2}
execute as @s[team=Red] run tag @e[type=item_display,tag=wok_rocket,tag=setup] add red
execute as @s[team=Blue] run tag @e[type=item_display,tag=wok_rocket,tag=setup] add blu

scoreboard players set 2 const 2
scoreboard players set 4 const 4
scoreboard players set 8 const 8
scoreboard players set 16 const 16
scoreboard players set 32 const 32
scoreboard players operation t_mod2 temp = @s wokkaman_rocket_count
scoreboard players operation t_mod2 temp %= 2 const
scoreboard players operation t_mod4 temp = @s wokkaman_rocket_count
scoreboard players operation t_mod4 temp %= 4 const
scoreboard players operation t_mod8 temp = @s wokkaman_rocket_count
scoreboard players operation t_mod8 temp %= 8 const
scoreboard players operation t_mod16 temp = @s wokkaman_rocket_count
scoreboard players operation t_mod16 temp %= 16 const
scoreboard players operation t_mod32 temp = @s wokkaman_rocket_count
scoreboard players operation t_mod32 temp %= 32 const

execute if score t_mod2 temp matches 0 run tag @e[type=item_display,tag=wok_rocket,tag=setup] add clockwise
execute if score t_mod2 temp matches 1 run tag @e[type=item_display,tag=wok_rocket,tag=setup] add clockwise
# execute if score t_mod2 temp matches 1 run tag @e[type=item_display,tag=wok_rocket,tag=setup] add counter_clockwise

scoreboard players set -1 const -1
scoreboard players set 12 const 12
scoreboard players set 23 const 23
scoreboard players set 35 const 35
scoreboard players set 45 const 45
scoreboard players set 90 const 90
scoreboard players set 180 const 180
scoreboard players set 360 const 360

scoreboard players operation t_wokkaman_rocket_rotating_tilt temp = t_mod8 temp
scoreboard players operation t_wokkaman_rocket_rotating_tilt temp += 4 const
scoreboard players operation t_wokkaman_rocket_rotating_tilt temp /= 4 const
scoreboard players operation t_wokkaman_rocket_rotating_tilt temp *= 35 const
execute if score t_mod2 temp matches 1 run scoreboard players operation t_wokkaman_rocket_rotating_tilt temp *= -1 const
scoreboard players operation @e[type=item_display,tag=wok_rocket,tag=setup] wokkaman_rocket_rotating_tilt = t_wokkaman_rocket_rotating_tilt temp


scoreboard players operation t_rocket_div temp = @s wokkaman_rocket_count
#scoreboard players operation t_rocket_div temp /= 2 const
scoreboard players operation t_rocket_div temp *= 180 const
scoreboard players operation t_wokkaman_rocket_phase temp += t_rocket_div temp

scoreboard players operation t_rocket_div temp = @s wokkaman_rocket_count
scoreboard players operation t_rocket_div temp /= 2 const
scoreboard players operation t_rocket_div temp *= 90 const
scoreboard players operation t_wokkaman_rocket_phase temp += t_rocket_div temp

scoreboard players operation t_rocket_div temp = @s wokkaman_rocket_count
scoreboard players operation t_rocket_div temp /= 4 const
scoreboard players operation t_rocket_div temp *= 45 const
scoreboard players operation t_wokkaman_rocket_phase temp += t_rocket_div temp

scoreboard players operation t_rocket_div temp = @s wokkaman_rocket_count
scoreboard players operation t_rocket_div temp /= 8 const
scoreboard players operation t_rocket_div temp *= 23 const
scoreboard players operation t_wokkaman_rocket_phase temp += t_rocket_div temp

scoreboard players operation t_rocket_div temp = @s wokkaman_rocket_count
scoreboard players operation t_rocket_div temp /= 16 const
scoreboard players operation t_rocket_div temp *= 12 const
scoreboard players operation t_wokkaman_rocket_phase temp += t_rocket_div temp

scoreboard players operation t_wokkaman_rocket_phase temp %= 360 const


scoreboard players operation @e[type=item_display,tag=wok_rocket,tag=setup] wokkaman_rocket_phase = t_wokkaman_rocket_phase temp

scoreboard players operation @e[type=item_display,tag=wok_rocket,tag=setup,limit=1] pnum = @s pnum
tag @e[type=item_display,tag=wok_rocket,tag=setup] remove setup

#tellraw @a [{text:"#"},{score:{name:"@s",objective:"wokkaman_rocket_count"}}]
#tellraw @a [{text:"phase: "},{score:{name:"t_wokkaman_rocket_phase",objective:"temp"}}]
#tellraw @a [{text:"tilt: "},{score:{name:"t_wokkaman_rocket_rotating_tilt",objective:"temp"}}]

scoreboard players reset t_mod2 temp
scoreboard players reset t_mod4 temp
scoreboard players reset t_mod8 temp
scoreboard players reset t_mod16 temp
scoreboard players reset t_mod32 temp
scoreboard players reset t_wokkaman_rocket_phase temp
scoreboard players reset t_wokkaman_rocket_rotating_tilt temp

scoreboard players add @s wokkaman_rocket_count 1
