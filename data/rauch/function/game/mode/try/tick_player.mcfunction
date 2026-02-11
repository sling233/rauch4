execute unless items entity @s hotbar.7 minecraft:warped_fungus_on_a_stick run function rauch:game/mode/try/give_blue
execute unless items entity @s hotbar.6 minecraft:warped_fungus_on_a_stick run function rauch:game/mode/try/give_red
execute unless items entity @s hotbar.5 minecraft:warped_fungus_on_a_stick run function rauch:game/mode/try/give_compass

execute unless score @s click_warped matches 1.. run return 0
execute if items entity @s weapon.mainhand \
    warped_fungus_on_a_stick[item_model="rauch:blue_glass"] run function rauch:game/mode/try/join_blue
execute if items entity @s weapon.mainhand \
    warped_fungus_on_a_stick[item_model="rauch:red_glass"] run function rauch:game/mode/try/join_red
execute if items entity @s weapon.mainhand \
    warped_fungus_on_a_stick[item_model="minecraft:compass"] run function rauch:game/mode/try/leave


execute at @s run playsound ui.button.click master @s