execute unless entity @a[tag=admin] unless entity @e[type=armor_stand,tag=main] run give @p minecraft:squid_spawn_egg{display:{Name:"{\"text\":\"Lobby Spawn\",\"color\":\"blue\",\"italic\":false}"},EntityTag:{Tags:["main"]}} 1
execute unless entity @a[tag=admin] unless entity @e[type=armor_stand,tag=main] run tellraw @a[nbt={Inventory:[{id:"minecraft:squid_spawn_egg"}]}] {"text":"Please set the Lobby position.","bold":true,"color":"blue"}
execute unless entity @a[tag=admin] unless score Global click matches 1 run tellraw @a [{"text":"The Rauchergames datapack is active. For a setup guide click ","color":"yellow"},{"text":"here.","italic":true,"clickEvent":{"action":"run_command","value":"/function rauch:tutorial/tutorial"}},{"text":" To disable this message, click ","color":"yellow"},{"text":"here","italic":true,"clickEvent":{"action":"run_command","value":"/scoreboard players set Global click 1"}}]
execute as @a[tag=admin] unless entity @e[type=armor_stand,tag=main] run give @p minecraft:squid_spawn_egg{display:{Name:"{\"text\":\"Lobby Spawn\",\"color\":\"blue\",\"italic\":false}"},EntityTag:{Tags:["main"]}} 1
execute as @a[tag=admin] unless entity @e[type=armor_stand,tag=main] run tellraw @s[nbt={Inventory:[{id:"minecraft:squid_spawn_egg"}]}] {"text":"Please set the Lobby Spawnpoint.","bold":true,"color":"blue"}
execute as @a[tag=admin] unless score Global click matches 1 run tellraw @s [{"text":"The Rauchergames datapack is active. For a setup guide click ","color":"yellow"},{"text":"here.","italic":true,"clickEvent":{"action":"run_command","value":"/function rauch:tutorial/tutorial"}},{"text":" To disable this message, click ","color":"yellow"},{"text":"here","italic":true,"clickEvent":{"action":"run_command","value":"/scoreboard players set Global click 1"}}]

execute as @a[tag=!lobby,tag=!game,tag=!addmap] run tag @s add lobby

