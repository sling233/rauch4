tellraw @s {text:"Deleting Map, this might take a few seconds...","color":yellow}

$execute positioned $(x) $(y) $(z) store success score t_success temp run $(delete_command)

execute if score t_success temp matches 1 run tellraw @s {text:"Success",color:green}
execute unless score t_success temp matches 1 run tellraw @s {text:"Could not delete. Area might be unloaded, or map was deleted already. You can try again.",color:red}