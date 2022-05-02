execute positioned ^ ^ ^7 run particle minecraft:flame ~ ~ ~ 0 0 0 0 1 force
execute positioned ^ ^2.16 ^6.66 run particle minecraft:flame ~ ~ ~ 0 0 0 0 1 force
execute positioned ^ ^4.11 ^5.66 run particle minecraft:flame ~ ~ ~ 0 0 0 0 1 force
execute positioned ^ ^5.66 ^4.11 run particle minecraft:flame ~ ~ ~ 0 0 0 0 1 force
execute positioned ^ ^6.66 ^2.16 run particle minecraft:flame ~ ~ ~ 0 0 0 0 1 force
scoreboard players add @s click 1
tp @s ~ ~ ~ ~18 ~
execute if score @s click matches ..5 run function rauch:game/core/ability/tank/r/particle

#sehr unpotimized
