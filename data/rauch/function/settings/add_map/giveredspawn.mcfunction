clear @s minecraft:carrot_on_a_stick[custom_model_data=200]
execute if data storage map_data maps[0].red[0] run tag @s add temp
execute as @s[tag=!temp] run item replace entity @s hotbar.2 with minecraft:carrot_on_a_stick[custom_model_data=200,custom_name='{"text":"Red Spawn","color":"yellow","italic":false}']
execute as @s[tag=temp] run item replace entity @s hotbar.2 with minecraft:carrot_on_a_stick[enchantment_glint_override=true,custom_model_data=200,custom_name='{"text":"Red Spawn","color":"yellow","italic":false}']

tag @s remove temp
