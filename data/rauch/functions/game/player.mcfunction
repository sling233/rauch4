execute as @s[scores={dropcoas=1..}] run function rauch:game/core/ability/sdrop
execute as @s[scores={click=1..}] run function rauch:game/core/ability/sclick
execute as @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick"}]}] run function rauch:game/core/ability/sswap
execute as @s[scores={death=1..}] run function rauch:game/core/mechanics/die

#class specific
execute as @s[scores={kit=1}] run function rauch:game/core/ability/bolt/bolt
execute as @s[scores={kit=2}] run function rauch:game/core/ability/zarzahn/zarzahn
execute as @s[scores={kit=3}] run function rauch:game/core/ability/raucher/raucher
#execute as @s[scores={kit=4}] run function rauch:game/core/ability/hacker/hacker
execute as @s[scores={kit=5}] run function rauch:game/core/ability/wark/wark
execute as @s[scores={kit=6}] run function rauch:game/core/ability/teleporter/teleporter
execute as @s[scores={kit=7}] run function rauch:game/core/ability/tank/tank
execute as @s[scores={kit=8}] run function rauch:game/core/ability/flyer/flyer

#general
execute as @s[scores={push_levitation_timer=-1}] run effect clear @s minecraft:levitation
execute as @s[tag=raucher_control,tag=!raucher_debuff] run function rauch:game/core/ability/raucher/f/slow/leave
execute as @s[scores={hack=0..}] run function rauch:game/core/mechanics/hack
execute as @s[scores={teleweak=0..}] run function rauch:game/core/ability/teleporter/r/debuff
execute as @s[scores={hacker_ability=0..}] run function rauch:game/core/ability/hacker/f/ability_boost
execute as @s[scores={raucherdmg=0..}] run function rauch:game/core/ability/raucher/q/buff
execute as @s[scores={tank_resistance=0..}] run function rauch:game/core/ability/tank/q/resistance
execute as @s[scores={wark_startup=0..}] run function rauch:game/core/ability/wark/q/startup
execute as @s[scores={wark_detect=0..}] run function rauch:game/core/ability/wark/q/trapped_player
execute as @s[scores={wark_r=0..}] run function rauch:game/core/ability/wark/r/focused_player

execute as @s[scores={stun=0..}] run function rauch:game/core/mechanics/stun
execute at @s[scores={damage_taken=0..}] run function rauch:game/core/ui/damage_taken

execute as @s[tag=zarzahn_hook] run function rauch:game/core/ability/zarzahn/r/hook
function rauch:game/core/mechanics/dmg_queue/try_damage

#ui
execute as @s[scores={kit=3,cool3=0}] if score @s projectileRNum < @s projectileRMax run function rauch:game/core/ability/raucher/f/addcloud

execute as @s[scores={cool1=1..}] run function rauch:game/core/ui/counter1
execute as @s[scores={cool2=1..}] run function rauch:game/core/ui/counter2
execute as @s[scores={cool3=1..}] run function rauch:game/core/ui/counter3

execute unless score @s kit matches 3 run function rauch:game/core/ui/actionbar/cooldisnor
execute if score @s kit matches 3 run function rauch:game/core/ui/actionbar/cooldisrp

#stuff
#execute as @s[tag=spawn] run function rauch:game/core/shop/shop

#scores & effects
scoreboard players operation @s health_display = @s health
scoreboard players reset @s click
scoreboard players reset @s dropcoas
scoreboard players reset @s deaths
scoreboard players reset @s hitPnum
scoreboard players reset @s fly
#tag @s remove spawn
tag @s remove raucher_debuff

effect give @s[scores={hunger=..7},tag=!raucher_control] minecraft:saturation 1 0 true
