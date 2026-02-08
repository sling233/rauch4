scoreboard players reset @s hacker_damage_timer

# check if @s was tagged by a hacker (got_reawrd is so the hacker doesn't get 2 charges if r and q tagged @s when he died)
scoreboard objectives add got_reward dummy
#function rauch:game/kits/hacker/r/tag/check_me
function rauch:game/kits/hacker/r/tagged_player_died
function rauch:game/kits/hacker/q/tagged_player_died
scoreboard objectives remove got_reward
