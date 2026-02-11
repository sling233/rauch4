team join Red @s
tellraw @s [{text:"Joined Team ",color:"yellow"},{text:"Red",color:"red"}]
execute unless predicate rauch:sneak run function rauch:game/framework/tp_to_red_spawn