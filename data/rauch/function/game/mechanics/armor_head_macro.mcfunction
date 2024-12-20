# normal kits
$execute as @s[tag=!flagPickedUp] unless score @s kit matches 9 run item replace entity @s armor.head with warped_fungus_on_a_stick[item_name='{"text":"Pssssst"}',rarity=uncommon,custom_model_data=0,enchantments={levels:{"rauch:cool_protection":$(armor_target),"minecraft:binding_curse":1},show_in_tooltip:false}] 1
# wokkaman helmet
$execute as @s[tag=!flagPickedUp,scores={kit=9,wokkaman_helmet=1..}] run item replace entity @s armor.head with turtle_helmet[item_name='{"text":"Schlauhut"}',rarity=epic,unbreakable={show_in_tooltip:false},enchantments={levels:{"rauch:cool_protection":$(armor_target),"minecraft:binding_curse":1},show_in_tooltip:false}] 1
$execute as @s[tag=!flagPickedUp,scores={kit=9,wokkaman_helmet=0}] run item replace entity @s armor.head with dragon_head[item_name='{"text":"Idk"}',rarity=epic,unbreakable={show_in_tooltip:false},enchantments={levels:{"rauch:cool_protection":$(armor_target),"minecraft:binding_curse":1},show_in_tooltip:false}] 1

$execute as @s[tag=flagPickedUp,team=Red] run item replace entity @s armor.head with red_banner[item_name='{"text":"Flag"}',rarity=uncommon,custom_model_data=0,enchantments={levels:{"rauch:cool_protection":$(armor_target),"minecraft:binding_curse":1},show_in_tooltip:false}] 1
$execute as @s[tag=flagPickedUp,team=Blue] run item replace entity @s armor.head with blue_banner[item_name='{"text":"Flag"}',rarity=uncommon,custom_model_data=0,enchantments={levels:{"rauch:cool_protection":$(armor_target),"minecraft:binding_curse":1},show_in_tooltip:false}] 1

# wokkaman (dont need to check flags etc bc wokkaman only exists in ctf)
