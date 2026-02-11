team join Blue @s
tellraw @s [{text:"Joined Team ",color:"yellow"},{text:"Blue",color:"blue"}]
execute unless predicate rauch:sneak run function rauch:game/framework/tp_to_blue_spawn