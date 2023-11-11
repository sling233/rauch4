# stunned has tag t_stunned, @s is wokka
execute at @s run tp @s ~ ~0 ~
# if player's feet are in ground
execute at @s unless block ~ ~ ~ #minecraft:nonsolid if block ~ ~1 ~ #minecraft:nonsolid align y positioned ~ ~1 ~ run tp @s ~ ~ ~
# if player's feet and eyes are in ground
execute at @s unless block ~ ~1 ~ #minecraft:nonsolid facing entity @a[tag=t_stunned,limit=1] feet positioned ^ ^ ^1 run tp @s ~ ~ ~
# do both checks twice
execute at @s unless block ~ ~ ~ #minecraft:nonsolid if block ~ ~1 ~ #minecraft:nonsolid align y positioned ~ ~1 ~ run tp @s ~ ~ ~
execute at @s unless block ~ ~1 ~ #minecraft:nonsolid facing entity @a[tag=t_stunned,limit=1] feet positioned ^ ^ ^1 run tp @s ~ ~ ~

scoreboard players reset @s zarzahn_hooking
tag @s remove inverted_hook
execute at @s run playsound minecraft:entity.player.attack.sweep master @a ~ ~ ~
scoreboard players set @s slime_despawn_timer -5
execute as @s[team=Red] run function rauch:game/ability/wokkaman/r/spawn_slime_red
execute as @s[team=Blue] run function rauch:game/ability/wokkaman/r/spawn_slime_blue

execute as @a[tag=t_stunned] run function rauch:game/mechanics/unstun
execute as @a[tag=t_stunned] run scoreboard players set @s push_levitation_timer -4
execute as @a[tag=t_stunned] run effect give @s minecraft:levitation 1 40 true
damage @a[tag=t_stunned,limit=1] 20 minecraft:falling_anvil
tag @a[tag=t_stunned] remove wok_hook