scoreboard objectives add 0 dummy
scoreboard objectives add 2 dummy
scoreboard objectives add 9 dummy
scoreboard objectives add 10 dummy
scoreboard objectives add 20 dummy
scoreboard objectives add adminsetting trigger
scoreboard objectives add arrows dummy
scoreboard objectives add arrowreg dummy
scoreboard objectives add bolt dummy
scoreboard objectives add boltdmg dummy
scoreboard objectives add click minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add clouds dummy
scoreboard objectives add cool1 dummy
scoreboard objectives add cool1_s dummy
scoreboard objectives add cool1_ds dummy
scoreboard objectives add cool1_target dummy
scoreboard objectives add cool2 dummy
scoreboard objectives add cool2_s dummy
scoreboard objectives add cool2_ds dummy
scoreboard objectives add cool2_target dummy
scoreboard objectives add cool3 dummy
scoreboard objectives add cool3_s dummy
scoreboard objectives add cool3_ds dummy
scoreboard objectives add cool3_target dummy
scoreboard objectives add damage_dealt minecraft.custom:minecraft.damage_dealt
scoreboard objectives add damage_taken minecraft.custom:minecraft.damage_taken
scoreboard objectives add death minecraft.custom:minecraft.deaths
scoreboard objectives add decode dummy
scoreboard objectives add drop minecraft.custom:minecraft.drop
scoreboard objectives add dropcoas minecraft.dropped:minecraft.carrot_on_a_stick
scoreboard objectives add fly minecraft.custom:minecraft.aviate_one_cm
scoreboard objectives add flyerFSchedule minecraft.custom:minecraft.time_since_rest
scoreboard objectives add flyerQSchedule minecraft.custom:minecraft.time_since_rest
scoreboard objectives add gamestart dummy
scoreboard objectives add hack dummy
scoreboard objectives add hacker_ability dummy
scoreboard objectives add heal dummy
scoreboard objectives add health health {"text":"❤","color":"red"}
scoreboard objectives add health_display dummy
scoreboard objectives add hitPnum dummy
scoreboard objectives add hunger food
scoreboard objectives add kit dummy
scoreboard objectives add kitselect trigger
scoreboard objectives add leave minecraft.custom:minecraft.leave_game
scoreboard objectives add mapId dummy
scoreboard objectives add mapParticle trigger
scoreboard objectives add mapTime trigger
scoreboard objectives add maxArrows dummy
scoreboard objectives add maxClouds dummy
scoreboard objectives add mode dummy
scoreboard objectives add particle_ambient dummy
scoreboard objectives add particleDensity dummy
scoreboard objectives add plcount dummy
scoreboard objectives add pnum dummy
scoreboard objectives add projectileRMax dummy
scoreboard objectives add projectileRNum dummy
scoreboard objectives add push_levitation_timer minecraft.custom:minecraft.time_since_rest
scoreboard objectives add raucherdmg dummy
scoreboard objectives add respawn dummy
scoreboard objectives add slime_despawn_timer minecraft.custom:minecraft.time_since_rest
scoreboard objectives add stats_g_damage_d minecraft.custom:minecraft.damage_dealt
scoreboard objectives add stats_g_damage_t minecraft.custom:minecraft.damage_taken
scoreboard objectives add stats_g_deaths minecraft.custom:minecraft.deaths
scoreboard objectives add stats_g_kills playerKillCount
scoreboard objectives add stun dummy
scoreboard objectives add tank dummy
scoreboard objectives add tank_damage_taken minecraft.custom:minecraft.damage_taken
scoreboard objectives add tank_resistance dummy
scoreboard objectives add tele2 dummy
scoreboard objectives add teleweak dummy
scoreboard objectives add walk minecraft.custom:minecraft.walk_one_cm
scoreboard objectives add wark_buff dummy
scoreboard objectives add wark_detect dummy
scoreboard objectives add wark_startup dummy
scoreboard objectives add wark_r minecraft.custom:minecraft.time_since_rest
scoreboard objectives add xPos dummy
scoreboard objectives add yPos dummy
scoreboard objectives add zarzahn_f dummy
scoreboard objectives add zPos dummy
#king of the hill
scoreboard objectives add capture_info dummy
scoreboard objectives add control dummy
scoreboard objectives add time_blue dummy
scoreboard objectives add time_red dummy
scoreboard objectives add blu_calc dummy
scoreboard objectives add red_calc dummy
scoreboard objectives add time_times dummy {"text":"Points left:","color":"yellow"}
#respawnDeathmatch
scoreboard objectives add killNumRed dummy
scoreboard objectives add killNumBlue dummy
scoreboard objectives add killsDisplay dummy {"text":"Kills","color":"yellow"}
scoreboard objectives add rd_kills_to_win dummy
execute unless score Global rd_kills_to_win matches 1.. run scoreboard players set Global rd_kills_to_win 20
#capture the flag
scoreboard objectives add flagDistanceBlue dummy
scoreboard objectives add flagDistanceRed dummy
scoreboard objectives add flag_points_red dummy
scoreboard objectives add flag_points_blue dummy
scoreboard objectives add flagDisplay dummy {"text":"Points","color":"yellow"}

scoreboard players set Global 0 0
scoreboard players set Global 2 2
scoreboard players set Global 9 9
scoreboard players set Global 10 10
scoreboard players set Global 20 20
execute unless score Global mode matches 0..4 run scoreboard players set Global mode 0

scoreboard objectives setdisplay belowName health
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

team add red_display
team modify red_display color red
team join red_display Red:

team add blue_display
team modify blue_display color blue
team join blue_display Blue:

#gamerules
#gamerule doMobLoot false
#gamerule doMobSpawning false
#gamerule doTileDrops false
gamerule sendCommandFeedback true
gamerule keepInventory true
gamerule doImmediateRespawn true
gamerule naturalRegeneration false
gamerule maxEntityCramming 0
gamerule fallDamage false
gamerule showDeathMessages false
gamerule announceAdvancements false

#gamerule mobGriefing false
#gamerule showDeathMessages true

#bossbars
bossbar add center_control [{"text":"Red","color":"red"},{"text":"             "},{"text":"Neutral","color":"yellow"},{"text":"             "},{"text":"Blue","color":"blue"}]
bossbar set minecraft:center_control color white
bossbar set minecraft:center_control max 200
bossbar set minecraft:center_control style notched_10

