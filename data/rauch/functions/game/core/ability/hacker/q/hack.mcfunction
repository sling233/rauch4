execute as @s[team=Red] as @a[distance=..7,team=Blue] run scoreboard players set @s hack 200
execute as @s[team=Red] as @a[distance=..7,team=Blue] run function rauch:game/core/mechanics/hackinit
execute as @s[team=Blue] as @a[distance=..7,team=Red] run scoreboard players set @s hack 200
execute as @s[team=Blue] as @a[distance=..7,team=Red] run function rauch:game/core/mechanics/hackinit


particle minecraft:flame ~1.66 ~0.2 ~6.18 0 0 0 0 1 force
particle minecraft:flame ~1.66 ~0.2 ~-6.18 0 0 0 0 1 force
particle minecraft:flame ~-1.66 ~0.2 ~6.18 0 0 0 0 1 force
particle minecraft:flame ~-1.66 ~0.2 ~-6.18 0 0 0 0 1 force
particle minecraft:flame ~6.18 ~0.2 ~1.66 0 0 0 0 1 force
particle minecraft:flame ~6.18 ~0.2 ~-1.66 0 0 0 0 1 force
particle minecraft:flame ~-6.18 ~0.2 ~1.66 0 0 0 0 1 force
particle minecraft:flame ~-6.18 ~0.2 ~-1.66 0 0 0 0 1 force

particle minecraft:flame ~3.2 ~0.2 ~5.54 0 0 0 0 1 force
particle minecraft:flame ~3.2 ~0.2 ~-5.54 0 0 0 0 1 force
particle minecraft:flame ~-3.2 ~0.2 ~5.54 0 0 0 0 1 force
particle minecraft:flame ~-3.2 ~0.2 ~-5.54 0 0 0 0 1 force
particle minecraft:flame ~5.54 ~0.2 ~3.2 0 0 0 0 1 force
particle minecraft:flame ~5.54 ~0.2 ~-3.2 0 0 0 0 1 force
particle minecraft:flame ~-5.54 ~0.2 ~3.2 0 0 0 0 1 force
particle minecraft:flame ~-5.54 ~0.2 ~-3.2 0 0 0 0 1 force

scoreboard players reset @s hacking
