# as spider. player to be aggro'd has tag temp
data modify entity @s data.target set from entity @a[tag=temp,limit=1] UUID

tag @s remove setup
scoreboard players set t_success global 1
