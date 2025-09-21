scoreboard objectives add actionbar_design dummy
scoreboard objectives add adminsetting trigger
scoreboard objectives add armor_target dummy
scoreboard objectives add bolt dummy
scoreboard objectives add boltdmg dummy
scoreboard objectives add boltspeed minecraft.custom:minecraft.time_since_rest
scoreboard objectives add click minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add clouds dummy
scoreboard objectives add const dummy
scoreboard objectives add cool1 dummy
scoreboard objectives add cool1_target dummy
scoreboard objectives add cool1_respawn dummy
scoreboard objectives add cool2 dummy
scoreboard objectives add cool2_target dummy
scoreboard objectives add cool2_respawn dummy
scoreboard objectives add cool3 dummy
scoreboard objectives add cool3_target dummy
scoreboard objectives add cool3_respawn dummy
scoreboard objectives add damage_dealt minecraft.custom:minecraft.damage_dealt
scoreboard objectives add damage_taken minecraft.custom:minecraft.damage_taken
scoreboard objectives add death minecraft.custom:minecraft.deaths
scoreboard objectives add drop minecraft.custom:minecraft.drop
scoreboard objectives add dropcoas minecraft.dropped:minecraft.carrot_on_a_stick
scoreboard objectives add enable_launchpads dummy
scoreboard objectives add elytra dummy
scoreboard objectives add elytra_cooldown dummy
scoreboard objectives add fly minecraft.custom:minecraft.aviate_one_cm
scoreboard objectives add flyerFSchedule minecraft.custom:minecraft.time_since_rest
scoreboard objectives add flyerQSchedule minecraft.custom:minecraft.time_since_rest
scoreboard objectives add game_id dummy
scoreboard objectives add game_running dummy
scoreboard objectives add gameend dummy
scoreboard objectives add gamestart dummy
scoreboard objectives add global dummy
scoreboard objectives add hack dummy
scoreboard objectives add hack_tag_timer dummy
scoreboard objectives add hacker_ability dummy
scoreboard objectives add hacker_charges dummy
scoreboard objectives add hacker_damage_timer dummy
scoreboard objectives add hacker_damage_timer_control dummy
scoreboard objectives add heal dummy
scoreboard objectives add health health {"text":"❤","color":"red"}
scoreboard objectives add health_display dummy
scoreboard objectives add hunger food
scoreboard objectives add kit dummy
scoreboard objectives add kitselect trigger
scoreboard objectives add leave minecraft.custom:minecraft.leave_game
scoreboard objectives add map_is_dark dummy
scoreboard objectives add mapParticle dummy
scoreboard objectives add map_setting trigger
scoreboard objectives add maxClouds dummy
scoreboard objectives add mode dummy
scoreboard objectives add night_vision_accessibility dummy
scoreboard objectives add hide_ambient_particles dummy
scoreboard objectives add particleDensity dummy
scoreboard objectives add plcount dummy
scoreboard objectives add pnum dummy
scoreboard objectives add projectileRMax dummy
scoreboard objectives add projectileRNum dummy
scoreboard objectives add projectileRNumRespawn dummy
scoreboard objectives add push_levitation_timer minecraft.custom:minecraft.time_since_rest
scoreboard objectives add raucherdmg dummy
scoreboard objectives add raucherdmg_num dummy
scoreboard objectives add raucher_spider_despawn_timer minecraft.custom:minecraft.time_since_rest
scoreboard objectives add respawn dummy
scoreboard objectives add slime_despawn_timer minecraft.custom:minecraft.time_since_rest
scoreboard objectives add stats_g_damage_d minecraft.custom:minecraft.damage_dealt
scoreboard objectives add stats_g_damage_t minecraft.custom:minecraft.damage_taken
scoreboard objectives add stats_g_deaths minecraft.custom:minecraft.deaths
scoreboard objectives add stats_g_kills playerKillCount
scoreboard objectives add stats_g_points_scored dummy
scoreboard objectives add spectate_stop dummy
scoreboard objectives add stun dummy
scoreboard objectives add tank_damage_taken minecraft.custom:minecraft.damage_taken
scoreboard objectives add tank_resistance dummy
scoreboard objectives add tank_resistance_num dummy
scoreboard objectives add tele2 dummy
scoreboard objectives add teleweak dummy
scoreboard objectives add temp dummy
scoreboard objectives add version dummy
scoreboard objectives add walk minecraft.custom:minecraft.walk_one_cm
scoreboard objectives add wark_buff dummy
scoreboard objectives add wark_charge dummy
scoreboard objectives add wark_detect dummy
scoreboard objectives add wark_startup dummy
scoreboard objectives add wark_f minecraft.custom:minecraft.time_since_rest
scoreboard objectives add zarzahn_f dummy
scoreboard objectives add zarzahn_hooking dummy
#king of the hill
scoreboard objectives add capture_info dummy
scoreboard objectives add control dummy
scoreboard objectives add time_blue dummy
scoreboard objectives add time_red dummy
#respawnDeathmatch
scoreboard objectives add killNumRed dummy
scoreboard objectives add killNumBlue dummy
scoreboard objectives add killsDisplay dummy {"text":"Kills","color":"yellow"}
scoreboard objectives add rd_kills_to_win dummy
#capture the flag
scoreboard objectives add ctf_game_duration dummy
scoreboard objectives add ctf_points_to_win dummy
scoreboard objectives add ctf_overtime dummy
scoreboard objectives add ctf_time dummy
scoreboard objectives add flagDistanceBlue dummy
scoreboard objectives add flagDistanceRed dummy
# scoreboard objectives add flag_max_distance_to_own_base dummy
scoreboard objectives add flag_min_distance_red dummy
scoreboard objectives add flag_min_distance_blue dummy
scoreboard objectives add flag_points_blue dummy
scoreboard objectives add flag_points_red dummy
scoreboard objectives add flag_spawn_delay dummy
# scoreboard objectives add flag_reset_time dummy
# scoreboard objectives add flag_spawn_time dummy
scoreboard objectives add spawn_to_center_distance dummy
#wokkaman
scoreboard objectives add cool4 dummy
scoreboard objectives add cool4_target dummy
scoreboard objectives add cool4_respawn dummy
scoreboard objectives add cool5 dummy
scoreboard objectives add cool5_target dummy
scoreboard objectives add cool5_respawn dummy
scoreboard objectives add cool6 dummy
scoreboard objectives add cool6_target dummy
scoreboard objectives add cool6_respawn dummy
scoreboard objectives add wok_kills_end dummy
scoreboard objectives add wok_kills dummy
scoreboard objectives add wok_time dummy
scoreboard objectives add wok_hover_schedule minecraft.custom:minecraft.time_since_rest
scoreboard objectives add wok_push_timer minecraft.custom:minecraft.time_since_rest
scoreboard objectives add wokkaman_helmet dummy
scoreboard objectives add wokkaman_max_mace_count dummy
scoreboard objectives add wokkaman_rocket_phase dummy
scoreboard objectives add wokkaman_rocket_rotating_tilt dummy
scoreboard objectives add wokkaman_rocket_count dummy
scoreboard objectives add wokkaman_rocket_shooting_count dummy
scoreboard objectives add wokkaman_shoot_cooldown dummy
scoreboard objectives add wokkaman_starting_firework_rocket_count dummy
scoreboard objectives add wokkaman_starting_rocket_count dummy
scoreboard objectives add wokkaman_starting_mace_count dummy
scoreboard objectives add wokkaman_weapon dummy

