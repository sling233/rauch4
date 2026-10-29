#called from killer reward function t_killer and t_killed tags
#say detected

#execute unless entity @a[tag=t_killed] run say kill detection malfunctioned, no victim

execute if entity @a[tag=t_killed] run function rauch:game/mechanics/kill

tag @a remove t_killer
tag @a remove t_killed
