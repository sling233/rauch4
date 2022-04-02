scoreboard players remove @s tele2 1
execute as @s[scores={tele2=..0}] run tag @s add temp
execute as @s[scores={damage_dealt=1..}] run tag @s add temp
execute as @s[tag=temp] run scoreboard players reset @s tele2
execute as @s[tag=temp] run effect clear @s invisibility
execute as @s[tag=temp] run clear @s carrot_on_a_stick
execute as @s[tag=temp] run function rauch:game/core/mechanics/weapon
execute as @s[tag=temp] run item replace entity @s[scores={kit=6}] armor.chest with minecraft:leather_chestplate{display:{Name:"{\"text\":\"Teleporter's Chestplate\",\"color\":\"aqua\",\"italic\":false}",color:11162879},HideFlags:7,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUIDLeast:818442,UUIDMost:99670}]} 1
execute as @s[tag=temp] run item replace entity @s[scores={kit=6}] armor.legs with minecraft:leather_leggings{display:{Name:"{\"text\":\"Teleporter's Leggings\",\"color\":\"aqua\",\"italic\":false}",color:11162879},HideFlags:7,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUIDLeast:818442,UUIDMost:99670}]} 1
execute as @s[tag=temp] run item replace entity @s[scores={kit=6}] armor.feet with minecraft:leather_boots{display:{Name:"{\"text\":\"Teleporter's Boots\",\"color\":\"aqua\",\"italic\":false}",color:11162879},HideFlags:7,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUIDLeast:818442,UUIDMost:99670}]} 1
execute as @s[tag=temp] run tag @s remove temp