# default global settings
execute unless score %reload_message_disabled global matches 0.. run scoreboard players set %reload_message_disabled global 0
execute unless score %enable_flag_sprint global matches 0.. run scoreboard players set %reload_message_disabled global 1
execute unless score %enable_delayed_clear global matches 0.. run scoreboard players set %enable_delayed_clear global 0
execute unless score %enable_wokkaman_selectability global matches 0.. run scoreboard players set %enable_wokkaman_selectability global 0

# setup stuff
execute unless entity @a[tag=admin] unless score %reload_message_disabled global matches 1 run tellraw @a [{"text":"The Wokkagames Data Pack is active. For a setup guide click ","color":"yellow"},{"text":"here.","color":"gold","italic":true,"click_event":{"action":"run_command","command":"/function rauch:tutorial/tutorial"}},{"text":" To disable this message, click ","color":"yellow"},{"text":"here.","color":"gold","italic":true,"click_event":{"action":"run_command","command":"/function rauch:settings/toggles/toggle_reload_message"}}]
execute as @a[tag=admin] unless score %reload_message_disabled global matches 1 run tellraw @s [{"text":"The Wokkagames Data Pack is active. For a setup guide click ","color":"yellow"},{"text":"here.","color":"gold","italic":true,"click_event":{"action":"run_command","command":"/function rauch:tutorial/tutorial"}},{"text":" To disable this message, click ","color":"yellow"},{"text":"here.","color":"gold","italic":true,"click_event":{"action":"run_command","command":"/function rauch:settings/toggles/toggle_reload_message"}}]

