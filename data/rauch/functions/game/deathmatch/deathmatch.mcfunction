execute unless entity @a[team=Red,tag=!dead] unless entity @a[team=Blue,tag=!dead] run function rauch:game/add/stats/tie
execute if entity @a[tag=game] unless entity @a[team=Red,tag=!dead] run function rauch:game/add/stats/win_blue
execute if entity @a[tag=game] unless entity @a[team=Blue,tag=!dead] run function rauch:game/add/stats/win_red
