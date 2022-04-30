#execute as @s[scores={gamestart=1..}] run function rauch:game/core/framework/countdown

execute as @s[scores={dropcoas=1..}] run function rauch:game/core/ability/sdrop
execute as @s[scores={click=1..}] run function rauch:game/core/ability/sclick
execute as @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick"}]}] run function rauch:game/core/ability/sswap
execute as @s[scores={death=1..}] run function rauch:game/core/mechanics/die

#class specific
execute as @s[scores={bolt=0..}] run function rauch:game/core/ability/class/bolt/q/charge
execute as @s[scores={boltdmg=0..}] run function rauch:game/core/ability/class/bolt/q/buff
execute as @s[scores={zarzahn_f=0..}] run function rauch:game/core/ability/class/zarzahn/f/warptimer
execute as @s[scores={hacking=0..}] run function rauch:game/core/ability/class/hacker/q/hacking
execute as @s[scores={tank=0..}] run function rauch:game/core/ability/class/tank/q/particle
execute as @s[scores={tele2=0..}] run function rauch:game/core/ability/class/teleporter/q/invisible
execute as @s[scores={kit=2,slime_despawn_timer=-1}] run function rauch:game/core/ability/class/zarzahn/q/despawn
execute as @s[scores={kit=3,slime_despawn_timer=-1}] run function rauch:game/core/ability/class/raucher/f/despawn
execute as @s[scores={kit=8,slime_despawn_timer=-1}] run function rauch:game/core/ability/class/flyer/r/despawn
execute as @s[scores={push_levitation_timer=-1}] run effect clear @s minecraft:levitation
execute as @s[scores={kit=8,flyerRSchedule=..0}] run function rauch:game/core/ability/class/flyer/r/schedule
execute as @s[scores={kit=8,flyerFSchedule=-1}] run effect clear @s minecraft:levitation
execute as @s[scores={kit=8,flyerQSchedule=..-1}] run function rauch:game/core/ability/class/flyer/q/schedule
execute as @s[scores={kit=8,fly=1..},tag=!flying] run tag @s add flying
execute as @s[scores={kit=8},tag=flying] unless score @s fly matches 1.. run function rauch:game/core/ability/class/flyer/f/land
execute as @s[scores={kit=8,fly=85..},tag=!fast] run function rauch:game/core/ability/class/flyer/f/fast
#general
execute as @s[scores={hack=0..}] run function rauch:game/core/mechanics/hacked
execute as @s[scores={teleweak=0..}] run function rauch:game/core/ability/class/teleporter/r/debuff
#execute as @s[scores={boltdmg=0..}] run function rauch:game/core/ability/class/bolt/q/debuff

execute as @s[scores={stun=0..}] run function rauch:game/core/mechanics/stun
execute as @s[scores={recall=0..}] run function rauch:game/core/ability/recall
execute at @s[scores={damage_taken=0..}] run function rauch:game/core/ui/damage_taken

execute as @s[tag=zarzahn_hook] run function rauch:game/core/ability/class/zarzahn/r/hook
execute as @s[tag=bolt] as @s[nbt={HurtTime:0s}] run function rauch:game/core/ability/class/bolt/q/damage

#ui
execute as @s[scores={kit=3,cool1=0}] if score @s projectileRNum < @s projectileRMax run function rauch:game/core/ability/class/raucher/r/addcloud
execute as @s[scores={kit=5,cool1=0}] if score @s projectileRNum < @s projectileRMax run function rauch:game/core/ability/class/bowmaster/r/addarrow
#execute as @s[scores={kit=8,cool1=0}] if score @s projectileRNum < @s projectileRMax run function rauch:game/core/ability/class/flyer/r/addrocket

execute as @s[scores={cool1=1..}] run function rauch:game/core/ui/counter1
execute as @s[scores={cool2=1..}] run function rauch:game/core/ui/counter2
execute as @s[scores={cool3=1..}] run function rauch:game/core/ui/counter3

execute unless score @s kit matches 3 unless score @s kit matches 5 run function rauch:game/core/ui/actionbar/cooldisnor
execute if score @s kit matches 3 run function rauch:game/core/ui/actionbar/cooldisrp
execute if score @s kit matches 5 run function rauch:game/core/ui/actionbar/cooldisrp

#stuff
execute as @s[tag=spawn] run function rauch:game/core/shop/shop

#scores & effects
scoreboard players operation @s health_display = @s Health
scoreboard players reset @s click
scoreboard players reset @s dropcoas
scoreboard players reset @s deaths
scoreboard players reset @s hitPnum
scoreboard players reset @s fly
tag @s remove spawn

#effect give @s minecraft:jump_boost 1 255 true ### no jump
effect give @s minecraft:saturation 1 1 true
#effect give @s[scores={hunger=3..}] minecraft:hunger 1 250 true ### no sprint
