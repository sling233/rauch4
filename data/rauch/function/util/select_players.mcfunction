#######################################################################################
# gives one player tag t_selected based on the viewing angle of origin player
# -> execute as origin player
# -> selectable players must have tag t_selectable
# -> selected player (if exists) gets tag t_selected
# -> (tag reset automatically)
#######################################################################################

# reset tag from previous use
tag @a[tag=t_selected] remove t_selected

tag @s add t_selector

execute at @s run function rauch:util/select_players/check_cones
scoreboard players reset t_success temp
tag @s remove t_selector

tag @a[tag=t_selectable] remove t_selectable
tag @a[tag=t_pre_selected,sort=nearest,limit=1] add t_selected
tag @a[tag=t_pre_selected] remove t_pre_selected