bossbar add bolt1 {"text":"Thunder","color":"blue"}
bossbar set minecraft:bolt1 color blue
bossbar set minecraft:bolt1 max 80
bossbar add bolt2 {"text":"Thunder","color":"blue"}
bossbar set minecraft:bolt2 color blue
bossbar set minecraft:bolt2 max 80
bossbar add bolt3 {"text":"Thunder","color":"blue"}
bossbar set minecraft:bolt3 color blue
bossbar set minecraft:bolt3 max 80
bossbar add bolt4 {"text":"Thunder","color":"blue"}
bossbar set minecraft:bolt4 color blue
bossbar set minecraft:bolt4 max 80
bossbar add bolt5 {"text":"Thunder","color":"blue"}
bossbar set minecraft:bolt5 color blue
bossbar set minecraft:bolt5 max 80
bossbar add bolt6 {"text":"Thunder","color":"blue"}
bossbar set minecraft:bolt6 color blue
bossbar set minecraft:bolt6 max 80
bossbar add bolt7 {"text":"Thunder","color":"blue"}
bossbar set minecraft:bolt7 color blue
bossbar set minecraft:bolt7 max 80
bossbar add bolt8 {"text":"Thunder","color":"blue"}
bossbar set minecraft:bolt8 color blue
bossbar set minecraft:bolt8 max 80
bossbar add bolt9 {"text":"Thunder","color":"blue"}
bossbar set minecraft:bolt9 color blue
bossbar set minecraft:bolt9 max 80
bossbar add bolt10 {"text":"Thunder","color":"blue"}
bossbar set minecraft:bolt10 color blue
bossbar set minecraft:bolt10 max 80
bossbar add bolt11 {"text":"Thunder","color":"blue"}
bossbar set minecraft:bolt11 color blue
bossbar set minecraft:bolt11 max 80
bossbar add bolt12 {"text":"Thunder","color":"blue"}
bossbar set minecraft:bolt12 color blue
bossbar set minecraft:bolt12 max 80


bossbar add hack1 {"text":"Hack","color":"dark_purple"}
bossbar set minecraft:hack1 color purple
bossbar set minecraft:hack1 max 200
bossbar add hack2 {"text":"Hack","color":"dark_purple"}
bossbar set minecraft:hack2 color purple
bossbar set minecraft:hack2 max 200
bossbar add hack3 {"text":"Hack","color":"dark_purple"}
bossbar set minecraft:hack3 color purple
bossbar set minecraft:hack3 max 200
bossbar add hack4 {"text":"Hack","color":"dark_purple"}
bossbar set minecraft:hack4 color purple
bossbar set minecraft:hack4 max 200
bossbar add hack5 {"text":"Hack","color":"dark_purple"}
bossbar set minecraft:hack5 color purple
bossbar set minecraft:hack5 max 200
bossbar add hack6 {"text":"Hack","color":"dark_purple"}
bossbar set minecraft:hack6 color purple
bossbar set minecraft:hack6 max 200
bossbar add hack7 {"text":"Hack","color":"dark_purple"}
bossbar set minecraft:hack7 color purple
bossbar set minecraft:hack7 max 200
bossbar add hack8 {"text":"Hack","color":"dark_purple"}
bossbar set minecraft:hack8 color purple
bossbar set minecraft:hack8 max 200
bossbar add hack9 {"text":"Hack","color":"dark_purple"}
bossbar set minecraft:hack9 color purple
bossbar set minecraft:hack9 max 200
bossbar add hack10 {"text":"Hack","color":"dark_purple"}
bossbar set minecraft:hack10 color purple
bossbar set minecraft:hack10 max 200
bossbar add hack11 {"text":"Hack","color":"dark_purple"}
bossbar set minecraft:hack11 color purple
bossbar set minecraft:hack11 max 200
bossbar add hack12 {"text":"Hack","color":"dark_purple"}
bossbar set minecraft:hack12 color purple
bossbar set minecraft:hack12 max 200


