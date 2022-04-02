clear @s minecraft:carrot_on_a_stick{CustomModelData:200,display:{Name:"Red Spawn"}}
execute if data entity @e[type=armor_stand,tag=map,tag=root,tag=adding,limit=1] ArmorItems[3].tag.Cords[0][2] run tag @s add temp
execute as @s[tag=!temp] run item replace entity @s hotbar.2 with minecraft:carrot_on_a_stick{CustomModelData:200,display:{Name:'{"text":"Red Spawn","color":"yellow","italic":false}'}}
execute as @s[tag=temp] run item replace entity @s hotbar.2 with minecraft:carrot_on_a_stick{Enchantments:[{}],CustomModelData:200,display:{Name:'{"text":"Red Spawn","color":"yellow","italic":false}'}}

tag @s remove temp
