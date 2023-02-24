scoreboard objectives add mod12 dummy
scoreboard players operation Global mod12 = @s click
scoreboard players operation Global mod12 -= Global 2
scoreboard players operation Global mod12 %= Global 12
execute if score Global mod12 matches 0 run function rauch:game/ability/tank/r/particle_b/1
execute if score Global mod12 matches 1 run function rauch:game/ability/tank/r/particle_b/2
execute if score Global mod12 matches 2 run function rauch:game/ability/tank/r/particle_b/3
execute if score Global mod12 matches 3 run function rauch:game/ability/tank/r/particle_b/4
execute if score Global mod12 matches 4 run function rauch:game/ability/tank/r/particle_b/5
execute if score Global mod12 matches 5 run function rauch:game/ability/tank/r/particle_b/6
execute if score Global mod12 matches 6 run function rauch:game/ability/tank/r/particle_b/7
execute if score Global mod12 matches 7 run function rauch:game/ability/tank/r/particle_b/8
execute if score Global mod12 matches 8 run function rauch:game/ability/tank/r/particle_b/9
execute if score Global mod12 matches 9 run function rauch:game/ability/tank/r/particle_b/10
execute if score Global mod12 matches 10 run function rauch:game/ability/tank/r/particle_b/11
execute if score Global mod12 matches 11 run function rauch:game/ability/tank/r/particle_b/12
scoreboard objectives remove mod12
