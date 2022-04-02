#say release
scoreboard players operation @s decode = @s bolt_hit
function rauch:game/core/mechanics/utility/decode

scoreboard players set @s bolt_hit 0
execute as @s[tag=decode1] run scoreboard players add @s bolt_hit 1
execute as @s[tag=decode1] at @s as @a[scores={pnum=1}] run function rauch:game/core/ability/class/bolt/q/release_hit
execute as @s[tag=decode2] run scoreboard players add @s bolt_hit 1
execute as @s[tag=decode2] at @s as @a[scores={pnum=2}] run function rauch:game/core/ability/class/bolt/q/release_hit
execute as @s[tag=decode3] run scoreboard players add @s bolt_hit 1
execute as @s[tag=decode3] at @s as @a[scores={pnum=3}] run function rauch:game/core/ability/class/bolt/q/release_hit
execute as @s[tag=decode4] run scoreboard players add @s bolt_hit 1
execute as @s[tag=decode4] at @s as @a[scores={pnum=4}] run function rauch:game/core/ability/class/bolt/q/release_hit
execute as @s[tag=decode5] run scoreboard players add @s bolt_hit 1
execute as @s[tag=decode5] at @s as @a[scores={pnum=5}] run function rauch:game/core/ability/class/bolt/q/release_hit
execute as @s[tag=decode6] run scoreboard players add @s bolt_hit 1
execute as @s[tag=decode6] at @s as @a[scores={pnum=6}] run function rauch:game/core/ability/class/bolt/q/release_hit
execute as @s[tag=decode7] run scoreboard players add @s bolt_hit 1
execute as @s[tag=decode7] at @s as @a[scores={pnum=7}] run function rauch:game/core/ability/class/bolt/q/release_hit
execute as @s[tag=decode8] run scoreboard players add @s bolt_hit 1
execute as @s[tag=decode8] at @s as @a[scores={pnum=8}] run function rauch:game/core/ability/class/bolt/q/release_hit
execute as @s[tag=decode9] run scoreboard players add @s bolt_hit 1
execute as @s[tag=decode9] at @s as @a[scores={pnum=9}] run function rauch:game/core/ability/class/bolt/q/release_hit
execute as @s[tag=decode10] run scoreboard players add @s bolt_hit 1
execute as @s[tag=decode10] at @s as @a[scores={pnum=10}] run function rauch:game/core/ability/class/bolt/q/release_hit
execute as @s[tag=decode11] run scoreboard players add @s bolt_hit 1
execute as @s[tag=decode11] at @s as @a[scores={pnum=11}] run function rauch:game/core/ability/class/bolt/q/release_hit
execute as @s[tag=decode12] run scoreboard players add @s bolt_hit 1
execute as @s[tag=decode12] at @s as @a[scores={pnum=12}] run function rauch:game/core/ability/class/bolt/q/release_hit

function rauch:game/core/mechanics/utility/decode_reset

execute as @s[scores={bolt_hit=0}] at @s run playsound minecraft:block.beacon.deactivate master @a
#execute as @s[scores={bolt_hit=0}] run tellraw @s {"text":"0"}
#execute as @s[scores={bolt_hit=1}] run tellraw @s {"text":"1"}
execute as @s[scores={bolt_hit=1}] run attribute @s minecraft:generic.attack_damage modifier add 0-0-0-0-4 "boltdmg1" 2.4 add
execute as @s[scores={bolt_hit=1}] run scoreboard players set @s boltdmg 80
#execute as @s[scores={bolt_hit=2}] run tellraw @s {"text":"2"}
execute as @s[scores={bolt_hit=2}] run attribute @s minecraft:generic.attack_damage modifier add 0-0-0-0-5 "boltdmg2" 4.8 add
execute as @s[scores={bolt_hit=2}] run scoreboard players set @s boltdmg 80
#execute as @s[scores={bolt_hit=3}] run tellraw @s {"text":"3"}
execute as @s[scores={bolt_hit=3}] run attribute @s minecraft:generic.attack_damage modifier add 0-0-0-0-6 "boltdmg3" 7.2 add
execute as @s[scores={bolt_hit=3}] run scoreboard players set @s boltdmg 80
#execute as @s[scores={bolt_hit=4}] run tellraw @s {"text":"4"}
execute as @s[scores={bolt_hit=4}] run attribute @s minecraft:generic.attack_damage modifier add 0-0-0-0-7 "boltdmg4" 9.6 add
execute as @s[scores={bolt_hit=4}] run scoreboard players set @s boltdmg 80
#execute as @s[scores={bolt_hit=5}] run tellraw @s {"text":"5"}
execute as @s[scores={bolt_hit=5}] run attribute @s minecraft:generic.attack_damage modifier add 0-0-0-0-8 "boltdmg5" 12 add
execute as @s[scores={bolt_hit=5}] run scoreboard players set @s boltdmg 80
#execute as @s[scores={bolt_hit=6}] run tellraw @s {"text":"6"}
execute as @s[scores={bolt_hit=6}] run attribute @s minecraft:generic.attack_damage modifier add 0-0-0-0-9 "boltdmg6" 14.4 add
execute as @s[scores={bolt_hit=6}] run scoreboard players set @s boltdmg 80
execute as @s[scores={bolt_hit=6..}] run say what

scoreboard players reset @s bolt_hit