#execute as @a[tag=!lobby,tag=!game,tag=!edit_map,tag=!spectator] run tag @s add lobby

# map values
data modify storage map_data versions set value [\
  {id:"splat",version:6},\
  {id:"ancient",version:5},\
  {id:"greck",version:4},\
  {id:"mork",version:5},\
  {id:"klotz",version:4},\
  {id:"arena",version:3},\
  {id:"cherry",version:1},\
  {id:"wcity",version:5}\
]
# lobby version
data modify storage lobby_data latest_version set value 3

function rauch:settings/versions/version_check
function rauch:settings/versions/maps/map_check
function rauch:settings/versions/lobby_check

execute unless entity @a[tag=admin] unless data storage lobby_data position run tellraw @a [\
{"text":"Please set the Lobby position by moving to the desired location and clicking ","color":"yellow"},\
{"text":"here","color":"gold","italic":true,"click_event":{"action":"run_command","command":"/function rauch:settings/changelobbypos"}},\
{"text":" OR spawn the prebuilt lobby by clicking ","color":"yellow"},\
{"text":"here.","color":"gold","italic":true,"click_event":{"action":"run_command","command":"/function rauch:settings/spawn_lobby/prompt"}}\
]
execute as @a[tag=admin] unless data storage lobby_data position run tellraw @s [\
{"text":"Please set the Lobby position by moving to the desired location and clicking ","color":"yellow"},\
{"text":"here","color":"gold","italic":true,"click_event":{"action":"run_command","command":"/function rauch:settings/changelobbypos"}},\
{"text":" OR spawn the prebuilt lobby by clicking ","color":"yellow"},\
{"text":"here.","color":"gold","italic":true,"click_event":{"action":"run_command","command":"/function rauch:settings/spawn_lobby/prompt"}}\
]

# set scores
execute unless score Global mode matches 0..5 run scoreboard players set Global mode 0

# setdisplay
scoreboard objectives setdisplay below_name health
scoreboard objectives setdisplay list health_display

#teams
team add Red
team modify Red color red
team modify Red friendlyFire false
#team modify Red prefix {"text":"[","color":"dark_gray","extra":[{"text":"RED","color":"red"},{"text":"] ","color":"dark_gray"}]}
team modify Red collisionRule pushOwnTeam

team add Blue
team modify Blue color blue
team modify Blue friendlyFire false
#team modify Blue prefix {"text":"[","color":"dark_gray","extra":[{"text":"BLUE","color":"blue"},{"text":"] ","color":"dark_gray"}]}
team modify Blue collisionRule pushOwnTeam

team add Lobby
team modify Lobby color green
team modify Lobby friendlyFire false
#team modify Lobby prefix [{"text":"[","color":"dark_gray"},{"text":"Lobby","color":"green"},{"text":"] ","color":"dark_gray"}]

team add Random
team modify Random color gray
team modify Random friendlyFire false
#team modify Random prefix [{"text":"[","color":"dark_gray"},{"text":"Random","color":"gray"},{"text":"] ","color":"dark_gray"}]

team add Spectator
team modify Spectator color dark_green
team modify Spectator friendlyFire false
#team modify Spectator prefix [{"text":"[","color":"dark_gray"},{"text":"Spectator","color":"dark_green"},{"text":"] ","color":"dark_gray"}]

team add Flag
team modify Flag color white
#team modify Spectator prefix [{"text":"[","color":"dark_gray"},{"text":"Spectator","color":"dark_green"},{"text":"] ","color":"dark_gray"}]


