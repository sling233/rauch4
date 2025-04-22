clear @s minecraft:carrot_on_a_stick[item_model="rauch:red_glass"]
execute if data storage map_data edit_buffer.red[0] run tag @s add temp
execute as @s[tag=!temp] run item replace entity @s hotbar.2 with minecraft:carrot_on_a_stick[item_model="rauch:red_glass",item_name={"text":"Red Spawn","color":"yellow","italic":false}]
execute as @s[tag=temp] run item replace entity @s hotbar.2 with minecraft:carrot_on_a_stick[enchantment_glint_override=true,item_model="rauch:red_glass",item_name={"text":"Red Spawn","color":"yellow","italic":false}]

tag @s remove temp
