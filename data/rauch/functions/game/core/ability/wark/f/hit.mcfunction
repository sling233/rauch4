execute at @s[team=Red] facing entity @a[tag=temp,sort=furthest,limit=1] feet run function rauch:game/core/ability/wark/f/spawn_red
execute at @s[team=Blue] facing entity @a[tag=temp,sort=furthest,limit=1] feet run function rauch:game/core/ability/wark/f/spawn_blue
scoreboard players set @s slime_despawn_timer -5
scoreboard players set @s push_levitation_timer -4
effect give @s minecraft:levitation 1 20 true

execute at @s run playsound minecraft:entity.warden.attack_impact master @a
scoreboard players operation @s cool3 = @s cool3_target
