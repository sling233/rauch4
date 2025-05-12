#called from killer reward function t_killer and t_killed tags
execute unless entity @a[tag=t_killed] run say kill detection malfunctioned, no victim

function rauch:game/mechanics/kill
tag @a remove t_killer
tag @a remove t_killed
