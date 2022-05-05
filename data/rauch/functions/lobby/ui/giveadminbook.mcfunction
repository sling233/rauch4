clear @s minecraft:written_book{title:"Settings"}

summon item_frame ~ 255 ~ {Tags:["adminbook"],Invisible:1b,Fixed:1b,Item:{}}

execute unless score Global mode matches 0..3 run item replace entity @e[type=item_frame,tag=adminbook,limit=1] container.0 with written_book{pages:['["",{"text":"      Settings\\n\\n","bold":true},{"text":"Mode:\\n","color":"gold"},{"text":"[","color":"dark_gray"},{"text":"Deathmatch","color":"gray","hoverEvent":{"action":"show_text","contents":[{"text":"Eliminate the other team. Simple as that.","color":"white"}]},"clickEvent":{"action":"run_command","value":"/trigger adminsetting set 1"}},{"text":"]\\n","color":"dark_gray"},{"text":"[","color":"dark_gray"},{"text":"King of the Hill","color":"gray","hoverEvent":{"action":"show_text","contents":[{"text":"Unfinished mode and not really working at this time :(","color":"white"}]},"clickEvent":{"action":"run_command","value":"/trigger adminsetting set 2"}},{"text":"]\\n","color":"dark_gray"},{"text":"[","color":"dark_gray"},{"text":"Respawn Deathmatch","color":"gray","hoverEvent":{"action":"show_text","contents":[{"text":"The first team to atm 20 kills wins","color":"white"}]},"clickEvent":{"action":"run_command","value":"/trigger adminsetting set 3"}},{"text":"]\\n","color":"dark_gray"},{"text":"[","color":"dark_gray"},{"text":"Testing Mode","color":"gray","hoverEvent":{"action":"show_text","contents":[{"text":"Exactly what it says. No ability cooldown and stuff like that.","color":"white"}]},"clickEvent":{"action":"run_command","value":"/trigger adminsetting set 4"}},{"text":"]\\n","color":"dark_gray"},{"text":"[","color":"dark_gray"},{"text":"Capture The Flag","color":"gray","hoverEvent":{"action":"show_text","contents":[{"text":"Transport the Flag to the Enemy Base 5 times to win","color":"white"}]},"clickEvent":{"action":"run_command","value":"/trigger adminsetting set 5"}},{"text":"]\\n","color":"dark_gray"}]'],title:Settings,author:"",display:{Name:"{\"text\":\"Settings\",\"color\":\"yellow\",\"italic\":false}"}}
execute if score Global mode matches 0 run item replace entity @e[type=item_frame,tag=adminbook,limit=1] container.0 with written_book{pages:['["",{"text":"      Settings\\n\\n","bold":true},{"text":"Mode:\\n","color":"gold"},{"text":"[","color":"dark_gray"},{"text":"Deathmatch","color":"dark_green","hoverEvent":{"action":"show_text","contents":[{"text":"Eliminate the other team. Simple as that.","color":"white"}]},"clickEvent":{"action":"run_command","value":"/trigger adminsetting set 1"}},{"text":"]\\n","color":"dark_gray"},{"text":"[","color":"dark_gray"},{"text":"King of the Hill","color":"gray","hoverEvent":{"action":"show_text","contents":[{"text":"Unfinished mode and not really working at this time :(","color":"white"}]},"clickEvent":{"action":"run_command","value":"/trigger adminsetting set 2"}},{"text":"]\\n","color":"dark_gray"},{"text":"[","color":"dark_gray"},{"text":"Respawn Deathmatch","color":"gray","hoverEvent":{"action":"show_text","contents":[{"text":"The first team to atm 20 kills wins","color":"white"}]},"clickEvent":{"action":"run_command","value":"/trigger adminsetting set 3"}},{"text":"]\\n","color":"dark_gray"},{"text":"[","color":"dark_gray"},{"text":"Testing Mode","color":"gray","hoverEvent":{"action":"show_text","contents":[{"text":"Exactly what it says. No ability cooldown and stuff like that.","color":"white"}]},"clickEvent":{"action":"run_command","value":"/trigger adminsetting set 4"}},{"text":"]\\n","color":"dark_gray"},{"text":"[","color":"dark_gray"},{"text":"Capture The Flag","color":"gray","hoverEvent":{"action":"show_text","contents":[{"text":"Transport the Flag to the Enemy Base 5 times to win","color":"white"}]},"clickEvent":{"action":"run_command","value":"/trigger adminsetting set 5"}},{"text":"]\\n","color":"dark_gray"}]'],title:Settings,author:"",display:{Name:"{\"text\":\"Settings\",\"color\":\"yellow\",\"italic\":false}"}}
execute if score Global mode matches 1 run item replace entity @e[type=item_frame,tag=adminbook,limit=1] container.0 with written_book{pages:['["",{"text":"      Settings\\n\\n","bold":true},{"text":"Mode:\\n","color":"gold"},{"text":"[","color":"dark_gray"},{"text":"Deathmatch","color":"gray","hoverEvent":{"action":"show_text","contents":[{"text":"Eliminate the other team. Simple as that.","color":"white"}]},"clickEvent":{"action":"run_command","value":"/trigger adminsetting set 1"}},{"text":"]\\n","color":"dark_gray"},{"text":"[","color":"dark_gray"},{"text":"King of the Hill","color":"dark_green","hoverEvent":{"action":"show_text","contents":[{"text":"Unfinished mode and not really working at this time :(","color":"white"}]},"clickEvent":{"action":"run_command","value":"/trigger adminsetting set 2"}},{"text":"]\\n","color":"dark_gray"},{"text":"[","color":"dark_gray"},{"text":"Respawn Deathmatch","color":"gray","hoverEvent":{"action":"show_text","contents":[{"text":"The first team to atm 20 kills wins","color":"white"}]},"clickEvent":{"action":"run_command","value":"/trigger adminsetting set 3"}},{"text":"]\\n","color":"dark_gray"},{"text":"[","color":"dark_gray"},{"text":"Testing Mode","color":"gray","hoverEvent":{"action":"show_text","contents":[{"text":"Exactly what it says. No ability cooldown and stuff like that.","color":"white"}]},"clickEvent":{"action":"run_command","value":"/trigger adminsetting set 4"}},{"text":"]\\n","color":"dark_gray"},{"text":"[","color":"dark_gray"},{"text":"Capture The Flag","color":"gray","hoverEvent":{"action":"show_text","contents":[{"text":"Transport the Flag to the Enemy Base 5 times to win","color":"white"}]},"clickEvent":{"action":"run_command","value":"/trigger adminsetting set 5"}},{"text":"]\\n","color":"dark_gray"}]'],title:Settings,author:"",display:{Name:"{\"text\":\"Settings\",\"color\":\"yellow\",\"italic\":false}"}}
execute if score Global mode matches 2 run item replace entity @e[type=item_frame,tag=adminbook,limit=1] container.0 with written_book{pages:['["",{"text":"      Settings\\n\\n","bold":true},{"text":"Mode:\\n","color":"gold"},{"text":"[","color":"dark_gray"},{"text":"Deathmatch","color":"gray","hoverEvent":{"action":"show_text","contents":[{"text":"Eliminate the other team. Simple as that.","color":"white"}]},"clickEvent":{"action":"run_command","value":"/trigger adminsetting set 1"}},{"text":"]\\n","color":"dark_gray"},{"text":"[","color":"dark_gray"},{"text":"King of the Hill","color":"gray","hoverEvent":{"action":"show_text","contents":[{"text":"Unfinished mode and not really working at this time :(","color":"white"}]},"clickEvent":{"action":"run_command","value":"/trigger adminsetting set 2"}},{"text":"]\\n","color":"dark_gray"},{"text":"[","color":"dark_gray"},{"text":"Respawn Deathmatch","color":"dark_green","hoverEvent":{"action":"show_text","contents":[{"text":"The first team to atm 20 kills wins","color":"white"}]},"clickEvent":{"action":"run_command","value":"/trigger adminsetting set 3"}},{"text":"]\\n","color":"dark_gray"},{"text":"[","color":"dark_gray"},{"text":"Testing Mode","color":"gray","hoverEvent":{"action":"show_text","contents":[{"text":"Exactly what it says. No ability cooldown and stuff like that.","color":"white"}]},"clickEvent":{"action":"run_command","value":"/trigger adminsetting set 4"}},{"text":"]\\n","color":"dark_gray"},{"text":"[","color":"dark_gray"},{"text":"Capture The Flag","color":"gray","hoverEvent":{"action":"show_text","contents":[{"text":"Transport the Flag to the Enemy Base 5 times to win","color":"white"}]},"clickEvent":{"action":"run_command","value":"/trigger adminsetting set 5"}},{"text":"]\\n","color":"dark_gray"}]'],title:Settings,author:"",display:{Name:"{\"text\":\"Settings\",\"color\":\"yellow\",\"italic\":false}"}}
execute if score Global mode matches 3 run item replace entity @e[type=item_frame,tag=adminbook,limit=1] container.0 with written_book{pages:['["",{"text":"      Settings\\n\\n","bold":true},{"text":"Mode:\\n","color":"gold"},{"text":"[","color":"dark_gray"},{"text":"Deathmatch","color":"gray","hoverEvent":{"action":"show_text","contents":[{"text":"Eliminate the other team. Simple as that.","color":"white"}]},"clickEvent":{"action":"run_command","value":"/trigger adminsetting set 1"}},{"text":"]\\n","color":"dark_gray"},{"text":"[","color":"dark_gray"},{"text":"King of the Hill","color":"gray","hoverEvent":{"action":"show_text","contents":[{"text":"Unfinished mode and not really working at this time :(","color":"white"}]},"clickEvent":{"action":"run_command","value":"/trigger adminsetting set 2"}},{"text":"]\\n","color":"dark_gray"},{"text":"[","color":"dark_gray"},{"text":"Respawn Deathmatch","color":"gray","hoverEvent":{"action":"show_text","contents":[{"text":"The first team to atm 20 kills wins","color":"white"}]},"clickEvent":{"action":"run_command","value":"/trigger adminsetting set 3"}},{"text":"]\\n","color":"dark_gray"},{"text":"[","color":"dark_gray"},{"text":"Testing Mode","color":"dark_green","hoverEvent":{"action":"show_text","contents":[{"text":"Exactly what it says. No ability cooldown and stuff like that.","color":"white"}]},"clickEvent":{"action":"run_command","value":"/trigger adminsetting set 4"}},{"text":"]\\n","color":"dark_gray"},{"text":"[","color":"dark_gray"},{"text":"Capture The Flag","color":"gray","hoverEvent":{"action":"show_text","contents":[{"text":"Transport the Flag to the Enemy Base 5 times to win","color":"white"}]},"clickEvent":{"action":"run_command","value":"/trigger adminsetting set 5"}},{"text":"]\\n","color":"dark_gray"}]'],title:Settings,author:"",display:{Name:"{\"text\":\"Settings\",\"color\":\"yellow\",\"italic\":false}"}}
execute if score Global mode matches 4 run item replace entity @e[type=item_frame,tag=adminbook,limit=1] container.0 with written_book{pages:['["",{"text":"      Settings\\n\\n","bold":true},{"text":"Mode:\\n","color":"gold"},{"text":"[","color":"dark_gray"},{"text":"Deathmatch","color":"gray","hoverEvent":{"action":"show_text","contents":[{"text":"Eliminate the other team. Simple as that.","color":"white"}]},"clickEvent":{"action":"run_command","value":"/trigger adminsetting set 1"}},{"text":"]\\n","color":"dark_gray"},{"text":"[","color":"dark_gray"},{"text":"King of the Hill","color":"gray","hoverEvent":{"action":"show_text","contents":[{"text":"Unfinished mode and not really working at this time :(","color":"white"}]},"clickEvent":{"action":"run_command","value":"/trigger adminsetting set 2"}},{"text":"]\\n","color":"dark_gray"},{"text":"[","color":"dark_gray"},{"text":"Respawn Deathmatch","color":"gray","hoverEvent":{"action":"show_text","contents":[{"text":"The first team to atm 20 kills wins","color":"white"}]},"clickEvent":{"action":"run_command","value":"/trigger adminsetting set 3"}},{"text":"]\\n","color":"dark_gray"},{"text":"[","color":"dark_gray"},{"text":"Testing Mode","color":"gray","hoverEvent":{"action":"show_text","contents":[{"text":"Exactly what it says. No ability cooldown and stuff like that.","color":"white"}]},"clickEvent":{"action":"run_command","value":"/trigger adminsetting set 4"}},{"text":"]\\n","color":"dark_gray"},{"text":"[","color":"dark_gray"},{"text":"Capture The Flag","color":"dark_green","hoverEvent":{"action":"show_text","contents":[{"text":"Transport the Flag to the Enemy Base 5 times to win","color":"white"}]},"clickEvent":{"action":"run_command","value":"/trigger adminsetting set 5"}},{"text":"]\\n","color":"dark_gray"}]'],title:Settings,author:"",display:{Name:"{\"text\":\"Settings\",\"color\":\"yellow\",\"italic\":false}"}}

