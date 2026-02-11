function rauch:game/mechanics/cooldowns
execute as @s[scores={death=1..}] run function rauch:game/mechanics/die
execute if entity @s[tag=dead] run return 0

# actions
execute as @s[scores={dropcoas=1..}] run function rauch:game/mechanics/sdrop
execute as @s[scores={click=1..}] run function rauch:game/mechanics/sclick
execute if items entity @s weapon.offhand minecraft:carrot_on_a_stick run function rauch:game/mechanics/sswap
execute if score @s click_warped matches 1.. if items entity @s weapon.mainhand warped_fungus_on_a_stick[custom_data~{scroll:1b}] run \
    function rauch:game/ui/show_ability_reminder

# items
execute unless items entity @s hotbar.0 carrot_on_a_stick[custom_data~{weapon:1b}] run function rauch:game/mechanics/set_weapon
execute unless items entity @s hotbar.8 warped_fungus_on_a_stick[custom_data~{scroll:1b}] run function rauch:game/ui/give_scroll

# class specific tasks
function rauch:game/kits/tick
function rauch:game/kits/tick_all

# general tasks
execute as @s[scores={heal=0..}] run function rauch:game/mechanics/heal
execute as @s[scores={stun=0..}] run function rauch:game/mechanics/stun

# mode specific tasks
function rauch:game/mode/tick_player

# launch pads
execute if score Global enable_launchpads matches 1 run function rauch:game/mechanics/launchpads/check_for_launchpads

#particles
execute unless score @s hide_ambient_particles matches 1 run function rauch:game/ui/particle
execute at @s[scores={damage_taken=0..}] run function rauch:game/ui/damage_taken

function rauch:game/ui/actionbar/cool_display

# sprint
effect give @s minecraft:hunger 1 255 true
execute if score @s hunger matches ..7 if function rauch:game/mechanics/may_sprint run effect give @s minecraft:saturation 1 0 true
execute if score @s hunger matches ..2 run effect give @s minecraft:saturation 1 0 true

scoreboard players reset @s click
scoreboard players reset @s click_warped
scoreboard players reset @s dropcoas