#gamerules
gamerule doMobLoot false
gamerule doMobSpawning false
#gamerule doTileDrops false
gamerule sendCommandFeedback true
gamerule keepInventory true
gamerule doImmediateRespawn true
gamerule naturalRegeneration false
gamerule maxEntityCramming 0
gamerule fallDamage false
gamerule showDeathMessages false
gamerule announceAdvancements false
gamerule doDaylightCycle false
gamerule doFireTick false
gamerule fireDamage false
gamerule doWeatherCycle false
gamerule randomTickSpeed 0
#gamerule mobGriefing false


#bossbars
bossbar add flag_location ""
bossbar set flag_location name [{"text":"Flag Test","color":"yellow"}]
bossbar set flag_location color white
bossbar set flag_location style notched_10

bossbar add center_control ""
bossbar set center_control name [{"text":"Neutral","color":"yellow"}]
bossbar set minecraft:center_control color white
bossbar set minecraft:center_control max 200
bossbar set minecraft:center_control style notched_10

bossbar add bolt1 ""
bossbar set bolt1 name {"text":"Thunder","color":"blue"}
bossbar set minecraft:bolt1 color blue
bossbar set minecraft:bolt1 max 80
bossbar add bolt2 ""
bossbar set bolt2 name {"text":"Thunder","color":"blue"}
bossbar set minecraft:bolt2 color blue
bossbar set minecraft:bolt2 max 80
bossbar add bolt3 ""
bossbar set bolt3 name {"text":"Thunder","color":"blue"}
bossbar set minecraft:bolt3 color blue
bossbar set minecraft:bolt3 max 80
bossbar add bolt4 ""
bossbar set bolt4 name {"text":"Thunder","color":"blue"}
bossbar set minecraft:bolt4 color blue
bossbar set minecraft:bolt4 max 80
bossbar add bolt5 ""
bossbar set bolt5 name {"text":"Thunder","color":"blue"}
bossbar set minecraft:bolt5 color blue
bossbar set minecraft:bolt5 max 80
bossbar add bolt6 ""
bossbar set bolt6 name {"text":"Thunder","color":"blue"}
bossbar set minecraft:bolt6 color blue
bossbar set minecraft:bolt6 max 80
bossbar add bolt7 ""
bossbar set bolt7 name {"text":"Thunder","color":"blue"}
bossbar set minecraft:bolt7 color blue
bossbar set minecraft:bolt7 max 80
bossbar add bolt8 ""
bossbar set bolt8 name {"text":"Thunder","color":"blue"}
bossbar set minecraft:bolt8 color blue
bossbar set minecraft:bolt8 max 80
bossbar add bolt9 ""
bossbar set bolt9 name {"text":"Thunder","color":"blue"}
bossbar set minecraft:bolt9 color blue
bossbar set minecraft:bolt9 max 80
bossbar add bolt10 ""
bossbar set bolt10 name {"text":"Thunder","color":"blue"}
bossbar set minecraft:bolt10 color blue
bossbar set minecraft:bolt10 max 80
bossbar add bolt11 ""
bossbar set bolt11 name {"text":"Thunder","color":"blue"}
bossbar set minecraft:bolt11 color blue
bossbar set minecraft:bolt11 max 80
bossbar add bolt12 ""
bossbar set bolt12 name {"text":"Thunder","color":"blue"}
bossbar set minecraft:bolt12 color blue
bossbar set minecraft:bolt12 max 80