execute unless entity @e[type=armor_stand,tag=map,tag=root,scores={mapId=0}] run data modify entity @e[type=item_frame,tag=adminbook,limit=1] Item.tag.pages append value '[{"text":"    "},{"text":"Map Selector\\n\\n","bold":true},{"text":"No Maps","color":"dark_gray"}]'
execute if entity @e[type=armor_stand,tag=map,tag=root,scores={mapId=0}] unless entity @e[type=armor_stand,tag=map,tag=root,scores={mapId=1}] run data modify entity @e[type=item_frame,tag=adminbook,limit=1] Item.tag.pages append value '[{"text":"    "},{"text":"Map Selector\\n","bold":true},{"text":"\\n[","color":"dark_gray"},{"text":"Set","color":"dark_green","clickEvent":{"action":"run_command","value":"/trigger adminsetting set 100"}},{"text":"] ","color":"dark_gray"},{"nbt":"CustomName","entity":"@e[type=armor_stand,tag=root,limit=1,scores={mapId=0}]","interpret":true}]'
execute if entity @e[type=armor_stand,tag=map,tag=root,scores={mapId=1}] unless entity @e[type=armor_stand,tag=map,tag=root,scores={mapId=2}] run data modify entity @e[type=item_frame,tag=adminbook,limit=1] Item.tag.pages append value '[{"text":"    "},{"text":"Map Selector\\n","bold":true},{"text":"\\n[","color":"dark_gray"},{"text":"Set","color":"dark_green","clickEvent":{"action":"run_command","value":"/trigger adminsetting set 100"}},{"text":"] ","color":"dark_gray"},{"nbt":"CustomName","entity":"@e[type=armor_stand,tag=root,limit=1,scores={mapId=0}]","interpret":true},{"text":"\\n[","color":"dark_gray"},{"text":"Set","color":"dark_green","clickEvent":{"action":"run_command","value":"/trigger adminsetting set 101"}},{"text":"] ","color":"dark_gray"},{"nbt":"CustomName","entity":"@e[type=armor_stand,tag=root,limit=1,scores={mapId=1}]","interpret":true}]'
execute if entity @e[type=armor_stand,tag=map,tag=root,scores={mapId=2}] unless entity @e[type=armor_stand,tag=map,tag=root,scores={mapId=3}] run data modify entity @e[type=item_frame,tag=adminbook,limit=1] Item.tag.pages append value '[{"text":"    "},{"text":"Map Selector\\n","bold":true},{"text":"\\n[","color":"dark_gray"},{"text":"Set","color":"dark_green","clickEvent":{"action":"run_command","value":"/trigger adminsetting set 100"}},{"text":"] ","color":"dark_gray"},{"nbt":"CustomName","entity":"@e[type=armor_stand,tag=root,limit=1,scores={mapId=0}]","interpret":true},{"text":"\\n[","color":"dark_gray"},{"text":"Set","color":"dark_green","clickEvent":{"action":"run_command","value":"/trigger adminsetting set 101"}},{"text":"] ","color":"dark_gray"},{"nbt":"CustomName","entity":"@e[type=armor_stand,tag=root,limit=1,scores={mapId=1}]","interpret":true},{"text":"\\n[","color":"dark_gray"},{"text":"Set","color":"dark_green","clickEvent":{"action":"run_command","value":"/trigger adminsetting set 102"}},{"text":"] ","color":"dark_gray"},{"nbt":"CustomName","entity":"@e[type=armor_stand,tag=root,limit=1,scores={mapId=2}]","interpret":true}]'
execute if entity @e[type=armor_stand,tag=map,tag=root,scores={mapId=3}] unless entity @e[type=armor_stand,tag=map,tag=root,scores={mapId=4}] run data modify entity @e[type=item_frame,tag=adminbook,limit=1] Item.tag.pages append value '[{"text":"    "},{"text":"Map Selector\\n","bold":true},{"text":"\\n[","color":"dark_gray"},{"text":"Set","color":"dark_green","clickEvent":{"action":"run_command","value":"/trigger adminsetting set 100"}},{"text":"] ","color":"dark_gray"},{"nbt":"CustomName","entity":"@e[type=armor_stand,tag=root,limit=1,scores={mapId=0}]","interpret":true},{"text":"\\n[","color":"dark_gray"},{"text":"Set","color":"dark_green","clickEvent":{"action":"run_command","value":"/trigger adminsetting set 101"}},{"text":"] ","color":"dark_gray"},{"nbt":"CustomName","entity":"@e[type=armor_stand,tag=root,limit=1,scores={mapId=1}]","interpret":true},{"text":"\\n[","color":"dark_gray"},{"text":"Set","color":"dark_green","clickEvent":{"action":"run_command","value":"/trigger adminsetting set 102"}},{"text":"] ","color":"dark_gray"},{"nbt":"CustomName","entity":"@e[type=armor_stand,tag=root,limit=1,scores={mapId=2}]","interpret":true},{"text":"\\n[","color":"dark_gray"},{"text":"Set","color":"dark_green","clickEvent":{"action":"run_command","value":"/trigger adminsetting set 103"}},{"text":"] ","color":"dark_gray"},{"nbt":"CustomName","entity":"@e[type=armor_stand,tag=root,limit=1,scores={mapId=3}]","interpret":true}]'
execute if entity @e[type=armor_stand,tag=map,tag=root,scores={mapId=4}] unless entity @e[type=armor_stand,tag=map,tag=root,scores={mapId=5}] run data modify entity @e[type=item_frame,tag=adminbook,limit=1] Item.tag.pages append value '[{"text":"    "},{"text":"Map Selector\\n","bold":true},{"text":"\\n[","color":"dark_gray"},{"text":"Set","color":"dark_green","clickEvent":{"action":"run_command","value":"/trigger adminsetting set 100"}},{"text":"] ","color":"dark_gray"},{"nbt":"CustomName","entity":"@e[type=armor_stand,tag=root,limit=1,scores={mapId=0}]","interpret":true},{"text":"\\n[","color":"dark_gray"},{"text":"Set","color":"dark_green","clickEvent":{"action":"run_command","value":"/trigger adminsetting set 101"}},{"text":"] ","color":"dark_gray"},{"nbt":"CustomName","entity":"@e[type=armor_stand,tag=root,limit=1,scores={mapId=1}]","interpret":true},{"text":"\\n[","color":"dark_gray"},{"text":"Set","color":"dark_green","clickEvent":{"action":"run_command","value":"/trigger adminsetting set 102"}},{"text":"] ","color":"dark_gray"},{"nbt":"CustomName","entity":"@e[type=armor_stand,tag=root,limit=1,scores={mapId=2}]","interpret":true},{"text":"\\n[","color":"dark_gray"},{"text":"Set","color":"dark_green","clickEvent":{"action":"run_command","value":"/trigger adminsetting set 103"}},{"text":"] ","color":"dark_gray"},{"nbt":"CustomName","entity":"@e[type=armor_stand,tag=root,limit=1,scores={mapId=3}]","interpret":true},{"text":"\\n[","color":"dark_gray"},{"text":"Set","color":"dark_green","clickEvent":{"action":"run_command","value":"/trigger adminsetting set 104"}},{"text":"] ","color":"dark_gray"},{"nbt":"CustomName","entity":"@e[type=armor_stand,tag=root,limit=1,scores={mapId=4}]","interpret":true}]'
execute if entity @e[type=armor_stand,tag=map,tag=root,scores={mapId=5}] unless entity @e[type=armor_stand,tag=map,tag=root,scores={mapId=6}] run data modify entity @e[type=item_frame,tag=adminbook,limit=1] Item.tag.pages append value '[{"text":"    "},{"text":"Map Selector\\n","bold":true},{"text":"\\n[","color":"dark_gray"},{"text":"Set","color":"dark_green","clickEvent":{"action":"run_command","value":"/trigger adminsetting set 100"}},{"text":"] ","color":"dark_gray"},{"nbt":"CustomName","entity":"@e[type=armor_stand,tag=root,limit=1,scores={mapId=0}]","interpret":true},{"text":"\\n[","color":"dark_gray"},{"text":"Set","color":"dark_green","clickEvent":{"action":"run_command","value":"/trigger adminsetting set 101"}},{"text":"] ","color":"dark_gray"},{"nbt":"CustomName","entity":"@e[type=armor_stand,tag=root,limit=1,scores={mapId=1}]","interpret":true},{"text":"\\n[","color":"dark_gray"},{"text":"Set","color":"dark_green","clickEvent":{"action":"run_command","value":"/trigger adminsetting set 102"}},{"text":"] ","color":"dark_gray"},{"nbt":"CustomName","entity":"@e[type=armor_stand,tag=root,limit=1,scores={mapId=2}]","interpret":true},{"text":"\\n[","color":"dark_gray"},{"text":"Set","color":"dark_green","clickEvent":{"action":"run_command","value":"/trigger adminsetting set 103"}},{"text":"] ","color":"dark_gray"},{"nbt":"CustomName","entity":"@e[type=armor_stand,tag=root,limit=1,scores={mapId=3}]","interpret":true},{"text":"\\n[","color":"dark_gray"},{"text":"Set","color":"dark_green","clickEvent":{"action":"run_command","value":"/trigger adminsetting set 104"}},{"text":"] ","color":"dark_gray"},{"nbt":"CustomName","entity":"@e[type=armor_stand,tag=root,limit=1,scores={mapId=4}]","interpret":true},{"text":"\\n[","color":"dark_gray"},{"text":"Set","color":"dark_green","clickEvent":{"action":"run_command","value":"/trigger adminsetting set 105"}},{"text":"] ","color":"dark_gray"},{"nbt":"CustomName","entity":"@e[type=armor_stand,tag=root,limit=1,scores={mapId=5}]","interpret":true}]'
execute if entity @e[type=armor_stand,tag=map,tag=root,scores={mapId=6}] unless entity @e[type=armor_stand,tag=map,tag=root,scores={mapId=7}] run data modify entity @e[type=item_frame,tag=adminbook,limit=1] Item.tag.pages append value '[{"text":"    "},{"text":"Map Selector\\n","bold":true},{"text":"\\n[","color":"dark_gray"},{"text":"Set","color":"dark_green","clickEvent":{"action":"run_command","value":"/trigger adminsetting set 100"}},{"text":"] ","color":"dark_gray"},{"nbt":"CustomName","entity":"@e[type=armor_stand,tag=root,limit=1,scores={mapId=0}]","interpret":true},{"text":"\\n[","color":"dark_gray"},{"text":"Set","color":"dark_green","clickEvent":{"action":"run_command","value":"/trigger adminsetting set 101"}},{"text":"] ","color":"dark_gray"},{"nbt":"CustomName","entity":"@e[type=armor_stand,tag=root,limit=1,scores={mapId=1}]","interpret":true},{"text":"\\n[","color":"dark_gray"},{"text":"Set","color":"dark_green","clickEvent":{"action":"run_command","value":"/trigger adminsetting set 102"}},{"text":"] ","color":"dark_gray"},{"nbt":"CustomName","entity":"@e[type=armor_stand,tag=root,limit=1,scores={mapId=2}]","interpret":true},{"text":"\\n[","color":"dark_gray"},{"text":"Set","color":"dark_green","clickEvent":{"action":"run_command","value":"/trigger adminsetting set 103"}},{"text":"] ","color":"dark_gray"},{"nbt":"CustomName","entity":"@e[type=armor_stand,tag=root,limit=1,scores={mapId=3}]","interpret":true},{"text":"\\n[","color":"dark_gray"},{"text":"Set","color":"dark_green","clickEvent":{"action":"run_command","value":"/trigger adminsetting set 104"}},{"text":"] ","color":"dark_gray"},{"nbt":"CustomName","entity":"@e[type=armor_stand,tag=root,limit=1,scores={mapId=4}]","interpret":true},{"text":"\\n[","color":"dark_gray"},{"text":"Set","color":"dark_green","clickEvent":{"action":"run_command","value":"/trigger adminsetting set 105"}},{"text":"] ","color":"dark_gray"},{"nbt":"CustomName","entity":"@e[type=armor_stand,tag=root,limit=1,scores={mapId=5}]","interpret":true},{"text":"\\n[","color":"dark_gray"},{"text":"Set","color":"dark_green","clickEvent":{"action":"run_command","value":"/trigger adminsetting set 106"}},{"text":"] ","color":"dark_gray"},{"nbt":"CustomName","entity":"@e[type=armor_stand,tag=root,limit=1,scores={mapId=6}]","interpret":true}]'
execute if entity @e[type=armor_stand,tag=map,tag=root,scores={mapId=7}] unless entity @e[type=armor_stand,tag=map,tag=root,scores={mapId=9}] run data modify entity @e[type=item_frame,tag=adminbook,limit=1] Item.tag.pages append value '[{"text":"    "},{"text":"Map Selector\\n","bold":true},{"text":"\\n[","color":"dark_gray"},{"text":"Set","color":"dark_green","clickEvent":{"action":"run_command","value":"/trigger adminsetting set 100"}},{"text":"] ","color":"dark_gray"},{"nbt":"CustomName","entity":"@e[type=armor_stand,tag=root,limit=1,scores={mapId=0}]","interpret":true},{"text":"\\n[","color":"dark_gray"},{"text":"Set","color":"dark_green","clickEvent":{"action":"run_command","value":"/trigger adminsetting set 101"}},{"text":"] ","color":"dark_gray"},{"nbt":"CustomName","entity":"@e[type=armor_stand,tag=root,limit=1,scores={mapId=1}]","interpret":true},{"text":"\\n[","color":"dark_gray"},{"text":"Set","color":"dark_green","clickEvent":{"action":"run_command","value":"/trigger adminsetting set 102"}},{"text":"] ","color":"dark_gray"},{"nbt":"CustomName","entity":"@e[type=armor_stand,tag=root,limit=1,scores={mapId=2}]","interpret":true},{"text":"\\n[","color":"dark_gray"},{"text":"Set","color":"dark_green","clickEvent":{"action":"run_command","value":"/trigger adminsetting set 103"}},{"text":"] ","color":"dark_gray"},{"nbt":"CustomName","entity":"@e[type=armor_stand,tag=root,limit=1,scores={mapId=3}]","interpret":true},{"text":"\\n[","color":"dark_gray"},{"text":"Set","color":"dark_green","clickEvent":{"action":"run_command","value":"/trigger adminsetting set 104"}},{"text":"] ","color":"dark_gray"},{"nbt":"CustomName","entity":"@e[type=armor_stand,tag=root,limit=1,scores={mapId=4}]","interpret":true},{"text":"\\n[","color":"dark_gray"},{"text":"Set","color":"dark_green","clickEvent":{"action":"run_command","value":"/trigger adminsetting set 105"}},{"text":"] ","color":"dark_gray"},{"nbt":"CustomName","entity":"@e[type=armor_stand,tag=root,limit=1,scores={mapId=5}]","interpret":true},{"text":"\\n[","color":"dark_gray"},{"text":"Set","color":"dark_green","clickEvent":{"action":"run_command","value":"/trigger adminsetting set 106"}},{"text":"] ","color":"dark_gray"},{"nbt":"CustomName","entity":"@e[type=armor_stand,tag=root,limit=1,scores={mapId=6}]","interpret":true},{"text":"\\n[","color":"dark_gray"},{"text":"Set","color":"dark_green","clickEvent":{"action":"run_command","value":"/trigger adminsetting set 107"}},{"text":"] ","color":"dark_gray"},{"nbt":"CustomName","entity":"@e[type=armor_stand,tag=root,limit=1,scores={mapId=7}]","interpret":true}]'

