execute as @s[scores={dropcoas=1..}] run function rauch:game/mechanics/sdrop
execute as @s[scores={click=1..}] run function rauch:game/mechanics/sclick
execute if items entity @s weapon.offhand minecraft:carrot_on_a_stick run function rauch:game/mechanics/sswap
execute as @s[scores={death=1..}] run function rauch:game/mechanics/die

# ability reminder stuff
execute unless items entity @s hotbar.0 carrot_on_a_stick[custom_data~{weapon:1b}] run function rauch:game/mechanics/set_weapon
execute unless items entity @s hotbar.8 warped_fungus_on_a_stick[custom_data~{scroll:1b}] run function rauch:game/ui/give_scroll
execute if score @s click_warped matches 1.. if items entity @s weapon.mainhand warped_fungus_on_a_stick[custom_data~{scroll:1b}] run \
    function rauch:game/ui/show_ability_reminder

# class specific tasks
function rauch:game/kits/tick
function rauch:game/kits/tick_all

#general
execute as @s[scores={push_levitation_timer=-1}] run effect clear @s minecraft:levitation
execute as @s[scores={heal=0..}] run function rauch:game/mechanics/heal
execute as @s[scores={stun=0..}] run function rauch:game/mechanics/stun
execute at @s[scores={damage_taken=0..}] run function rauch:game/ui/damage_taken

# mode specific tasks
function rauch:game/mode/tick_player

# launch pads
execute if score Global enable_launchpads matches 1 run function rauch:game/mechanics/launchpads/check_for_launchpads

#particles
execute unless score @s hide_ambient_particles matches 1 run function rauch:game/ui/particle

# scores and effects
scoreboard players operation @s health_display = @s health
effect give @s minecraft:hunger 1 255 true
#sprint off in raucher debuff cloud
#effect give @s[scores={hunger=..7},tag=!raucher_control,tag=!flagPickedUp] minecraft:saturation 1 0 true
#sprint on in raucher debuff cloud
effect give @s[scores={hunger=..7},tag=!flagPickedUp] minecraft:saturation 1 0 true
execute if score %enable_flag_sprint global matches 1 run effect give @s[scores={hunger=..7},tag=flagPickedUp] minecraft:saturation 1 0 true
effect give @s[scores={hunger=..2}] minecraft:saturation 1 0 true

#tag @s remove spawn


scoreboard players reset @s click
scoreboard players reset @s click_warped
scoreboard players reset @s dropcoas
