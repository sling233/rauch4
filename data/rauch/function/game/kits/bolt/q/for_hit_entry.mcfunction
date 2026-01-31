#######################################################################
# called from foreach on storage macros data.list. $(index) provides current index
#######################################################################
# for every player bolt hit. as bolt
# bolt has tag t_bolt

$execute store result score t_pnum temp run data get storage macros data.list[$(index)]
execute as @a[tag=game] if score @s pnum = t_pnum temp run function rauch:game/kits/bolt/q/release_hit
scoreboard players add t_hit_count temp 1