data modify entity @e[type=item_frame,tag=adminbook,limit=1] Item.tag.pages append value '["",{"text":"       Repair","bold":true},{"text":"\\n\\nRe-add scoreboard objectives\\n\\n","color":"dark_blue","clickEvent":{"action":"run_command","value":"/function rauch:settings/removeobj"},"hoverEvent":{"action":"show_text","value":"This will re-add every scoreboard objective, bossbar and team relevant to the datapack. The gamemode and your selected kit will be reset. All maps get deleted. If the pack updates and something looks weird, a bossbar for example, this can fix it."}},{"text":"Add Map\\n\\n","color":"dark_blue","hoverEvent":{"action":"show_text","contents":[{"text":"Click if you want to add a Map"}]},"clickEvent":{"action":"run_command","value":"/function rauch:settings/add_map/addmap"}},{"text":"Remove Map\\n\\n","color":"dark_blue","hoverEvent":{"action":"show_text","contents":[{"text":"Click if you want to remove a Map"}]},"clickEvent":{"action":"run_command","value":"/function rauch:settings/remove_map/removemap"}},{"text":"Recalculate Map Ids\\n\\n","color":"dark_blue","hoverEvent":{"action":"show_text","contents":[{"text":"Click if the Map Selector looks weird"}]},"clickEvent":{"action":"run_command","value":"/function rauch:settings/calc_mapid/calcmapid"}},{"text":"Move Everyone to Lobby\\n\\n","color":"dark_blue","hoverEvent":{"action":"show_text","contents":[{"text":"Moves every online player to the lobby"}]},"clickEvent":{"action":"run_command","value":"/function rauch:settings/movetolobby/movetolobby"}}]'

item replace entity @s hotbar.0 from entity @e[type=item_frame,tag=adminbook,limit=1] container.0
kill @e[type=item_frame,tag=adminbook]
