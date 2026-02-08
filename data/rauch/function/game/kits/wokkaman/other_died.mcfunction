execute as @s[tag=wok_stepped_on] run function rauch:game/kits/wokkaman/sq/kill_wokkamans_boat
tag @s remove wok_stepped_on

execute as @s[tag=wok_hook] run function rauch:game/kits/wokkaman/r/cancel_hook

# remove from wokkaman sr tag lists
function rauch:game/kits/wokkaman/sr/remove_tag
