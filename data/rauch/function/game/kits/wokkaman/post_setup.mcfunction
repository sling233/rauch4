##########################################################
execute unless score @s kit matches 9 run return 0

function rauch:game/ui/bossbar/elytra/set_max

# wokkaman give starting rockets (return early if delayed clear is active
# these  items will be given later in that case
execute if score %enable_delayed_clear global matches 1 run return 0
function rauch:game/framework/wokkaman_set_starting_rockets
function rauch:game/kits/wokkaman/fireworks/give_starting_firework_rockets
function rauch:game/framework/wokkaman_give_starting_maces
