tag @a[team=Red] add t_red
tag @a[team=Blue] add t_blu
team empty Red
team empty Blue
team join Red @a[tag=t_red]
team join Blue @a[tag=t_blu]
tag @a remove t_red
tag @a remove t_blu
