# as projectile new
#particle minecraft:dust_color_transition 0.7 0 0.3 1 0 0 0 ~ ~ ~ 2 2 2 0.1 700 force
execute at @s run particle minecraft:firework ~ ~ ~ 0.1 0.1 0.1 0.7 100 force
execute at @s run particle minecraft:firework ~ ~ ~ 0.1 0.1 0.1 0.25 200 force
execute at @s run particle minecraft:electric_spark ~ ~ ~ 0.1 0.1 0.1 4 300 force
execute at @s run particle minecraft:explosion ~ ~ ~ 1 1 1 1 20 force
execute at @s run particle minecraft:flash ~ ~ ~ 0.1 0.1 0.1 1 1 force
execute at @s run playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~ 1 1

scoreboard players set $strength player_motion.api.launch 14000
# add a bit of a vertical component
execute at @s as @a[tag=game,tag=!dead,distance=..2.5] positioned ~ ~-1 ~ facing entity @s feet run function player_motion:api/launch_looking

tag @s add hit
kill @s
