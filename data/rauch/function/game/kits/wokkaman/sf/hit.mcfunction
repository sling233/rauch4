# as and wokka
# player hit has tag t_selected
execute at @s run particle minecraft:witch ~ ~1 ~ 0.2 0.4 0.2 1 120 force
execute at @s run particle minecraft:dragon_breath ~ ~1 ~ 0.2 0.4 0.2 0.1 60 force

execute at @a[tag=t_selected] rotated ~ 0 positioned ^ ^ ^-2 run function rauch:game/kits/wokkaman/sf/teleport
