execute as @s[scores={dropcoas=1..}] run function rauch:game/kits/sdrop
execute as @s[scores={click=1..}] run function rauch:game/kits/sclick
execute if items entity @s weapon.offhand minecraft:carrot_on_a_stick run function rauch:game/kits/sswap
execute as @s[scores={death=1..}] run function rauch:game/mechanics/die

#class specific
function rauch:game/kits/tick

#general
execute as @s[scores={push_levitation_timer=-1}] run effect clear @s minecraft:levitation
execute as @s[scores={wok_push_timer=..-1}] run function rauch:game/kits/wokkaman/r/push_particle
execute as @s[tag=raucher_control,tag=!raucher_debuff] run function rauch:game/kits/raucher/r/slow/leave
execute as @s[scores={hack=0..}] run function rauch:game/kits/hacker/r/hacked_player
execute as @s[scores={hacker_damage_timer=0..}] run function rauch:game/kits/hacker/q/debuff
execute as @s[scores={teleweak=0..}] run function rauch:game/kits/teleporter/r/debuff
execute as @s[scores={hacker_ability=0..}] run function rauch:game/kits/hacker/f/ability_boost
execute as @s[scores={raucherdmg=0..}] run function rauch:game/kits/raucher/q/buff
execute as @s[scores={tank_resistance=0..}] run function rauch:game/kits/tank/q/resistance
execute as @s[scores={wark_startup=0..}] run function rauch:game/kits/wark/r/startup
execute as @s[scores={wark_detect=0..}] run function rauch:game/kits/wark/r/trapped_player
execute as @s[tag=wok_stepped_on] run function rauch:game/kits/wokkaman/sq/stepped_on
execute as @s[tag=wokkaman_q_shooting] run function rauch:game/kits/wokkaman/q/shooting

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
scoreboard players reset @s fly
#tag @s remove spawn
tag @s remove raucher_debuff

effect give @s minecraft:hunger 1 255 true
#sprint off in raucher debuff cloud
#effect give @s[scores={hunger=..7},tag=!raucher_control,tag=!flagPickedUp] minecraft:saturation 1 0 true
#sprint on in raucher debuff cloud
effect give @s[scores={hunger=..7},tag=!flagPickedUp] minecraft:saturation 1 0 true
execute if score %enable_flag_sprint global matches 1 run effect give @s[scores={hunger=..7},tag=flagPickedUp] minecraft:saturation 1 0 true
effect give @s[scores={hunger=..2}] minecraft:saturation 1 0 true
