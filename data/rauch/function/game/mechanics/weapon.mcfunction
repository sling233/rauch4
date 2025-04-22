item replace entity @s[scores={kit=1}] hotbar.0 with minecraft:carrot_on_a_stick[item_model="rauch:bolt_trident",item_name={"text":"Bolt's Trident"},rarity=rare,unbreakable={}] 1
item replace entity @s[scores={kit=2}] hotbar.0 with minecraft:carrot_on_a_stick[item_model="rauch:zarzahn_sword",item_name={"text":"Zarzahn's Sword"},rarity=rare,unbreakable={}] 1
item replace entity @s[scores={kit=3}] hotbar.0 with minecraft:carrot_on_a_stick[item_model="rauch:raucher_staff",item_name={"text":"Raucher's Wand"},rarity=rare,unbreakable={}] 1
item replace entity @s[scores={kit=4}] hotbar.0 with minecraft:carrot_on_a_stick[item_model="rauch:hacker_sword",item_name={"text":"Hacker's Sword"},rarity=rare,unbreakable={}] 1
item replace entity @s[scores={kit=5}] hotbar.0 with minecraft:carrot_on_a_stick[item_model="rauch:wark_sword",item_name={"text":"Wark's Sword"},rarity=rare,unbreakable={}] 1
item replace entity @s[scores={kit=6}] hotbar.0 with minecraft:carrot_on_a_stick[item_model="rauch:teleporter_sword",item_name={"text":"Teleporter's Sword"},rarity=rare,unbreakable={}] 1
item replace entity @s[scores={kit=6,tele2=1..}] hotbar.0 with minecraft:carrot_on_a_stick[item_model="rauch:teleporter_sword_invisible",item_name={"text":"Teleporter's Sword"},rarity=rare,unbreakable={}] 1
item replace entity @s[scores={kit=7}] hotbar.0 with minecraft:carrot_on_a_stick[minecraft:item_model="rauch:tank_axe",item_name={"text":"Tank's Axe"},rarity=rare,unbreakable={}] 1
item replace entity @s[scores={kit=8}] hotbar.0 with minecraft:carrot_on_a_stick[minecraft:item_model="rauch:pikka_spear",item_name={"text":"Pikka's Spear"},rarity=rare,unbreakable={}] 1
execute unless score @s wokkaman_weapon matches 1.. run item replace entity @s[scores={kit=9}] hotbar.0 with minecraft:carrot_on_a_stick[item_model="rauch:attackeschwert",item_name={"text":"Attackeschwert"},rarity=epic,unbreakable={}] 1
execute if score @s wokkaman_weapon matches 1 run item replace entity @s[scores={kit=9}] hotbar.0 with minecraft:carrot_on_a_stick[item_model="rauch:plastikschwert",item_name={"text":"Plastikschwert"},rarity=epic,unbreakable={}] 1
execute if score @s wokkaman_weapon matches 2 run item replace entity @s[scores={kit=9}] hotbar.0 with minecraft:carrot_on_a_stick[item_model="rauch:angriffsaxt",item_name={"text":"Angriffsaxt"},rarity=epic,unbreakable={}] 1
execute if score @s wokkaman_weapon matches 3 run item replace entity @s[scores={kit=9}] hotbar.0 with minecraft:carrot_on_a_stick[item_model="rauch:kloppstock",item_name={"text":"Kloppstock"},rarity=epic,unbreakable={}] 1
execute if score @s wokkaman_weapon matches 4 run item replace entity @s[scores={kit=9}] hotbar.0 with minecraft:carrot_on_a_stick[item_model="rauch:piksspeer",item_name={"text":"Piksspeer"},rarity=epic,unbreakable={}] 1
