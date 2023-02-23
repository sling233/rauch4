execute as @s[scores={kit=8}] run item replace entity @s armor.chest with elytra{display:{Name:'{"text":"Cool Elytra","color":"aqua"}'},HideFlags:5,Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1s}]} 1
scoreboard players reset @s hack
function rauch:game/ui/bossbar/hack/invisible
