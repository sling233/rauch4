clear @s minecraft:carrot_on_a_stick{CustomModelData:201,display:{Name:"Blue Spawn"}}
execute if data entity @e[type=armor_stand,tag=map,tag=root,tag=adding,limit=1] ArmorItems[3].tag.Cords[1][2] run tag @s add temp
execute as @s[tag=!temp] run item replace entity @s hotbar.3 with minecraft:carrot_on_a_stick{CustomModelData:201,display:{Name:'{"text":"Blue Spawn","color":"yellow","italic":false}'}}
execute as @s[tag=temp] run item replace entity @s hotbar.3 with minecraft:carrot_on_a_stick{Enchantments:[{}],CustomModelData:201,display:{Name:'{"text":"Blue Spawn","color":"yellow","italic":false}'}}

tag @s remove temp