bossbar add stun1 {"text":"Stunned","color":"red"}
bossbar set minecraft:stun1 color red
bossbar set minecraft:stun1 max 40
bossbar add stun2 {"text":"Stunned","color":"red"}
bossbar set minecraft:stun2 color red
bossbar set minecraft:stun2 max 40
bossbar add stun3 {"text":"Stunned","color":"red"}
bossbar set minecraft:stun3 color red
bossbar set minecraft:stun3 max 40
bossbar add stun4 {"text":"Stunned","color":"red"}
bossbar set minecraft:stun4 color red
bossbar set minecraft:stun4 max 40
bossbar add stun5 {"text":"Stunned","color":"red"}
bossbar set minecraft:stun5 color red
bossbar set minecraft:stun5 max 40
bossbar add stun6 {"text":"Stunned","color":"red"}
bossbar set minecraft:stun6 color red
bossbar set minecraft:stun6 max 40
bossbar add stun7 {"text":"Stunned","color":"red"}
bossbar set minecraft:stun7 color red
bossbar set minecraft:stun7 max 40
bossbar add stun8 {"text":"Stunned","color":"red"}
bossbar set minecraft:stun8 color red
bossbar set minecraft:stun8 max 40
bossbar add stun9 {"text":"Stunned","color":"red"}
bossbar set minecraft:stun9 color red
bossbar set minecraft:stun9 max 40
bossbar add stun10 {"text":"Stunned","color":"red"}
bossbar set minecraft:stun10 color red
bossbar set minecraft:stun10 max 40
bossbar add stun11 {"text":"Stunned","color":"red"}
bossbar set minecraft:stun11 color red
bossbar set minecraft:stun11 max 40
bossbar add stun12 {"text":"Stunned","color":"red"}
bossbar set minecraft:stun12 color red
bossbar set minecraft:stun12 max 40

bossbar add speed1 {"text":"Speed","color":"green"}
bossbar set minecraft:speed1 color green
bossbar set minecraft:speed1 max 170
bossbar set minecraft:speed1 style notched_6
bossbar add speed2 {"text":"Speed","color":"green"}
bossbar set minecraft:speed2 color green
bossbar set minecraft:speed2 max 170
bossbar set minecraft:speed2 style notched_6
bossbar add speed3 {"text":"Speed","color":"green"}
bossbar set minecraft:speed3 color green
bossbar set minecraft:speed3 max 170
bossbar set minecraft:speed3 style notched_6
bossbar add speed4 {"text":"Speed","color":"green"}
bossbar set minecraft:speed4 color green
bossbar set minecraft:speed4 max 170
bossbar set minecraft:speed4 style notched_6
bossbar add speed5 {"text":"Speed","color":"green"}
bossbar set minecraft:speed5 color green
bossbar set minecraft:speed5 max 170
bossbar set minecraft:speed5 style notched_6
bossbar add speed6 {"text":"Speed","color":"green"}
bossbar set minecraft:speed6 color green
bossbar set minecraft:speed6 max 170
bossbar set minecraft:speed6 style notched_6
bossbar add speed7 {"text":"Speed","color":"green"}
bossbar set minecraft:speed7 color green
bossbar set minecraft:speed7 max 170
bossbar set minecraft:speed7 style notched_6
bossbar add speed8 {"text":"Speed","color":"green"}
bossbar set minecraft:speed8 color green
bossbar set minecraft:speed8 max 170
bossbar set minecraft:speed8 style notched_6
bossbar add speed9 {"text":"Speed","color":"green"}
bossbar set minecraft:speed9 color green
bossbar set minecraft:speed9 max 170
bossbar set minecraft:speed9 style notched_6
bossbar add speed10 {"text":"Speed","color":"green"}
bossbar set minecraft:speed10 color green
bossbar set minecraft:speed10 max 170
bossbar set minecraft:speed10 style notched_6
bossbar add speed11 {"text":"Speed","color":"green"}
bossbar set minecraft:speed11 color green
bossbar set minecraft:speed11 max 170
bossbar set minecraft:speed11 style notched_6
bossbar add speed12 {"text":"Speed","color":"green"}
bossbar set minecraft:speed12 color green
bossbar set minecraft:speed12 max 170
bossbar set minecraft:speed12 style notched_6

