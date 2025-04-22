clear @s minecraft:carrot_on_a_stick[item_model="rauch:blue_glass"]
execute if data storage map_data edit_buffer.blue[0] run tag @s add temp
execute as @s[tag=!temp] run item replace entity @s hotbar.3 with minecraft:carrot_on_a_stick[item_model="rauch:blue_glass",item_name={"text":"Blue Spawn","color":"yellow","italic":false}]
execute as @s[tag=temp] run item replace entity @s hotbar.3 with minecraft:carrot_on_a_stick[enchantment_glint_override=true,item_model="rauch:blue_glass",item_name={"text":"Blue Spawn","color":"yellow","italic":false}]

tag @s remove temp
