clear @s minecraft:carrot_on_a_stick{CustomModelData:202,display:{Name:'{"text":"Center"}'}}
execute if data entity @e[type=armor_stand,tag=map,tag=root,tag=adding,limit=1] ArmorItems[3].tag.Cords[2][2] run tag @s add temp
execute as @s[tag=!temp] run item replace entity @s hotbar.4 with minecraft:carrot_on_a_stick{CustomModelData:202,display:{Name:'{"text":"Center","color":"yellow","italic":false}'}}
execute as @s[tag=temp] run item replace entity @s hotbar.4 with minecraft:carrot_on_a_stick{Enchantments:[{}],CustomModelData:202,display:{Name:'{"text":"Center","color":"yellow","italic":false}'}}

tag @s remove temp
