#execute if entity @a[tag=dead] run function rauch:game/framework/end_game
#execute as @a[scores={kit=4,hacker_charges=0}] run scoreboard players set @s hacker_charges 2
execute as @s[scores={kit=5,wark_charge=..99900}] run scoreboard players add @s wark_charge 1000


execute unless items entity @s hotbar.7 minecraft:warped_fungus_on_a_stick run function rauch:game/mode/practice/give_blue
execute unless items entity @s hotbar.6 minecraft:warped_fungus_on_a_stick run function rauch:game/mode/practice/give_red
execute unless items entity @s hotbar.5 minecraft:warped_fungus_on_a_stick run function rauch:game/mode/practice/give_compass

execute unless score @s click_warped matches 1.. run return 0
execute if items entity @s weapon.mainhand \
    warped_fungus_on_a_stick[item_model="rauch:blue_glass"] run function rauch:game/mode/practice/join_blue
execute if items entity @s weapon.mainhand \
    warped_fungus_on_a_stick[item_model="rauch:red_glass"] run function rauch:game/mode/practice/join_red
execute if items entity @s weapon.mainhand \
    warped_fungus_on_a_stick[item_model="minecraft:compass"] run function rauch:game/framework/end_game


execute at @s run playsound ui.button.click master @s