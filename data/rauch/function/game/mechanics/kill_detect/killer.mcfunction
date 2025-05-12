#called from killed advancement (gets called after killed fsr. i hope it stays thius way)
#say killer
tag @s add t_killer
advancement revoke @s only rauch:killer
function rauch:game/mechanics/kill_detect/detected
