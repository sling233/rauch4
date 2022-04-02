#item replace entity @s armor.chest with elytra{Damage:432,display:{Name:'{"text":"Cool Elytra","color":"aqua"}'},HideFlags:5,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]} 1
tag @s remove flying
execute as @s[tag=fast] run attribute @s minecraft:generic.attack_damage modifier remove 0-0-0-0-3
execute at @s[tag=fast] run playsound minecraft:block.chain.break master @s
tag @s remove fast
