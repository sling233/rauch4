# requires macros: name, x, y, z, delete_command

$tellraw @s [{"text":"Map $(name) was an official map, thus the structure can be deleted too.","color":"yellow"},\
    {color:"gold","text":" Click here to delete.",click_event:{action:"run_command",command:"/function rauch:settings/remove_map/erase_map {x:$(x),y:$(y),z:$(z),delete_command:\"$(delete_command)\"}"}}]
