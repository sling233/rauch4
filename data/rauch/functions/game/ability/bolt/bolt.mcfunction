execute as @s[scores={bolt=0..}] run function rauch:game/ability/bolt/q/charge
execute as @s[scores={boltdmg=0..}] run function rauch:game/ability/bolt/q/buff
execute as @s[scores={boltspeed=..-1}] at @s run function rauch:game/ability/bolt/f/particle