bossbar add elytra1 ""
bossbar set elytra1 name {"text":"Elytra","color":"yellow"}
bossbar set minecraft:elytra1 color yellow
bossbar set minecraft:elytra1 max 60
bossbar add elytra2 ""
bossbar set elytra2 name {"text":"Elytra","color":"yellow"}
bossbar set minecraft:elytra2 color yellow
bossbar set minecraft:elytra2 max 60
bossbar add elytra3 ""
bossbar set elytra3 name {"text":"Elytra","color":"yellow"}
bossbar set minecraft:elytra3 color yellow
bossbar set minecraft:elytra3 max 60
bossbar add elytra4 ""
bossbar set elytra4 name {"text":"Elytra","color":"yellow"}
bossbar set minecraft:elytra4 color yellow
bossbar set minecraft:elytra4 max 60
bossbar add elytra5 ""
bossbar set elytra5 name {"text":"Elytra","color":"yellow"}
bossbar set minecraft:elytra5 color yellow
bossbar set minecraft:elytra5 max 60
bossbar add elytra6 ""
bossbar set elytra6 name {"text":"Elytra","color":"yellow"}
bossbar set minecraft:elytra6 color yellow
bossbar set minecraft:elytra6 max 60
bossbar add elytra7 ""
bossbar set elytra7 name {"text":"Elytra","color":"yellow"}
bossbar set minecraft:elytra7 color yellow
bossbar set minecraft:elytra7 max 60
bossbar add elytra8 ""
bossbar set elytra8 name {"text":"Elytra","color":"yellow"}
bossbar set minecraft:elytra8 color yellow
bossbar set minecraft:elytra8 max 60
bossbar add elytra9 ""
bossbar set elytra9 name {"text":"Elytra","color":"yellow"}
bossbar set minecraft:elytra9 color yellow
bossbar set minecraft:elytra9 max 60
bossbar add elytra10 ""
bossbar set elytra10 name {"text":"Elytra","color":"yellow"}
bossbar set minecraft:elytra10 color yellow
bossbar set minecraft:elytra10 max 60
bossbar add elytra11 ""
bossbar set elytra11 name {"text":"Elytra","color":"yellow"}
bossbar set minecraft:elytra11 color yellow
bossbar set minecraft:elytra11 max 60
bossbar add elytra12 ""
bossbar set elytra12 name {"text":"Elytra","color":"yellow"}
bossbar set minecraft:elytra12 color yellow
bossbar set minecraft:elytra12 max 60


bossbar add hack1 ""
bossbar set hack1 name {"text":"Hack","color":"dark_purple"}
bossbar set minecraft:hack1 color purple
bossbar set minecraft:hack1 max 200
bossbar add hack2 ""
bossbar set hack2 name {"text":"Hack","color":"dark_purple"}
bossbar set minecraft:hack2 color purple
bossbar set minecraft:hack2 max 200
bossbar add hack3 ""
bossbar set hack3 name {"text":"Hack","color":"dark_purple"}
bossbar set minecraft:hack3 color purple
bossbar set minecraft:hack3 max 200
bossbar add hack4 ""
bossbar set hack4 name {"text":"Hack","color":"dark_purple"}
bossbar set minecraft:hack4 color purple
bossbar set minecraft:hack4 max 200
bossbar add hack5 ""
bossbar set hack5 name {"text":"Hack","color":"dark_purple"}
bossbar set minecraft:hack5 color purple
bossbar set minecraft:hack5 max 200
bossbar add hack6 ""
bossbar set hack6 name {"text":"Hack","color":"dark_purple"}
bossbar set minecraft:hack6 color purple
bossbar set minecraft:hack6 max 200
bossbar add hack7 ""
bossbar set hack7 name {"text":"Hack","color":"dark_purple"}
bossbar set minecraft:hack7 color purple
bossbar set minecraft:hack7 max 200
bossbar add hack8 ""
bossbar set hack8 name {"text":"Hack","color":"dark_purple"}
bossbar set minecraft:hack8 color purple
bossbar set minecraft:hack8 max 200
bossbar add hack9 ""
bossbar set hack9 name {"text":"Hack","color":"dark_purple"}
bossbar set minecraft:hack9 color purple
bossbar set minecraft:hack9 max 200
bossbar add hack10 ""
bossbar set hack10 name {"text":"Hack","color":"dark_purple"}
bossbar set minecraft:hack10 color purple
bossbar set minecraft:hack10 max 200
bossbar add hack11 ""
bossbar set hack11 name {"text":"Hack","color":"dark_purple"}
bossbar set minecraft:hack11 color purple
bossbar set minecraft:hack11 max 200
bossbar add hack12 ""
bossbar set hack12 name {"text":"Hack","color":"dark_purple"}
bossbar set minecraft:hack12 color purple
bossbar set minecraft:hack12 max 200


