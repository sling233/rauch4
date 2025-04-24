#######################################################################
# called from foreach on storage macros data.list. $(index) provides current index
#######################################################################

$data modify storage rauch temp.pnum set from storage macros data.list[$(index)]
function rauch:game/ability/wokkaman/sr/stun with storage rauch temp