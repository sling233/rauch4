#particle minecraft:dust_color_transition 0.7 0 0.3 1 0 0 0 ~ ~ ~ 2 2 2 0.1 700 force
particle minecraft:firework ~ ~ ~ 0.1 0.1 0.1 0.7 100 force
particle minecraft:firework ~ ~ ~ 0.1 0.1 0.1 0.25 200 force
particle minecraft:electric_spark ~ ~ ~ 0.1 0.1 0.1 4 300 force
particle minecraft:explosion ~ ~ ~ 1 1 1 1 20 force
particle minecraft:flash ~ ~ ~ 0.1 0.1 0.1 1 1 force
playsound minecraft:entity.firework_rocket.blast master @a ~ ~ ~ 1 1

tag @s add temp
execute as @a if score @s pnum = @e[type=marker,tag=raucher_rocket,tag=temp,limit=1] pnum run scoreboard players set @s slime_despawn_timer -5

function rauch:game/core/ability/class/raucher/f/spawn


#execute at @s[tag=blu] as @a[team=Red,distance=..3] run function rauch:game/core/ability/class/bolt/r/hit
#execute at @s[tag=red] as @a[team=Blue,distance=..3] run function rauch:game/core/ability/class/bolt/r/hit
#execute as @a[tag=temp] run effect give @s minecraft:instant_damage 1 2 true
#particle minecraft:cloud ~ ~ ~ 0.1 0.1 0.1 0.4 700 force

kill @s