bossbar add tank1 {"text":"Absorbing","color":"dark_green"}
bossbar set minecraft:tank1 color green
bossbar set minecraft:tank1 max 80
bossbar add tank2 {"text":"Absorbing","color":"dark_green"}
bossbar set minecraft:tank2 color green
bossbar set minecraft:tank2 max 80
bossbar add tank3 {"text":"Absorbing","color":"dark_green"}
bossbar set minecraft:tank3 color green
bossbar set minecraft:tank3 max 80
bossbar add tank4 {"text":"Absorbing","color":"dark_green"}
bossbar set minecraft:tank4 color green
bossbar set minecraft:tank4 max 80
bossbar add tank5 {"text":"Absorbing","color":"dark_green"}
bossbar set minecraft:tank5 color green
bossbar set minecraft:tank5 max 80
bossbar add tank6 {"text":"Absorbing","color":"dark_green"}
bossbar set minecraft:tank6 color green
bossbar set minecraft:tank6 max 80
bossbar add tank7 {"text":"Absorbing","color":"dark_green"}
bossbar set minecraft:tank7 color green
bossbar set minecraft:tank7 max 80
bossbar add tank8 {"text":"Absorbing","color":"dark_green"}
bossbar set minecraft:tank8 color green
bossbar set minecraft:tank8 max 80
bossbar add tank9 {"text":"Absorbing","color":"dark_green"}
bossbar set minecraft:tank9 color green
bossbar set minecraft:tank9 max 80
bossbar add tank10 {"text":"Absorbing","color":"dark_green"}
bossbar set minecraft:tank10 color green
bossbar set minecraft:tank10 max 80
bossbar add tank11 {"text":"Absorbing","color":"dark_green"}
bossbar set minecraft:tank11 color green
bossbar set minecraft:tank11 max 80
bossbar add tank12 {"text":"Absorbing","color":"dark_green"}
bossbar set minecraft:tank12 color green
bossbar set minecraft:tank12 max 80

bossbar add respawn1 {"text":"Respawn","color":"yellow"}
bossbar set minecraft:respawn1 color yellow
bossbar set minecraft:respawn1 max 120
bossbar add respawn2 {"text":"Respawn","color":"yellow"}
bossbar set minecraft:respawn2 color yellow
bossbar set minecraft:respawn2 max 120
bossbar add respawn3 {"text":"Respawn","color":"yellow"}
bossbar set minecraft:respawn3 color yellow
bossbar set minecraft:respawn3 max 120
bossbar add respawn4 {"text":"Respawn","color":"yellow"}
bossbar set minecraft:respawn4 color yellow
bossbar set minecraft:respawn4 max 120
bossbar add respawn5 {"text":"Respawn","color":"yellow"}
bossbar set minecraft:respawn5 color yellow
bossbar set minecraft:respawn5 max 120
bossbar add respawn6 {"text":"Respawn","color":"yellow"}
bossbar set minecraft:respawn6 color yellow
bossbar set minecraft:respawn6 max 120
bossbar add respawn7 {"text":"Respawn","color":"yellow"}
bossbar set minecraft:respawn7 color yellow
bossbar set minecraft:respawn7 max 120
bossbar add respawn8 {"text":"Respawn","color":"yellow"}
bossbar set minecraft:respawn8 color yellow
bossbar set minecraft:respawn8 max 120
bossbar add respawn9 {"text":"Respawn","color":"yellow"}
bossbar set minecraft:respawn9 color yellow
bossbar set minecraft:respawn9 max 120
bossbar add respawn10 {"text":"Respawn","color":"yellow"}
bossbar set minecraft:respawn10 color yellow
bossbar set minecraft:respawn10 max 120
bossbar add respawn11 {"text":"Respawn","color":"yellow"}
bossbar set minecraft:respawn11 color yellow
bossbar set minecraft:respawn11 max 120
bossbar add respawn12 {"text":"Respawn","color":"yellow"}
bossbar set minecraft:respawn12 color yellow
bossbar set minecraft:respawn12 max 120

