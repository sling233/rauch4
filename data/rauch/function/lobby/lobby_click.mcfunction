scoreboard players reset @s click

# not queue
execute if items entity @s weapon.mainhand *[item_model="rauch:green"] run return run function rauch:lobby/lobby_click/join_queue
execute if items entity @s weapon.mainhand *[item_model="rauch:eye"] run return run function rauch:lobby/lobby_click/spectate
# both
execute if items entity @s weapon.mainhand *[item_model="rauch:compass"] run return run function rauch:lobby/tp_to_lobby
execute as @s[tag=admin] if items entity @s weapon.mainhand *[item_model="rauch:blue"] run return run function rauch:lobby/lobby_click/admin_start
# queue
execute if items entity @s weapon.mainhand *[item_model="rauch:red"] run return run function rauch:lobby/lobby_click/leave_queue
execute if items entity @s weapon.mainhand *[item_model="rauch:red_glass"] run return run team join Red @s
execute if items entity @s weapon.mainhand *[item_model="rauch:blue_glass"] run return run team join Blue @s
execute if items entity @s weapon.mainhand *[item_model="rauch:white_glass"] run return run team join Random @s
