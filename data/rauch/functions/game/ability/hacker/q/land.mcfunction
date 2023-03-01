execute at @s run playsound minecraft:block.conduit.deactivate master @a
execute at @s[tag=red] run summon marker ~ ~ ~ {Tags:["hacker_bomb","center","setup","red"]}
execute at @s[tag=blu] run summon marker ~ ~ ~ {Tags:["hacker_bomb","center","setup","blu"]}
scoreboard players operation @e[type=marker,tag=hacker_bomb,tag=setup,limit=1] pnum = @s pnum
summon marker ~ ~ ~ {Tags:["hacker_bomb","indicator","ind0","setup"]}
summon marker ~ ~ ~ {Tags:["hacker_bomb","indicator","ind1","setup"]}
summon marker ~ ~ ~ {Tags:["hacker_bomb","indicator","ind2","setup"]}
summon marker ~ ~ ~ {Tags:["hacker_bomb","indicator","ind3","setup"]}
summon marker ~ ~ ~ {Tags:["hacker_bomb","indicator","ind4","setup"]}
summon marker ~ ~ ~ {Tags:["hacker_bomb","indicator","ind5","setup"]}
summon marker ~ ~ ~ {Tags:["hacker_bomb","indicator","ind6","setup"]}
summon marker ~ ~ ~ {Tags:["hacker_bomb","indicator","ind7","setup"]}

execute at @s rotated 0 0 run tp @e[type=marker,tag=setup,tag=hacker_bomb,tag=ind0] ~ ~ ~ ~ ~
execute at @s rotated 45 0 run tp @e[type=marker,tag=setup,tag=hacker_bomb,tag=ind1] ~ ~ ~ ~ ~
execute at @s rotated 90 0 run tp @e[type=marker,tag=setup,tag=hacker_bomb,tag=ind2] ~ ~ ~ ~ ~
execute at @s rotated 135 0 run tp @e[type=marker,tag=setup,tag=hacker_bomb,tag=ind3] ~ ~ ~ ~ ~
execute at @s rotated 180 0 run tp @e[type=marker,tag=setup,tag=hacker_bomb,tag=ind4] ~ ~ ~ ~ ~
execute at @s rotated 225 0 run tp @e[type=marker,tag=setup,tag=hacker_bomb,tag=ind5] ~ ~ ~ ~ ~
execute at @s rotated 270 0 run tp @e[type=marker,tag=setup,tag=hacker_bomb,tag=ind6] ~ ~ ~ ~ ~
execute at @s rotated 315 0 run tp @e[type=marker,tag=setup,tag=hacker_bomb,tag=ind7] ~ ~ ~ ~ ~