bossbar add zarzahn_f1 {"text":"Warp","color":"dark_purple"}
bossbar set minecraft:zarzahn_f1 color purple
bossbar set minecraft:zarzahn_f1 max 300
bossbar add zarzahn_f2 {"text":"Warp","color":"dark_purple"}
bossbar set minecraft:zarzahn_f2 color purple
bossbar set minecraft:zarzahn_f2 max 300
bossbar add zarzahn_f3 {"text":"Warp","color":"dark_purple"}
bossbar set minecraft:zarzahn_f3 color purple
bossbar set minecraft:zarzahn_f3 max 300
bossbar add zarzahn_f4 {"text":"Warp","color":"dark_purple"}
bossbar set minecraft:zarzahn_f4 color purple
bossbar set minecraft:zarzahn_f4 max 300
bossbar add zarzahn_f5 {"text":"Warp","color":"dark_purple"}
bossbar set minecraft:zarzahn_f5 color purple
bossbar set minecraft:zarzahn_f5 max 300
bossbar add zarzahn_f6 {"text":"Warp","color":"dark_purple"}
bossbar set minecraft:zarzahn_f6 color purple
bossbar set minecraft:zarzahn_f6 max 300
bossbar add zarzahn_f7 {"text":"Warp","color":"dark_purple"}
bossbar set minecraft:zarzahn_f7 color purple
bossbar set minecraft:zarzahn_f7 max 300
bossbar add zarzahn_f8 {"text":"Warp","color":"dark_purple"}
bossbar set minecraft:zarzahn_f8 color purple
bossbar set minecraft:zarzahn_f8 max 300
bossbar add zarzahn_f9 {"text":"Warp","color":"dark_purple"}
bossbar set minecraft:zarzahn_f9 color purple
bossbar set minecraft:zarzahn_f9 max 300
bossbar add zarzahn_f10 {"text":"Warp","color":"dark_purple"}
bossbar set minecraft:zarzahn_f10 color purple
bossbar set minecraft:zarzahn_f10 max 300
bossbar add zarzahn_f11 {"text":"Warp","color":"dark_purple"}
bossbar set minecraft:zarzahn_f11 color purple
bossbar set minecraft:zarzahn_f11 max 300
bossbar add zarzahn_f12 {"text":"Warp","color":"dark_purple"}
bossbar set minecraft:zarzahn_f12 color purple
bossbar set minecraft:zarzahn_f12 max 300

bossbar add wark1 {"text":"Wark Scan","color":"dark_purple"}
bossbar set minecraft:wark1 color purple
bossbar set minecraft:wark1 max 80
bossbar add wark2 {"text":"Wark Scan","color":"dark_purple"}
bossbar set minecraft:wark2 color purple
bossbar set minecraft:wark2 max 80
bossbar add wark3 {"text":"Wark Scan","color":"dark_purple"}
bossbar set minecraft:wark3 color purple
bossbar set minecraft:wark3 max 80
bossbar add wark4 {"text":"Wark Scan","color":"dark_purple"}
bossbar set minecraft:wark4 color purple
bossbar set minecraft:wark4 max 80
bossbar add wark5 {"text":"Wark Scan","color":"dark_purple"}
bossbar set minecraft:wark5 color purple
bossbar set minecraft:wark5 max 80
bossbar add wark6 {"text":"Wark Scan","color":"dark_purple"}
bossbar set minecraft:wark6 color purple
bossbar set minecraft:wark6 max 80
bossbar add wark7 {"text":"Wark Scan","color":"dark_purple"}
bossbar set minecraft:wark7 color purple
bossbar set minecraft:wark7 max 80
bossbar add wark8 {"text":"Wark Scan","color":"dark_purple"}
bossbar set minecraft:wark8 color purple
bossbar set minecraft:wark8 max 80
bossbar add wark9 {"text":"Wark Scan","color":"dark_purple"}
bossbar set minecraft:wark9 color purple
bossbar set minecraft:wark9 max 80
bossbar add wark10 {"text":"Wark Scan","color":"dark_purple"}
bossbar set minecraft:wark10 color purple
bossbar set minecraft:wark10 max 80
bossbar add wark11 {"text":"Wark Scan","color":"dark_purple"}
bossbar set minecraft:wark11 color purple
bossbar set minecraft:wark11 max 80
bossbar add wark12 {"text":"Wark Scan","color":"dark_purple"}
bossbar set minecraft:wark12 color purple
bossbar set minecraft:wark12 max 80
