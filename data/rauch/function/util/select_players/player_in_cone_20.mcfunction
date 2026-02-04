execute facing entity @s feet positioned ^ ^ ^20 rotated as @a[tag=t_selector,limit=1] positioned ^ ^ ^-20 if entity @a[tag=t_selector,limit=1,distance=..1] run tag @s add t_pre_selected
execute if entity @s[tag=t_pre_selected] run scoreboard players set t_success temp 1
