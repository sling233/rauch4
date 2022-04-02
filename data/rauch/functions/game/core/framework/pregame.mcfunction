clear @s
gamemode adventure @s
recipe take @s *
advancement revoke @s everything
scoreboard players set @s cool1 0
scoreboard players set @s cool2 0
scoreboard players set @s cool3 0
scoreboard players set @s stats_g_kills 0
scoreboard players set @s stats_g_deaths 0
scoreboard players set @s stats_g_damage_d 0
scoreboard players set @s stats_g_damage_t 0
scoreboard players set @s elytra 1000
scoreboard players reset @s leave
scoreboard players reset @s death
function rauch:game/core/mechanics/weapon
function rauch:game/core/mechanics/stats
#bolt
item replace entity @s[scores={kit=1}] armor.legs with minecraft:iron_leggings{display:{Name:"{\"text\":\"Bolt's Leggings\",\"color\":\"aqua\",\"italic\":false}"},HideFlags:7,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1}]} 1
item replace entity @s[scores={kit=1}] armor.chest with minecraft:iron_chestplate{display:{Name:"{\"text\":\"Bolt's Chestplate\",\"color\":\"aqua\",\"italic\":false}"},HideFlags:7,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1}]} 1
item replace entity @s[scores={kit=1}] armor.feet with minecraft:iron_boots{display:{Name:"{\"text\":\"Bolt's Boots\",\"color\":\"aqua\",\"italic\":false}"},HideFlags:7,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1}]} 1
#zarzahn
item replace entity @s[scores={kit=2}] armor.feet with minecraft:leather_boots{display:{Name:"{\"text\":\"Bolt's Boots\",\"color\":\"aqua\",\"italic\":false}",color:41216},HideFlags:7,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1}]} 1
item replace entity @s[scores={kit=2}] armor.chest with minecraft:leather_chestplate{display:{Name:"{\"text\":\"Bolt's Chestplate\",\"color\":\"aqua\",\"italic\":false}",color:41216},HideFlags:7,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1}]} 1
#raucher
item replace entity @s[scores={kit=3}] armor.feet with minecraft:diamond_boots{display:{Name:"{\"text\":\"Raucher's Boots\",\"italic\":false}"},HideFlags:7,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1}]} 1
#hacker
item replace entity @s[scores={kit=4}] armor.chest with minecraft:leather_chestplate{display:{Name:"{\"text\":\"Hacker's Chestplate\",\"color\":\"aqua\",\"italic\":false}",color:0},HideFlags:7,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1}]} 1
item replace entity @s[scores={kit=4}] armor.legs with minecraft:leather_leggings{display:{Name:"{\"text\":\"Hacker's Leggings\",\"color\":\"aqua\",\"italic\":false}",color:0},HideFlags:7,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1}]} 1
item replace entity @s[scores={kit=4}] armor.feet with minecraft:leather_boots{display:{Name:"{\"text\":\"Hacker's Boots\",\"color\":\"aqua\",\"italic\":false}",color:0},HideFlags:7,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1}]} 1
#bowmaster
item replace entity @s[scores={kit=5}] armor.chest with minecraft:leather_chestplate{display:{Name:"{\"text\":\"Bowmaster's Chestplate\",\"color\":\"aqua\",\"italic\":false}",color:15778376},HideFlags:7,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1}]} 1
item replace entity @s[scores={kit=5}] armor.legs with minecraft:leather_leggings{display:{Name:"{\"text\":\"Bowmaster's Leggings\",\"color\":\"aqua\",\"italic\":false}",color:15778376},HideFlags:7,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1}]} 1
item replace entity @s[scores={kit=5}] armor.feet with minecraft:leather_boots{display:{Name:"{\"text\":\"Bowmaster's Boots\",\"color\":\"aqua\",\"italic\":false}",color:15778376},HideFlags:7,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1}]} 1
#teleporter
item replace entity @s[scores={kit=6}] armor.chest with minecraft:leather_chestplate{display:{Name:"{\"text\":\"Teleporter's Chestplate\",\"color\":\"aqua\",\"italic\":false}",color:11162879},HideFlags:7,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1}]} 1
item replace entity @s[scores={kit=6}] armor.legs with minecraft:leather_leggings{display:{Name:"{\"text\":\"Teleporter's Leggings\",\"color\":\"aqua\",\"italic\":false}",color:11162879},HideFlags:7,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1}]} 1
item replace entity @s[scores={kit=6}] armor.feet with minecraft:leather_boots{display:{Name:"{\"text\":\"Teleporter's Boots\",\"color\":\"aqua\",\"italic\":false}",color:11162879},HideFlags:7,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1}]} 1
#tank
item replace entity @s[scores={kit=7}] armor.chest with minecraft:diamond_chestplate{display:{Name:"{\"text\":\"Tank's Chestplate\",\"color\":\"aqua\",\"italic\":false}"},HideFlags:7,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1}]} 1
item replace entity @s[scores={kit=7}] armor.legs with minecraft:diamond_leggings{display:{Name:"{\"text\":\"Tank's Leggings\",\"color\":\"aqua\",\"italic\":false}"},HideFlags:7,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1}]} 1
item replace entity @s[scores={kit=7}] armor.feet with minecraft:diamond_boots{display:{Name:"{\"text\":\"Tank's Boots\",\"color\":\"aqua\",\"italic\":false}"},HideFlags:7,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1}]} 1
#pikka
item replace entity @s[scores={kit=8}] armor.chest with elytra{display:{Name:'{"text":"Cool Elytra","color":"aqua"}'},HideFlags:5,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]} 1

item replace entity @s armor.head with oak_button{display:{Name:'{"text":"Pssssst","color":"aqua","italic":false}'},HideFlags:1,CustomModelData:0,Enchantments:[{id:"minecraft:protection",lvl:20s},{id:"minecraft:binding_curse",lvl:1s}]} 1

#effect give @s minecraft:hunger 6 255 true
effect give @s minecraft:resistance 6 255 true
effect give @s minecraft:regeneration 5 255 true
