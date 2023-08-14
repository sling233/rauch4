function rauch:game/mode/capture_the_flag/flag_drop
execute as @a[tag=game,predicate=rauch:stun] run function rauch:game/mechanics/unstun
execute as @a[tag=game,tag=zarzahn_hook] run function rauch:game/ability/zarzahn/r/cancel_hook
