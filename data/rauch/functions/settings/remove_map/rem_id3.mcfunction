tellraw @s {"text":"Removed Map","color":"green"}
tellraw @s [{"text":"-> ","color":"dark_green"},{"nbt":"CustomName","entity":"@e[type=armor_stand,tag=map,scores={mapId=3},limit=1,tag=root]","interpret":true,"color":"light_purple"}]
kill @e[type=armor_stand,tag=map,scores={mapId=3}]
function rauch:settings/calc_mapid/calcmapid
tellraw @s {"text":"----------------------------------","color":"yellow"}
