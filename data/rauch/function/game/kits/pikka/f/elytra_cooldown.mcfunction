scoreboard players remove @s elytra 1
function rauch:game/ui/bossbar/elytra/update
scoreboard players set @s[predicate=!rauch:skill,scores={elytra=0}] elytra 1
execute as @s[scores={elytra=..0}] run function rauch:game/kits/pikka/f/elytrarestore