bossbar add stun1 ""
bossbar set stun1 name {"text":"Stunned","color":"red"}
bossbar set minecraft:stun1 color red
bossbar set minecraft:stun1 max 40
bossbar add stun2 ""
bossbar set stun2 name {"text":"Stunned","color":"red"}
bossbar set minecraft:stun2 color red
bossbar set minecraft:stun2 max 40
bossbar add stun3 ""
bossbar set stun3 name {"text":"Stunned","color":"red"}
bossbar set minecraft:stun3 color red
bossbar set minecraft:stun3 max 40
bossbar add stun4 ""
bossbar set stun4 name {"text":"Stunned","color":"red"}
bossbar set minecraft:stun4 color red
bossbar set minecraft:stun4 max 40
bossbar add stun5 ""
bossbar set stun5 name {"text":"Stunned","color":"red"}
bossbar set minecraft:stun5 color red
bossbar set minecraft:stun5 max 40
bossbar add stun6 ""
bossbar set stun6 name {"text":"Stunned","color":"red"}
bossbar set minecraft:stun6 color red
bossbar set minecraft:stun6 max 40
bossbar add stun7 ""
bossbar set stun7 name {"text":"Stunned","color":"red"}
bossbar set minecraft:stun7 color red
bossbar set minecraft:stun7 max 40
bossbar add stun8 ""
bossbar set stun8 name {"text":"Stunned","color":"red"}
bossbar set minecraft:stun8 color red
bossbar set minecraft:stun8 max 40
bossbar add stun9 ""
bossbar set stun9 name {"text":"Stunned","color":"red"}
bossbar set minecraft:stun9 color red
bossbar set minecraft:stun9 max 40
bossbar add stun10 ""
bossbar set stun10 name {"text":"Stunned","color":"red"}
bossbar set minecraft:stun10 color red
bossbar set minecraft:stun10 max 40
bossbar add stun11 ""
bossbar set stun11 name {"text":"Stunned","color":"red"}
bossbar set minecraft:stun11 color red
bossbar set minecraft:stun11 max 40
bossbar add stun12 ""
bossbar set stun12 name {"text":"Stunned","color":"red"}
bossbar set minecraft:stun12 color red
bossbar set minecraft:stun12 max 40

bossbar add respawn1 ""
bossbar set respawn1 name {"text":"Respawn","color":"yellow"}
bossbar set minecraft:respawn1 color yellow
bossbar set minecraft:respawn1 max 120
bossbar add respawn2 ""
bossbar set respawn2 name {"text":"Respawn","color":"yellow"}
bossbar set minecraft:respawn2 color yellow
bossbar set minecraft:respawn2 max 120
bossbar add respawn3 ""
bossbar set respawn3 name {"text":"Respawn","color":"yellow"}
bossbar set minecraft:respawn3 color yellow
bossbar set minecraft:respawn3 max 120
bossbar add respawn4 ""
bossbar set respawn4 name {"text":"Respawn","color":"yellow"}
bossbar set minecraft:respawn4 color yellow
bossbar set minecraft:respawn4 max 120
bossbar add respawn5 ""
bossbar set respawn5 name {"text":"Respawn","color":"yellow"}
bossbar set minecraft:respawn5 color yellow
bossbar set minecraft:respawn5 max 120
bossbar add respawn6 ""
bossbar set respawn6 name {"text":"Respawn","color":"yellow"}
bossbar set minecraft:respawn6 color yellow
bossbar set minecraft:respawn6 max 120
bossbar add respawn7 ""
bossbar set respawn7 name {"text":"Respawn","color":"yellow"}
bossbar set minecraft:respawn7 color yellow
bossbar set minecraft:respawn7 max 120
bossbar add respawn8 ""
bossbar set respawn8 name {"text":"Respawn","color":"yellow"}
bossbar set minecraft:respawn8 color yellow
bossbar set minecraft:respawn8 max 120
bossbar add respawn9 ""
bossbar set respawn9 name {"text":"Respawn","color":"yellow"}
bossbar set minecraft:respawn9 color yellow
bossbar set minecraft:respawn9 max 120
bossbar add respawn10 ""
bossbar set respawn10 name {"text":"Respawn","color":"yellow"}
bossbar set minecraft:respawn10 color yellow
bossbar set minecraft:respawn10 max 120
bossbar add respawn11 ""
bossbar set respawn11 name {"text":"Respawn","color":"yellow"}
bossbar set minecraft:respawn11 color yellow
bossbar set minecraft:respawn11 max 120
bossbar add respawn12 ""
bossbar set respawn12 name {"text":"Respawn","color":"yellow"}
bossbar set minecraft:respawn12 color yellow
bossbar set minecraft:respawn12 max 120


