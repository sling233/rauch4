# wokka has tag temp
# still positioned at wokka
particle minecraft:witch ~ ~1 ~ 0.2 0.4 0.2 1 120 force
particle minecraft:dragon_breath ~ ~1 ~ 0.2 0.4 0.2 0.1 60 force

execute at @s rotated ~ 0 positioned ^ ^ ^-2 as @a[tag=temp] run function rauch:game/ability/wokkaman/sf/teleport