tag @e[type=marker,tag=setup,tag=hacker_bomb] remove setup
kill @s
execute at @s run particle minecraft:dust 0.1 0.2 0.1 1 ~0.0 ~0.1 ~5.44 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust 0.1 0.2 0.1 1 ~0.379 ~0.1 ~5.427 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust 0.1 0.2 0.1 1 ~0.757 ~0.1 ~5.387 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust 0.1 0.2 0.1 1 ~1.131 ~0.1 ~5.321 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust 0.1 0.2 0.1 1 ~1.499 ~0.1 ~5.229 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust 0.1 0.2 0.1 1 ~1.861 ~0.1 ~5.112 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust 0.1 0.2 0.1 1 ~2.213 ~0.1 ~4.97 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust 0.1 0.2 0.1 1 ~2.554 ~0.1 ~4.803 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust 0.1 0.2 0.1 1 ~2.883 ~0.1 ~4.613 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust 0.1 0.2 0.1 1 ~3.198 ~0.1 ~4.401 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust 0.1 0.2 0.1 1 ~3.497 ~0.1 ~4.167 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust 0.1 0.2 0.1 1 ~3.779 ~0.1 ~3.913 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust 0.1 0.2 0.1 1 ~4.043 ~0.1 ~3.64 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust 0.1 0.2 0.1 1 ~4.287 ~0.1 ~3.349 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust 0.1 0.2 0.1 1 ~4.51 ~0.1 ~3.042 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust 0.1 0.2 0.1 1 ~4.711 ~0.1 ~2.72 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust 0.1 0.2 0.1 1 ~4.889 ~0.1 ~2.385 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust 0.1 0.2 0.1 1 ~5.044 ~0.1 ~2.038 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust 0.1 0.2 0.1 1 ~5.174 ~0.1 ~1.681 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust 0.1 0.2 0.1 1 ~5.278 ~0.1 ~1.316 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust 0.1 0.2 0.1 1 ~5.357 ~0.1 ~0.945 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust 0.1 0.2 0.1 1 ~5.41 ~0.1 ~0.569 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust 0.1 0.2 0.1 1 ~5.437 ~0.1 ~0.19 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust 0.1 0.2 0.1 1 ~5.437 ~0.1 ~-0.19 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust 0.1 0.2 0.1 1 ~5.41 ~0.1 ~-0.569 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust 0.1 0.2 0.1 1 ~5.357 ~0.1 ~-0.945 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust 0.1 0.2 0.1 1 ~5.278 ~0.1 ~-1.316 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust 0.1 0.2 0.1 1 ~5.174 ~0.1 ~-1.681 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust 0.1 0.2 0.1 1 ~5.044 ~0.1 ~-2.038 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust 0.1 0.2 0.1 1 ~4.889 ~0.1 ~-2.385 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust 0.1 0.2 0.1 1 ~4.711 ~0.1 ~-2.72 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust 0.1 0.2 0.1 1 ~4.51 ~0.1 ~-3.042 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust 0.1 0.2 0.1 1 ~4.287 ~0.1 ~-3.349 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust 0.1 0.2 0.1 1 ~4.043 ~0.1 ~-3.64 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust 0.1 0.2 0.1 1 ~3.779 ~0.1 ~-3.913 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust 0.1 0.2 0.1 1 ~3.497 ~0.1 ~-4.167 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust 0.1 0.2 0.1 1 ~3.198 ~0.1 ~-4.401 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust 0.1 0.2 0.1 1 ~2.883 ~0.1 ~-4.613 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust 0.1 0.2 0.1 1 ~2.554 ~0.1 ~-4.803 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust 0.1 0.2 0.1 1 ~2.213 ~0.1 ~-4.97 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust 0.1 0.2 0.1 1 ~1.861 ~0.1 ~-5.112 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust 0.1 0.2 0.1 1 ~1.499 ~0.1 ~-5.229 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust 0.1 0.2 0.1 1 ~1.131 ~0.1 ~-5.321 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust 0.1 0.2 0.1 1 ~0.757 ~0.1 ~-5.387 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust 0.1 0.2 0.1 1 ~0.379 ~0.1 ~-5.427 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust 0.1 0.2 0.1 1 ~0.0 ~0.1 ~-5.44 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust 0.1 0.2 0.1 1 ~-0.379 ~0.1 ~-5.427 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust 0.1 0.2 0.1 1 ~-0.757 ~0.1 ~-5.387 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust 0.1 0.2 0.1 1 ~-1.131 ~0.1 ~-5.321 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust 0.1 0.2 0.1 1 ~-1.499 ~0.1 ~-5.229 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust 0.1 0.2 0.1 1 ~-1.861 ~0.1 ~-5.112 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust 0.1 0.2 0.1 1 ~-2.213 ~0.1 ~-4.97 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust 0.1 0.2 0.1 1 ~-2.554 ~0.1 ~-4.803 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust 0.1 0.2 0.1 1 ~-2.883 ~0.1 ~-4.613 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust 0.1 0.2 0.1 1 ~-3.198 ~0.1 ~-4.401 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust 0.1 0.2 0.1 1 ~-3.497 ~0.1 ~-4.167 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust 0.1 0.2 0.1 1 ~-3.779 ~0.1 ~-3.913 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust 0.1 0.2 0.1 1 ~-4.043 ~0.1 ~-3.64 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust 0.1 0.2 0.1 1 ~-4.287 ~0.1 ~-3.349 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust 0.1 0.2 0.1 1 ~-4.51 ~0.1 ~-3.042 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust 0.1 0.2 0.1 1 ~-4.711 ~0.1 ~-2.72 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust 0.1 0.2 0.1 1 ~-4.889 ~0.1 ~-2.385 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust 0.1 0.2 0.1 1 ~-5.044 ~0.1 ~-2.038 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust 0.1 0.2 0.1 1 ~-5.174 ~0.1 ~-1.681 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust 0.1 0.2 0.1 1 ~-5.278 ~0.1 ~-1.316 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust 0.1 0.2 0.1 1 ~-5.357 ~0.1 ~-0.945 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust 0.1 0.2 0.1 1 ~-5.41 ~0.1 ~-0.569 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust 0.1 0.2 0.1 1 ~-5.437 ~0.1 ~-0.19 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust 0.1 0.2 0.1 1 ~-5.437 ~0.1 ~0.19 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust 0.1 0.2 0.1 1 ~-5.41 ~0.1 ~0.569 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust 0.1 0.2 0.1 1 ~-5.357 ~0.1 ~0.945 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust 0.1 0.2 0.1 1 ~-5.278 ~0.1 ~1.316 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust 0.1 0.2 0.1 1 ~-5.174 ~0.1 ~1.681 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust 0.1 0.2 0.1 1 ~-5.044 ~0.1 ~2.038 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust 0.1 0.2 0.1 1 ~-4.889 ~0.1 ~2.385 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust 0.1 0.2 0.1 1 ~-4.711 ~0.1 ~2.72 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust 0.1 0.2 0.1 1 ~-4.51 ~0.1 ~3.042 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust 0.1 0.2 0.1 1 ~-4.287 ~0.1 ~3.349 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust 0.1 0.2 0.1 1 ~-4.043 ~0.1 ~3.64 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust 0.1 0.2 0.1 1 ~-3.779 ~0.1 ~3.913 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust 0.1 0.2 0.1 1 ~-3.497 ~0.1 ~4.167 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust 0.1 0.2 0.1 1 ~-3.198 ~0.1 ~4.401 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust 0.1 0.2 0.1 1 ~-2.883 ~0.1 ~4.613 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust 0.1 0.2 0.1 1 ~-2.554 ~0.1 ~4.803 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust 0.1 0.2 0.1 1 ~-2.213 ~0.1 ~4.97 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust 0.1 0.2 0.1 1 ~-1.861 ~0.1 ~5.112 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust 0.1 0.2 0.1 1 ~-1.499 ~0.1 ~5.229 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust 0.1 0.2 0.1 1 ~-1.131 ~0.1 ~5.321 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust 0.1 0.2 0.1 1 ~-0.757 ~0.1 ~5.387 0.02 0.02 0.02 1 1 force
execute at @s run particle minecraft:dust 0.1 0.2 0.1 1 ~-0.379 ~0.1 ~5.427 0.02 0.02 0.02 1 1 force
