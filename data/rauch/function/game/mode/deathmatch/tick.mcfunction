execute unless score Global gameend matches 1.. unless entity @a[team=Red,tag=!dead] unless entity @a[team=Blue,tag=!dead] run function rauch:game/framework/stats/tie
execute unless score Global gameend matches 1.. unless entity @a[team=Red,tag=!dead] run function rauch:game/framework/stats/win_blue
execute unless score Global gameend matches 1.. unless entity @a[team=Blue,tag=!dead] run function rauch:game/framework/stats/win_red
