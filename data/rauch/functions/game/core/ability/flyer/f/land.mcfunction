tag @s remove flying
scoreboard players set @s elytra -100
item replace entity @s armor.chest with elytra{Damage:432,display:{Name:'{"text":"Cool Elytra","color":"aqua"}'},HideFlags:5,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]} 1
execute at @s run playsound minecraft:block.chain.break master @s
function rauch:game/core/ui/bossbar/speed/invisible
execute as @s[tag=fast] run attribute @s minecraft:generic.attack_damage modifier remove 0-0-0-0-3
tag @s remove fast
