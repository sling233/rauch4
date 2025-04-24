#############################################################################
# called by foreach on storage map_data maps. $(index) has current index
#############################################################################

# calculate page:
$scoreboard players set t_index temp $(index)
#scoreboard players add t_index temp 2
scoreboard players set 10 const 10
scoreboard players operation t_page temp = t_index temp
scoreboard players operation t_page temp /= 10 const
execute store result storage rauch temp.previous_page int 1 run scoreboard players get t_page temp
scoreboard players add t_page temp 1
execute store result storage rauch temp.page int 1 run scoreboard players get t_page temp

# check for new page
scoreboard players operation t_modulo temp = t_index temp
scoreboard players operation t_modulo temp %= 10 const
execute if score t_page temp matches 2.. if score t_modulo temp matches 0 run function rauch:lobby/ui/adminbook/new_mapselector_page with storage rauch temp

execute if score t_index temp = t_active_map_idx temp run data modify storage rauch temp.is_active set value "dark_green"
execute unless score t_index temp = t_active_map_idx temp run data modify storage rauch temp.is_active set value "dark_gray"

$data modify storage rauch temp.index set value $(index)
execute store result storage rauch temp.page int 1 run scoreboard players get t_page temp
function rauch:lobby/ui/adminbook/add_map_entry with storage rauch temp

scoreboard players reset t_index temp
scoreboard players reset t_page temp
scoreboard players reset t_modulo temp