bossbar add speed1 ""
bossbar set speed1 name {"text":"Speed","color":"green"}
bossbar set minecraft:speed1 color green
bossbar set minecraft:speed1 max 120
bossbar set minecraft:speed1 style notched_6
bossbar add speed2 ""
bossbar set speed2 name {"text":"Speed","color":"green"}
bossbar set minecraft:speed2 color green
bossbar set minecraft:speed2 max 120
bossbar set minecraft:speed2 style notched_6
bossbar add speed3 ""
bossbar set speed3 name {"text":"Speed","color":"green"}
bossbar set minecraft:speed3 color green
bossbar set minecraft:speed3 max 120
bossbar set minecraft:speed3 style notched_6
bossbar add speed4 ""
bossbar set speed4 name {"text":"Speed","color":"green"}
bossbar set minecraft:speed4 color green
bossbar set minecraft:speed4 max 120
bossbar set minecraft:speed4 style notched_6
bossbar add speed5 ""
bossbar set speed5 name {"text":"Speed","color":"green"}
bossbar set minecraft:speed5 color green
bossbar set minecraft:speed5 max 120
bossbar set minecraft:speed5 style notched_6
bossbar add speed6 ""
bossbar set speed6 name {"text":"Speed","color":"green"}
bossbar set minecraft:speed6 color green
bossbar set minecraft:speed6 max 120
bossbar set minecraft:speed6 style notched_6
bossbar add speed7 ""
bossbar set speed7 name {"text":"Speed","color":"green"}
bossbar set minecraft:speed7 color green
bossbar set minecraft:speed7 max 120
bossbar set minecraft:speed7 style notched_6
bossbar add speed8 ""
bossbar set speed8 name {"text":"Speed","color":"green"}
bossbar set minecraft:speed8 color green
bossbar set minecraft:speed8 max 120
bossbar set minecraft:speed8 style notched_6
bossbar add speed9 ""
bossbar set speed9 name {"text":"Speed","color":"green"}
bossbar set minecraft:speed9 color green
bossbar set minecraft:speed9 max 120
bossbar set minecraft:speed9 style notched_6
bossbar add speed10 ""
bossbar set speed10 name {"text":"Speed","color":"green"}
bossbar set minecraft:speed10 color green
bossbar set minecraft:speed10 max 120
bossbar set minecraft:speed10 style notched_6
bossbar add speed11 ""
bossbar set speed11 name {"text":"Speed","color":"green"}
bossbar set minecraft:speed11 color green
bossbar set minecraft:speed11 max 120
bossbar set minecraft:speed11 style notched_6
bossbar add speed12 ""
bossbar set speed12 name {"text":"Speed","color":"green"}
bossbar set minecraft:speed12 color green
bossbar set minecraft:speed12 max 120
bossbar set minecraft:speed12 style notched_6

