clear @s minecraft:carrot_on_a_stick[custom_model_data=202]
execute if data storage map_data edit_buffer.center[0] run tag @s add temp
execute as @s[tag=!temp] run item replace entity @s hotbar.4 with minecraft:carrot_on_a_stick[custom_model_data=202,custom_name='{"text":"Center","color":"yellow","italic":false}']
execute as @s[tag=temp] run item replace entity @s hotbar.4 with minecraft:carrot_on_a_stick[enchantment_glint_override=true,custom_model_data=202,custom_name='{"text":"Center","color":"yellow","italic":false}']

tag @s remove temp
