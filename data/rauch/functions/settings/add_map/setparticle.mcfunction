scoreboard players operation @e[type=armor_stand,tag=map,tag=root,tag=adding,limit=1] mapParticle = @s mapParticle
execute as @a[scores={mapParticle=100}] run scoreboard players set @e[type=armor_stand,tag=map,tag=root,tag=adding,limit=1] mapParticle -1
execute at @s run playsound minecraft:block.tripwire.click_off master @s ~ ~ ~ 1
function rauch:settings/add_map/givevisual
scoreboard players reset @s mapParticle
