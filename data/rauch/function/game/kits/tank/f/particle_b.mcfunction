scoreboard players set 2 const 2
scoreboard players set 12 const 12
scoreboard players operation t_mod12 temp = @s click
scoreboard players operation t_mod12 temp -= 2 const
scoreboard players operation t_mod12 temp %= 12 const
execute if score t_mod12 temp matches 0 run function rauch:game/kits/tank/f/particle_b/1
execute if score t_mod12 temp matches 1 run function rauch:game/kits/tank/f/particle_b/2
execute if score t_mod12 temp matches 2 run function rauch:game/kits/tank/f/particle_b/3
execute if score t_mod12 temp matches 3 run function rauch:game/kits/tank/f/particle_b/4
execute if score t_mod12 temp matches 4 run function rauch:game/kits/tank/f/particle_b/5
execute if score t_mod12 temp matches 5 run function rauch:game/kits/tank/f/particle_b/6
execute if score t_mod12 temp matches 6 run function rauch:game/kits/tank/f/particle_b/7
execute if score t_mod12 temp matches 7 run function rauch:game/kits/tank/f/particle_b/8
execute if score t_mod12 temp matches 8 run function rauch:game/kits/tank/f/particle_b/9
execute if score t_mod12 temp matches 9 run function rauch:game/kits/tank/f/particle_b/10
execute if score t_mod12 temp matches 10 run function rauch:game/kits/tank/f/particle_b/11
execute if score t_mod12 temp matches 11 run function rauch:game/kits/tank/f/particle_b/12
scoreboard players reset t_mod12 temp
