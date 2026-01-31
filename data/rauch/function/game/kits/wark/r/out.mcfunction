function rauch:game/ui/bossbar/wark/invisible
execute at @s run playsound minecraft:entity.warden.agitated master @s
effect give @s darkness 2 0 true
#effect give @s minecraft:slowness 5 1 false
scoreboard players reset @s wark_detect