bossbar add zarzahn_f1 ""
bossbar set zarzahn_f1 name {"text":"Warp","color":"dark_purple"}
bossbar set minecraft:zarzahn_f1 color purple
bossbar set minecraft:zarzahn_f1 max 360
bossbar add zarzahn_f2 ""
bossbar set zarzahn_f2 name {"text":"Warp","color":"dark_purple"}
bossbar set minecraft:zarzahn_f2 color purple
bossbar set minecraft:zarzahn_f2 max 360
bossbar add zarzahn_f3 ""
bossbar set zarzahn_f3 name {"text":"Warp","color":"dark_purple"}
bossbar set minecraft:zarzahn_f3 color purple
bossbar set minecraft:zarzahn_f3 max 360
bossbar add zarzahn_f4 ""
bossbar set zarzahn_f4 name {"text":"Warp","color":"dark_purple"}
bossbar set minecraft:zarzahn_f4 color purple
bossbar set minecraft:zarzahn_f4 max 360
bossbar add zarzahn_f5 ""
bossbar set zarzahn_f5 name {"text":"Warp","color":"dark_purple"}
bossbar set minecraft:zarzahn_f5 color purple
bossbar set minecraft:zarzahn_f5 max 360
bossbar add zarzahn_f6 ""
bossbar set zarzahn_f6 name {"text":"Warp","color":"dark_purple"}
bossbar set minecraft:zarzahn_f6 color purple
bossbar set minecraft:zarzahn_f6 max 360
bossbar add zarzahn_f7 ""
bossbar set zarzahn_f7 name {"text":"Warp","color":"dark_purple"}
bossbar set minecraft:zarzahn_f7 color purple
bossbar set minecraft:zarzahn_f7 max 360
bossbar add zarzahn_f8 ""
bossbar set zarzahn_f8 name {"text":"Warp","color":"dark_purple"}
bossbar set minecraft:zarzahn_f8 color purple
bossbar set minecraft:zarzahn_f8 max 360
bossbar add zarzahn_f9 ""
bossbar set zarzahn_f9 name {"text":"Warp","color":"dark_purple"}
bossbar set minecraft:zarzahn_f9 color purple
bossbar set minecraft:zarzahn_f9 max 360
bossbar add zarzahn_f10 ""
bossbar set zarzahn_f10 name {"text":"Warp","color":"dark_purple"}
bossbar set minecraft:zarzahn_f10 color purple
bossbar set minecraft:zarzahn_f10 max 360
bossbar add zarzahn_f11 ""
bossbar set zarzahn_f11 name {"text":"Warp","color":"dark_purple"}
bossbar set minecraft:zarzahn_f11 color purple
bossbar set minecraft:zarzahn_f11 max 360
bossbar add zarzahn_f12 ""
bossbar set zarzahn_f12 name {"text":"Warp","color":"dark_purple"}
bossbar set minecraft:zarzahn_f12 color purple
bossbar set minecraft:zarzahn_f12 max 360

bossbar add wark1 ""
bossbar set wark1 name {"text":"Wark Focus","color":"dark_purple"}
bossbar set minecraft:wark1 color purple
bossbar set minecraft:wark1 max 80
bossbar add wark2 ""
bossbar set wark2 name {"text":"Wark Focus","color":"dark_purple"}
bossbar set minecraft:wark2 color purple
bossbar set minecraft:wark2 max 80
bossbar add wark3 ""
bossbar set wark3 name {"text":"Wark Focus","color":"dark_purple"}
bossbar set minecraft:wark3 color purple
bossbar set minecraft:wark3 max 80
bossbar add wark4 ""
bossbar set wark4 name {"text":"Wark Focus","color":"dark_purple"}
bossbar set minecraft:wark4 color purple
bossbar set minecraft:wark4 max 80
bossbar add wark5 ""
bossbar set wark5 name {"text":"Wark Focus","color":"dark_purple"}
bossbar set minecraft:wark5 color purple
bossbar set minecraft:wark5 max 80
bossbar add wark6 ""
bossbar set wark6 name {"text":"Wark Focus","color":"dark_purple"}
bossbar set minecraft:wark6 color purple
bossbar set minecraft:wark6 max 80
bossbar add wark7 ""
bossbar set wark7 name {"text":"Wark Focus","color":"dark_purple"}
bossbar set minecraft:wark7 color purple
bossbar set minecraft:wark7 max 80
bossbar add wark8 ""
bossbar set wark8 name {"text":"Wark Focus","color":"dark_purple"}
bossbar set minecraft:wark8 color purple
bossbar set minecraft:wark8 max 80
bossbar add wark9 ""
bossbar set wark9 name {"text":"Wark Focus","color":"dark_purple"}
bossbar set minecraft:wark9 color purple
bossbar set minecraft:wark9 max 80
bossbar add wark10 ""
bossbar set wark10 name {"text":"Wark Focus","color":"dark_purple"}
bossbar set minecraft:wark10 color purple
bossbar set minecraft:wark10 max 80
bossbar add wark11 ""
bossbar set wark11 name {"text":"Wark Focus","color":"dark_purple"}
bossbar set minecraft:wark11 color purple
bossbar set minecraft:wark11 max 80
bossbar add wark12 ""
bossbar set wark12 name {"text":"Wark Focus","color":"dark_purple"}
bossbar set minecraft:wark12 color purple
bossbar set minecraft:wark12 max 80

bossbar add wokkaman_health ""
bossbar set wokkaman_health color red
