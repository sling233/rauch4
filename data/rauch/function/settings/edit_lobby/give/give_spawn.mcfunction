clear @s minecraft:carrot_on_a_stick[item_model="rauch:white_glass"]
execute if data storage lobby_data edit_buffer.position[0] run tag @s add temp
execute as @s[tag=!temp] run item replace entity @s hotbar.1 with minecraft:carrot_on_a_stick[item_model="rauch:white_glass",item_name={"text":"Spawn","color":"yellow","italic":false}]
execute as @s[tag=temp] run item replace entity @s hotbar.1 with minecraft:carrot_on_a_stick[enchantment_glint_override=true,item_model="rauch:white_glass",item_name={"text":"Spawn","color":"yellow","italic":false}]

tag @s remove temp
