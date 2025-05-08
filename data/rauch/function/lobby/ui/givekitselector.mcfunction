clear @s minecraft:written_book[item_name={"text":"Kit Selector/Settings","color":"yellow"}]

data modify storage temp kitselector set value {"bolt":"gray","zarzahn":"gray","raucher":"gray","hacker":"gray","wark":"gray","teleporter":"gray","tank":"gray","pikka":"gray","wokkaman":"gray",\
"ambient":"gray","density":"gray","not_ambient":"dark_green","not_density":"dark_green",\
"design_0":"gray","design_1":"gray","design_2":"gray","design_3":"gray","design_4":"gray",\
"night_never":"dark_green","night_dark":"gray","night_always":"gray"}

execute as @s[scores={kit=1}] run data modify storage temp kitselector.bolt set value "dark_green"
execute as @s[scores={kit=2}] run data modify storage temp kitselector.zarzahn set value "dark_green"
execute as @s[scores={kit=3}] run data modify storage temp kitselector.raucher set value "dark_green"
execute as @s[scores={kit=4}] run data modify storage temp kitselector.hacker set value "dark_green"
execute as @s[scores={kit=5}] run data modify storage temp kitselector.wark set value "dark_green"
execute as @s[scores={kit=6}] run data modify storage temp kitselector.teleporter set value "dark_green"
execute as @s[scores={kit=7}] run data modify storage temp kitselector.tank set value "dark_green"
execute as @s[scores={kit=8}] run data modify storage temp kitselector.pikka set value "dark_green"
execute as @s[scores={kit=9}] run data modify storage temp kitselector.wokkaman set value "dark_green"

execute if score @s hide_ambient_particles matches 1 run data modify storage temp kitselector.ambient set value "dark_green"
execute if score @s hide_ambient_particles matches 1 run data modify storage temp kitselector.not_ambient set value "gray"

execute if score @s night_vision_accessibility matches 1..2 run data modify storage temp kitselector.night_never set value "gray"
execute if score @s night_vision_accessibility matches 1 run data modify storage temp kitselector.night_dark set value "dark_green"
execute if score @s night_vision_accessibility matches 2 run data modify storage temp kitselector.night_always set value "dark_green"

execute if score @s actionbar_design matches 0 run data modify storage temp kitselector.design_0 set value "dark_green"
execute if score @s actionbar_design matches 1 run data modify storage temp kitselector.design_1 set value "dark_green"
execute if score @s actionbar_design matches 2 run data modify storage temp kitselector.design_2 set value "dark_green"
execute if score @s actionbar_design matches 3 run data modify storage temp kitselector.design_3 set value "dark_green"
execute if score @s actionbar_design matches 4 run data modify storage temp kitselector.design_4 set value "dark_green"
#execute if score @s particleDensity matches 1 run data modify storage temp kitselector.density set value "dark_green"
#execute if score @s particleDensity matches 1 run data modify storage temp kitselector.not_density set value "gray"

function rauch:lobby/ui/givekitselector_macro with storage temp kitselector
#item replace entity @s hotbar.8 from entity @e[type=item_frame,tag=kitselector,limit=1] container.0
