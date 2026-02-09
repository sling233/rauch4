execute if score Global gameend matches 1.. run return 0
execute unless entity @a[team=Red,tag=game,tag=!dead] unless entity @a[team=Blue,tag=game,tag=!dead] run function rauch:game/framework/stats/tie
execute unless entity @a[team=Red,tag=game,tag=!dead] run function rauch:game/framework/stats/win_blue
execute unless entity @a[team=Blue,tag=game,tag=!dead] run function rauch:game/framework/stats/win_red
