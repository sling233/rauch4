execute as @s[scores={dropcoas=1..}] run function rauch:game/ability/sdrop
execute as @s[scores={click=1..}] run function rauch:game/ability/sclick
execute if items entity @s weapon.offhand minecraft:carrot_on_a_stick run function rauch:game/ability/sswap
execute as @s[scores={death=1..}] run function rauch:game/mechanics/die

#class specific
execute as @s[scores={kit=1}] run function rauch:game/ability/bolt/bolt
execute as @s[scores={kit=2}] run function rauch:game/ability/zarzahn/zarzahn
execute as @s[scores={kit=3}] run function rauch:game/ability/raucher/raucher
execute as @s[scores={kit=4}] run function rauch:game/ability/hacker/hacker
execute as @s[scores={kit=5}] run function rauch:game/ability/wark/wark
execute as @s[scores={kit=6}] run function rauch:game/ability/teleporter/teleporter
execute as @s[scores={kit=7}] run function rauch:game/ability/tank/tank
execute as @s[scores={kit=8}] run function rauch:game/ability/flyer/flyer
execute as @s[scores={kit=9}] run function rauch:game/ability/wokkaman/wokkaman

#general
execute as @s[scores={push_levitation_timer=-1}] run effect clear @s minecraft:levitation
execute as @s[scores={wok_push_timer=..-1}] run function rauch:game/ability/wokkaman/r/push_particle
execute as @s[tag=raucher_control,tag=!raucher_debuff] run function rauch:game/ability/raucher/r/slow/leave
execute as @s[scores={hack=0..}] run function rauch:game/ability/hacker/r/hacked_player
execute as @s[scores={hacker_damage_timer=0..}] run function rauch:game/ability/hacker/q/debuff
execute as @s[scores={teleweak=0..}] run function rauch:game/ability/teleporter/r/debuff
execute as @s[scores={hacker_ability=0..}] run function rauch:game/ability/hacker/f/ability_boost
execute as @s[scores={raucherdmg=0..}] run function rauch:game/ability/raucher/q/buff
execute as @s[scores={tank_resistance=0..}] run function rauch:game/ability/tank/q/resistance
execute as @s[scores={wark_startup=0..}] run function rauch:game/ability/wark/r/startup
execute as @s[scores={wark_detect=0..}] run function rauch:game/ability/wark/r/trapped_player
execute as @s[tag=wok_stepped_on] run function rauch:game/ability/wokkaman/sq/stepped_on
execute as @s[tag=wokkaman_q_shooting] run function rauch:game/ability/wokkaman/q/shooting

execute as @s[scores={heal=0..}] run function rauch:game/mechanics/heal

execute as @s[scores={stun=0..}] run function rauch:game/mechanics/stun
execute at @s[scores={damage_taken=0..}] run function rauch:game/ui/damage_taken

# launch pads
execute if score Global enable_launchpads matches 1 run function rauch:game/mechanics/launchpads/check_for_launchpads

#particles
execute unless score @s hide_ambient_particles matches 1 run function rauch:game/ui/particle
#execute as @s[tag=spawn] run function rauch:game/shop/shop

#scores & effects
scoreboard players operation @s health_display = @s health
scoreboard players reset @s click
scoreboard players reset @s dropcoas
#scoreboard players reset @s deaths
scoreboard players reset @s hitPnum
scoreboard players reset @s fly
#tag @s remove spawn
tag @s remove raucher_debuff

effect give @s minecraft:hunger 1 255 true
#sprint off in raucher debuff cloud
#effect give @s[scores={hunger=..7},tag=!raucher_control,tag=!flagPickedUp] minecraft:saturation 1 0 true
#sprint on in raucher debuff cloud
effect give @s[scores={hunger=..7},tag=!flagPickedUp] minecraft:saturation 1 0 true
effect give @s[scores={hunger=..2}] minecraft:saturation 1 0 true
