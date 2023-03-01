execute at @a if score @p pnum = @s pnum run tag @p add t_hacker
execute at @s[tag=red] as @a[team=Blue,tag=game,tag=!dead,distance=..5.5] run function rauch:game/ability/hacker/q/hacked
execute at @s[tag=blu] as @a[team=Red,tag=game,tag=!dead,distance=..5.5] run function rauch:game/ability/hacker/q/hacked
tag @a remove t_hacker
execute at @s run playsound minecraft:entity.guardian.hurt master @a

kill @s

execute at @s run particle minecraft:dust_color_transition 0.2 0.8 0.2 1 0.1 0.2 0.1 ~0.0 ~0.1 ~5.44 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust_color_transition 0.2 0.8 0.2 1 0.1 0.2 0.1 ~0.379 ~0.1 ~5.427 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust_color_transition 0.2 0.8 0.2 1 0.1 0.2 0.1 ~0.757 ~0.1 ~5.387 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust_color_transition 0.2 0.8 0.2 1 0.1 0.2 0.1 ~1.131 ~0.1 ~5.321 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust_color_transition 0.2 0.8 0.2 1 0.1 0.2 0.1 ~1.499 ~0.1 ~5.229 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust_color_transition 0.2 0.8 0.2 1 0.1 0.2 0.1 ~1.861 ~0.1 ~5.112 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust_color_transition 0.2 0.8 0.2 1 0.1 0.2 0.1 ~2.213 ~0.1 ~4.97 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust_color_transition 0.2 0.8 0.2 1 0.1 0.2 0.1 ~2.554 ~0.1 ~4.803 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust_color_transition 0.2 0.8 0.2 1 0.1 0.2 0.1 ~2.883 ~0.1 ~4.613 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust_color_transition 0.2 0.8 0.2 1 0.1 0.2 0.1 ~3.198 ~0.1 ~4.401 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust_color_transition 0.2 0.8 0.2 1 0.1 0.2 0.1 ~3.497 ~0.1 ~4.167 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust_color_transition 0.2 0.8 0.2 1 0.1 0.2 0.1 ~3.779 ~0.1 ~3.913 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust_color_transition 0.2 0.8 0.2 1 0.1 0.2 0.1 ~4.043 ~0.1 ~3.64 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust_color_transition 0.2 0.8 0.2 1 0.1 0.2 0.1 ~4.287 ~0.1 ~3.349 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust_color_transition 0.2 0.8 0.2 1 0.1 0.2 0.1 ~4.51 ~0.1 ~3.042 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust_color_transition 0.2 0.8 0.2 1 0.1 0.2 0.1 ~4.711 ~0.1 ~2.72 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust_color_transition 0.2 0.8 0.2 1 0.1 0.2 0.1 ~4.889 ~0.1 ~2.385 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust_color_transition 0.2 0.8 0.2 1 0.1 0.2 0.1 ~5.044 ~0.1 ~2.038 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust_color_transition 0.2 0.8 0.2 1 0.1 0.2 0.1 ~5.174 ~0.1 ~1.681 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust_color_transition 0.2 0.8 0.2 1 0.1 0.2 0.1 ~5.278 ~0.1 ~1.316 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust_color_transition 0.2 0.8 0.2 1 0.1 0.2 0.1 ~5.357 ~0.1 ~0.945 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust_color_transition 0.2 0.8 0.2 1 0.1 0.2 0.1 ~5.41 ~0.1 ~0.569 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust_color_transition 0.2 0.8 0.2 1 0.1 0.2 0.1 ~5.437 ~0.1 ~0.19 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust_color_transition 0.2 0.8 0.2 1 0.1 0.2 0.1 ~5.437 ~0.1 ~-0.19 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust_color_transition 0.2 0.8 0.2 1 0.1 0.2 0.1 ~5.41 ~0.1 ~-0.569 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust_color_transition 0.2 0.8 0.2 1 0.1 0.2 0.1 ~5.357 ~0.1 ~-0.945 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust_color_transition 0.2 0.8 0.2 1 0.1 0.2 0.1 ~5.278 ~0.1 ~-1.316 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust_color_transition 0.2 0.8 0.2 1 0.1 0.2 0.1 ~5.174 ~0.1 ~-1.681 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust_color_transition 0.2 0.8 0.2 1 0.1 0.2 0.1 ~5.044 ~0.1 ~-2.038 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust_color_transition 0.2 0.8 0.2 1 0.1 0.2 0.1 ~4.889 ~0.1 ~-2.385 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust_color_transition 0.2 0.8 0.2 1 0.1 0.2 0.1 ~4.711 ~0.1 ~-2.72 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust_color_transition 0.2 0.8 0.2 1 0.1 0.2 0.1 ~4.51 ~0.1 ~-3.042 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust_color_transition 0.2 0.8 0.2 1 0.1 0.2 0.1 ~4.287 ~0.1 ~-3.349 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust_color_transition 0.2 0.8 0.2 1 0.1 0.2 0.1 ~4.043 ~0.1 ~-3.64 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust_color_transition 0.2 0.8 0.2 1 0.1 0.2 0.1 ~3.779 ~0.1 ~-3.913 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust_color_transition 0.2 0.8 0.2 1 0.1 0.2 0.1 ~3.497 ~0.1 ~-4.167 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust_color_transition 0.2 0.8 0.2 1 0.1 0.2 0.1 ~3.198 ~0.1 ~-4.401 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust_color_transition 0.2 0.8 0.2 1 0.1 0.2 0.1 ~2.883 ~0.1 ~-4.613 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust_color_transition 0.2 0.8 0.2 1 0.1 0.2 0.1 ~2.554 ~0.1 ~-4.803 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust_color_transition 0.2 0.8 0.2 1 0.1 0.2 0.1 ~2.213 ~0.1 ~-4.97 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust_color_transition 0.2 0.8 0.2 1 0.1 0.2 0.1 ~1.861 ~0.1 ~-5.112 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust_color_transition 0.2 0.8 0.2 1 0.1 0.2 0.1 ~1.499 ~0.1 ~-5.229 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust_color_transition 0.2 0.8 0.2 1 0.1 0.2 0.1 ~1.131 ~0.1 ~-5.321 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust_color_transition 0.2 0.8 0.2 1 0.1 0.2 0.1 ~0.757 ~0.1 ~-5.387 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust_color_transition 0.2 0.8 0.2 1 0.1 0.2 0.1 ~0.379 ~0.1 ~-5.427 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust_color_transition 0.2 0.8 0.2 1 0.1 0.2 0.1 ~0.0 ~0.1 ~-5.44 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust_color_transition 0.2 0.8 0.2 1 0.1 0.2 0.1 ~-0.379 ~0.1 ~-5.427 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust_color_transition 0.2 0.8 0.2 1 0.1 0.2 0.1 ~-0.757 ~0.1 ~-5.387 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust_color_transition 0.2 0.8 0.2 1 0.1 0.2 0.1 ~-1.131 ~0.1 ~-5.321 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust_color_transition 0.2 0.8 0.2 1 0.1 0.2 0.1 ~-1.499 ~0.1 ~-5.229 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust_color_transition 0.2 0.8 0.2 1 0.1 0.2 0.1 ~-1.861 ~0.1 ~-5.112 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust_color_transition 0.2 0.8 0.2 1 0.1 0.2 0.1 ~-2.213 ~0.1 ~-4.97 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust_color_transition 0.2 0.8 0.2 1 0.1 0.2 0.1 ~-2.554 ~0.1 ~-4.803 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust_color_transition 0.2 0.8 0.2 1 0.1 0.2 0.1 ~-2.883 ~0.1 ~-4.613 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust_color_transition 0.2 0.8 0.2 1 0.1 0.2 0.1 ~-3.198 ~0.1 ~-4.401 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust_color_transition 0.2 0.8 0.2 1 0.1 0.2 0.1 ~-3.497 ~0.1 ~-4.167 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust_color_transition 0.2 0.8 0.2 1 0.1 0.2 0.1 ~-3.779 ~0.1 ~-3.913 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust_color_transition 0.2 0.8 0.2 1 0.1 0.2 0.1 ~-4.043 ~0.1 ~-3.64 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust_color_transition 0.2 0.8 0.2 1 0.1 0.2 0.1 ~-4.287 ~0.1 ~-3.349 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust_color_transition 0.2 0.8 0.2 1 0.1 0.2 0.1 ~-4.51 ~0.1 ~-3.042 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust_color_transition 0.2 0.8 0.2 1 0.1 0.2 0.1 ~-4.711 ~0.1 ~-2.72 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust_color_transition 0.2 0.8 0.2 1 0.1 0.2 0.1 ~-4.889 ~0.1 ~-2.385 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust_color_transition 0.2 0.8 0.2 1 0.1 0.2 0.1 ~-5.044 ~0.1 ~-2.038 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust_color_transition 0.2 0.8 0.2 1 0.1 0.2 0.1 ~-5.174 ~0.1 ~-1.681 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust_color_transition 0.2 0.8 0.2 1 0.1 0.2 0.1 ~-5.278 ~0.1 ~-1.316 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust_color_transition 0.2 0.8 0.2 1 0.1 0.2 0.1 ~-5.357 ~0.1 ~-0.945 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust_color_transition 0.2 0.8 0.2 1 0.1 0.2 0.1 ~-5.41 ~0.1 ~-0.569 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust_color_transition 0.2 0.8 0.2 1 0.1 0.2 0.1 ~-5.437 ~0.1 ~-0.19 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust_color_transition 0.2 0.8 0.2 1 0.1 0.2 0.1 ~-5.437 ~0.1 ~0.19 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust_color_transition 0.2 0.8 0.2 1 0.1 0.2 0.1 ~-5.41 ~0.1 ~0.569 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust_color_transition 0.2 0.8 0.2 1 0.1 0.2 0.1 ~-5.357 ~0.1 ~0.945 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust_color_transition 0.2 0.8 0.2 1 0.1 0.2 0.1 ~-5.278 ~0.1 ~1.316 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust_color_transition 0.2 0.8 0.2 1 0.1 0.2 0.1 ~-5.174 ~0.1 ~1.681 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust_color_transition 0.2 0.8 0.2 1 0.1 0.2 0.1 ~-5.044 ~0.1 ~2.038 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust_color_transition 0.2 0.8 0.2 1 0.1 0.2 0.1 ~-4.889 ~0.1 ~2.385 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust_color_transition 0.2 0.8 0.2 1 0.1 0.2 0.1 ~-4.711 ~0.1 ~2.72 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust_color_transition 0.2 0.8 0.2 1 0.1 0.2 0.1 ~-4.51 ~0.1 ~3.042 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust_color_transition 0.2 0.8 0.2 1 0.1 0.2 0.1 ~-4.287 ~0.1 ~3.349 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust_color_transition 0.2 0.8 0.2 1 0.1 0.2 0.1 ~-4.043 ~0.1 ~3.64 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust_color_transition 0.2 0.8 0.2 1 0.1 0.2 0.1 ~-3.779 ~0.1 ~3.913 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust_color_transition 0.2 0.8 0.2 1 0.1 0.2 0.1 ~-3.497 ~0.1 ~4.167 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust_color_transition 0.2 0.8 0.2 1 0.1 0.2 0.1 ~-3.198 ~0.1 ~4.401 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust_color_transition 0.2 0.8 0.2 1 0.1 0.2 0.1 ~-2.883 ~0.1 ~4.613 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust_color_transition 0.2 0.8 0.2 1 0.1 0.2 0.1 ~-2.554 ~0.1 ~4.803 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust_color_transition 0.2 0.8 0.2 1 0.1 0.2 0.1 ~-2.213 ~0.1 ~4.97 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust_color_transition 0.2 0.8 0.2 1 0.1 0.2 0.1 ~-1.861 ~0.1 ~5.112 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust_color_transition 0.2 0.8 0.2 1 0.1 0.2 0.1 ~-1.499 ~0.1 ~5.229 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust_color_transition 0.2 0.8 0.2 1 0.1 0.2 0.1 ~-1.131 ~0.1 ~5.321 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust_color_transition 0.2 0.8 0.2 1 0.1 0.2 0.1 ~-0.757 ~0.1 ~5.387 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust_color_transition 0.2 0.8 0.2 1 0.1 0.2 0.1 ~-0.379 ~0.1 ~5.427 0.02 0.02 0.02 1 1 force
