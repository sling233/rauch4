# design 4
data modify storage temp wokkaman_actionbar set value {q:"dark_purple",f:"#2194a5",r:"gold",sq:"#2a2afc",sf:"#009900",sr:"#aa2222"}
execute if score @s cool1 matches 1.. run data modify storage temp wokkaman_actionbar.r set value "gray"
execute if score @s wokkaman_rocket_count matches ..3 run data modify storage temp wokkaman_actionbar.q set value "gray"
execute if score @s cool3 matches 1.. run data modify storage temp wokkaman_actionbar.f set value "gray"
execute if score @s cool4 matches 1.. run data modify storage temp wokkaman_actionbar.sr set value "gray"
execute if score @s cool5 matches 1.. run data modify storage temp wokkaman_actionbar.sq set value "gray"
execute if score @s cool6 matches 1.. run data modify storage temp wokkaman_actionbar.sf set value "gray"
function rauch:game/ui/actionbar/wokkaman/wokkaman_4_macro with storage temp wokkaman_actionbar
