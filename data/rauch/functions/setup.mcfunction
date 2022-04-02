execute unless entity @e[type=armor_stand,tag=main] run give @p minecraft:squid_spawn_egg{display:{Name:"{\"text\":\"Lobby Spawn\",\"color\":\"blue\",\"italic\":false}"},EntityTag:{Tags:["main"]}} 1

execute unless entity @e[type=armor_stand,tag=main] run tellraw @a[nbt={Inventory:[{id:"minecraft:squid_spawn_egg"}]}] {"text":"Please set the Lobby Spawnpoint.","bold":true,"color":"blue"}

scoreboard objectives add 0 dummy
scoreboard objectives add 1 dummy
scoreboard objectives add 2 dummy
scoreboard objectives add 4 dummy
scoreboard objectives add 8 dummy
scoreboard objectives add 16 dummy
scoreboard objectives add 20 dummy
scoreboard objectives add 32 dummy
scoreboard objectives add 64 dummy
scoreboard objectives add 128 dummy
scoreboard objectives add 256 dummy
scoreboard objectives add 512 dummy
scoreboard objectives add 1024 dummy
scoreboard objectives add 2048 dummy
scoreboard objectives add adminsetting trigger
scoreboard objectives add arrows dummy
scoreboard objectives add arrowreg dummy
scoreboard objectives add bolt dummy
scoreboard objectives add bolt_hitby dummy
scoreboard objectives add bolt_hit dummy
scoreboard objectives add boltdmg dummy
scoreboard objectives add capture_info dummy
scoreboard objectives add center_blue dummy
scoreboard objectives add center_red dummy
scoreboard objectives add click minecraft.used:minecraft.carrot_on_a_stick
scoreboard objectives add clouds dummy
#scoreboard objectives add coolnew dummy
#scoreboard objectives add coolnews dummy
#scoreboard objectives add coolnewds dummy
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
scoreboard objectives add elytracool minecraft.custom:minecraft.time_since_rest
scoreboard objectives add stats_g_damage_d minecraft.custom:minecraft.damage_dealt
scoreboard objectives add stats_g_damage_t minecraft.custom:minecraft.damage_taken
scoreboard objectives add stats_g_deaths minecraft.custom:minecraft.deaths
scoreboard objectives add stats_g_kills playerKillCount
scoreboard objectives add fly minecraft.custom:minecraft.aviate_one_cm
scoreboard objectives add flyerFSchedule minecraft.custom:minecraft.time_since_rest
scoreboard objectives add flyerQSchedule minecraft.custom:minecraft.time_since_rest
scoreboard objectives add gamestart dummy
scoreboard objectives add hack dummy
scoreboard objectives add hacking dummy
scoreboard objectives add Health health {"text":"❤","color":"red"}
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
scoreboard objectives add music_id dummy
scoreboard objectives add music_length dummy
scoreboard objectives add particle_ambient dummy
scoreboard objectives add particleDensity dummy
scoreboard objectives add plcount dummy
scoreboard objectives add pnum dummy
scoreboard objectives add projectileRMax dummy
scoreboard objectives add projectileRNum dummy
scoreboard objectives add push_levitation_timer minecraft.custom:time_since_rest
#scoreboard objectives add projectileQNum dummy
#scoreboard objectives add projectileQMax dummy
scoreboard objectives add recall dummy
scoreboard objectives add respawntimer minecraft.custom:time_since_rest
scoreboard objectives add slime_despawn_timer minecraft.custom:time_since_rest
scoreboard objectives add squid minecraft.used:minecraft.squid_spawn_egg
scoreboard objectives add stun dummy
scoreboard objectives add tank dummy
scoreboard objectives add tele2 dummy
scoreboard objectives add teleporter_id dummy
scoreboard objectives add teleweak dummy
scoreboard objectives add time_blue dummy
scoreboard objectives add time_red dummy
scoreboard objectives add time_times dummy {"text":"Time until win","color":"yellow"}
scoreboard objectives add walk minecraft.custom:minecraft.walk_one_cm
scoreboard objectives add xPos dummy
scoreboard objectives add yPos dummy
scoreboard objectives add zarzahn_f dummy
scoreboard objectives add zarzahn_id dummy
scoreboard objectives add zPos dummy
#respawnDeathmatch
scoreboard objectives add killNumRed dummy
scoreboard objectives add killNumBlue dummy
scoreboard objectives add killsDisplay dummy {"text":"Kills","color":"yellow"}

scoreboard players set Global 0 0
scoreboard players set Global 1 1
scoreboard players set Global 2 2
scoreboard players set Global 4 4
scoreboard players set Global 8 8
scoreboard players set Global 16 16
scoreboard players set Global 20 20
scoreboard players set Global 32 32
scoreboard players set Global 64 64
scoreboard players set Global 128 128
scoreboard players set Global 256 256
scoreboard players set Global 512 512
scoreboard players set Global 1024 1024
scoreboard players set Global 2048 2048
execute unless score Global mode matches 0..3 run scoreboard players set Global mode 0

scoreboard objectives setdisplay belowName Health
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
#gamerule sendCommandFeedback false
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
bossbar add red_capturing {"text":"Capturing...","color":"dark_red"}
bossbar set minecraft:red_capturing color red
bossbar set minecraft:red_capturing max 300
bossbar set minecraft:red_capturing visible false

bossbar add blue_capturing {"text":"Capturing...","color":"blue"}
bossbar set minecraft:blue_capturing color blue
bossbar set minecraft:blue_capturing max 300
bossbar set minecraft:blue_capturing visible false

bossbar add red_captured {"text":"Captured","color":"dark_red"}
bossbar set minecraft:red_captured color red
bossbar set minecraft:red_captured max 300
bossbar set minecraft:red_captured visible false

bossbar add blue_captured {"text":"Captured","color":"blue"}
bossbar set minecraft:blue_captured color blue
bossbar set minecraft:blue_captured max 300
bossbar set minecraft:blue_captured visible false

bossbar add red_contested {"text":"Contested","color":"dark_red"}
bossbar set minecraft:red_contested color red
bossbar set minecraft:red_contested max 300
bossbar set minecraft:red_contested visible false

bossbar add blue_contested {"text":"Contested","color":"blue"}
bossbar set minecraft:blue_contested color blue
bossbar set minecraft:blue_contested max 300
bossbar set minecraft:blue_contested visible false


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


bossbar add recall1 {"text":"Recall","color":"dark_green"}
bossbar set minecraft:recall1 color green
bossbar set minecraft:recall1 max 100
bossbar add recall2 {"text":"Recall","color":"dark_green"}
bossbar set minecraft:recall2 color green
bossbar set minecraft:recall2 max 100
bossbar add recall3 {"text":"Recall","color":"dark_green"}
bossbar set minecraft:recall3 color green
bossbar set minecraft:recall3 max 100
bossbar add recall4 {"text":"Recall","color":"dark_green"}
bossbar set minecraft:recall4 color green
bossbar set minecraft:recall4 max 100
bossbar add recall5 {"text":"Recall","color":"dark_green"}
bossbar set minecraft:recall5 color green
bossbar set minecraft:recall5 max 100
bossbar add recall6 {"text":"Recall","color":"dark_green"}
bossbar set minecraft:recall6 color green
bossbar set minecraft:recall6 max 100
bossbar add recall7 {"text":"Recall","color":"dark_green"}
bossbar set minecraft:recall7 color green
bossbar set minecraft:recall7 max 100
bossbar add recall8 {"text":"Recall","color":"dark_green"}
bossbar set minecraft:recall8 color green
bossbar set minecraft:recall8 max 100
bossbar add recall9 {"text":"Recall","color":"dark_green"}
bossbar set minecraft:recall9 color green
bossbar set minecraft:recall9 max 100
bossbar add recall10 {"text":"Recall","color":"dark_green"}
bossbar set minecraft:recall10 color green
bossbar set minecraft:recall10 max 100
bossbar add recall11 {"text":"Recall","color":"dark_green"}
bossbar set minecraft:recall11 color green
bossbar set minecraft:recall11 max 100
bossbar add recall12 {"text":"Recall","color":"dark_green"}
bossbar set minecraft:recall12 color green
bossbar set minecraft:recall12 max 100


bossbar add thehack1 "The Hack"
bossbar set minecraft:thehack1 color blue
bossbar set minecraft:thehack1 max 22
bossbar add thehack2 "The Hack"
bossbar set minecraft:thehack2 color blue
bossbar set minecraft:thehack2 max 22
bossbar add thehack3 "The Hack"
bossbar set minecraft:thehack3 color blue
bossbar set minecraft:thehack3 max 22
bossbar add thehack4 "The Hack"
bossbar set minecraft:thehack4 color blue
bossbar set minecraft:thehack4 max 22
bossbar add thehack5 "The Hack"
bossbar set minecraft:thehack5 color blue
bossbar set minecraft:thehack5 max 22
bossbar add thehack6 "The Hack"
bossbar set minecraft:thehack6 color blue
bossbar set minecraft:thehack6 max 22
bossbar add thehack7 "The Hack"
bossbar set minecraft:thehack7 color blue
bossbar set minecraft:thehack7 max 22
bossbar add thehack8 "The Hack"
bossbar set minecraft:thehack8 color blue
bossbar set minecraft:thehack8 max 22
bossbar add thehack9 "The Hack"
bossbar set minecraft:thehack9 color blue
bossbar set minecraft:thehack9 max 22
bossbar add thehack10 "The Hack"
bossbar set minecraft:thehack10 color blue
bossbar set minecraft:thehack10 max 22
bossbar add thehack11 "The Hack"
bossbar set minecraft:thehack11 color blue
bossbar set minecraft:thehack11 max 22
bossbar add thehack12 "The Hack"
bossbar set minecraft:thehack12 color blue
bossbar set minecraft:thehack12 max 22


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

bossbar add elytra1 {"text":"Elytra","color":"yellow"}
bossbar set minecraft:elytra1 color yellow
bossbar set minecraft:elytra1 max 160
bossbar add elytra2 {"text":"Elytra","color":"yellow"}
bossbar set minecraft:elytra2 color yellow
bossbar set minecraft:elytra2 max 160
bossbar add elytra3 {"text":"Elytra","color":"yellow"}
bossbar set minecraft:elytra3 color yellow
bossbar set minecraft:elytra3 max 160
bossbar add elytra4 {"text":"Elytra","color":"yellow"}
bossbar set minecraft:elytra4 color yellow
bossbar set minecraft:elytra4 max 160
bossbar add elytra5 {"text":"Elytra","color":"yellow"}
bossbar set minecraft:elytra5 color yellow
bossbar set minecraft:elytra5 max 160
bossbar add elytra6 {"text":"Elytra","color":"yellow"}
bossbar set minecraft:elytra6 color yellow
bossbar set minecraft:elytra6 max 160
bossbar add elytra7 {"text":"Elytra","color":"yellow"}
bossbar set minecraft:elytra7 color yellow
bossbar set minecraft:elytra7 max 160
bossbar add elytra8 {"text":"Elytra","color":"yellow"}
bossbar set minecraft:elytra8 color yellow
bossbar set minecraft:elytra8 max 160
bossbar add elytra9 {"text":"Elytra","color":"yellow"}
bossbar set minecraft:elytra9 color yellow
bossbar set minecraft:elytra9 max 160
bossbar add elytra10 {"text":"Elytra","color":"yellow"}
bossbar set minecraft:elytra10 color yellow
bossbar set minecraft:elytra10 max 160
bossbar add elytra11 {"text":"Elytra","color":"yellow"}
bossbar set minecraft:elytra11 color yellow
bossbar set minecraft:elytra11 max 160
bossbar add elytra12 {"text":"Elytra","color":"yellow"}
bossbar set minecraft:elytra12 color yellow
bossbar set minecraft:elytra12 max 160

bossbar add speed1 {"text":"Speed","color":"green"}
bossbar set minecraft:speed1 color green
bossbar set minecraft:speed1 max 100
bossbar add speed2 {"text":"Speed","color":"green"}
bossbar set minecraft:speed2 color green
bossbar set minecraft:speed2 max 100
bossbar add speed3 {"text":"Speed","color":"green"}
bossbar set minecraft:speed3 color green
bossbar set minecraft:speed3 max 100
bossbar add speed4 {"text":"Speed","color":"green"}
bossbar set minecraft:speed4 color green
bossbar set minecraft:speed4 max 100
bossbar add speed5 {"text":"Speed","color":"green"}
bossbar set minecraft:speed5 color green
bossbar set minecraft:speed5 max 100
bossbar add speed6 {"text":"Speed","color":"green"}
bossbar set minecraft:speed6 color green
bossbar set minecraft:speed6 max 100
bossbar add speed7 {"text":"Speed","color":"green"}
bossbar set minecraft:speed7 color green
bossbar set minecraft:speed7 max 100
bossbar add speed8 {"text":"Speed","color":"green"}
bossbar set minecraft:speed8 color green
bossbar set minecraft:speed8 max 100
bossbar add speed9 {"text":"Speed","color":"green"}
bossbar set minecraft:speed9 color green
bossbar set minecraft:speed9 max 100
bossbar add speed10 {"text":"Speed","color":"green"}
bossbar set minecraft:speed10 color green
bossbar set minecraft:speed10 max 100
bossbar add speed11 {"text":"Speed","color":"green"}
bossbar set minecraft:speed11 color green
bossbar set minecraft:speed11 max 100
bossbar add speed12 {"text":"Speed","color":"green"}
bossbar set minecraft:speed12 color green
bossbar set minecraft:speed12 max 100

bossbar add tank1 {"text":"Unstoppable","color":"dark_green"}
bossbar set minecraft:tank1 color green
bossbar set minecraft:tank1 max 80
bossbar add tank2 {"text":"Unstoppable","color":"dark_green"}
bossbar set minecraft:tank2 color green
bossbar set minecraft:tank2 max 80
bossbar add tank3 {"text":"Unstoppable","color":"dark_green"}
bossbar set minecraft:tank3 color green
bossbar set minecraft:tank3 max 80
bossbar add tank4 {"text":"Unstoppable","color":"dark_green"}
bossbar set minecraft:tank4 color green
bossbar set minecraft:tank4 max 80
bossbar add tank5 {"text":"Unstoppable","color":"dark_green"}
bossbar set minecraft:tank5 color green
bossbar set minecraft:tank5 max 80
bossbar add tank6 {"text":"Unstoppable","color":"dark_green"}
bossbar set minecraft:tank6 color green
bossbar set minecraft:tank6 max 80
bossbar add tank7 {"text":"Unstoppable","color":"dark_green"}
bossbar set minecraft:tank7 color green
bossbar set minecraft:tank7 max 80
bossbar add tank8 {"text":"Unstoppable","color":"dark_green"}
bossbar set minecraft:tank8 color green
bossbar set minecraft:tank8 max 80
bossbar add tank9 {"text":"Unstoppable","color":"dark_green"}
bossbar set minecraft:tank9 color green
bossbar set minecraft:tank9 max 80
bossbar add tank10 {"text":"Unstoppable","color":"dark_green"}
bossbar set minecraft:tank10 color green
bossbar set minecraft:tank10 max 80
bossbar add tank11 {"text":"Unstoppable","color":"dark_green"}
bossbar set minecraft:tank11 color green
bossbar set minecraft:tank11 max 80
bossbar add tank12 {"text":"Unstoppable","color":"dark_green"}
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
bossbar set minecraft:zarzahn_f1 max 200
bossbar add zarzahn_f2 {"text":"Warp","color":"dark_purple"}
bossbar set minecraft:zarzahn_f2 color purple
bossbar set minecraft:zarzahn_f2 max 200
bossbar add zarzahn_f3 {"text":"Warp","color":"dark_purple"}
bossbar set minecraft:zarzahn_f3 color purple
bossbar set minecraft:zarzahn_f3 max 200
bossbar add zarzahn_f4 {"text":"Warp","color":"dark_purple"}
bossbar set minecraft:zarzahn_f4 color purple
bossbar set minecraft:zarzahn_f4 max 200
bossbar add zarzahn_f5 {"text":"Warp","color":"dark_purple"}
bossbar set minecraft:zarzahn_f5 color purple
bossbar set minecraft:zarzahn_f5 max 200
bossbar add zarzahn_f6 {"text":"Warp","color":"dark_purple"}
bossbar set minecraft:zarzahn_f6 color purple
bossbar set minecraft:zarzahn_f6 max 200
bossbar add zarzahn_f7 {"text":"Warp","color":"dark_purple"}
bossbar set minecraft:zarzahn_f7 color purple
bossbar set minecraft:zarzahn_f7 max 200
bossbar add zarzahn_f8 {"text":"Warp","color":"dark_purple"}
bossbar set minecraft:zarzahn_f8 color purple
bossbar set minecraft:zarzahn_f8 max 200
bossbar add zarzahn_f9 {"text":"Warp","color":"dark_purple"}
bossbar set minecraft:zarzahn_f9 color purple
bossbar set minecraft:zarzahn_f9 max 200
bossbar add zarzahn_f10 {"text":"Warp","color":"dark_purple"}
bossbar set minecraft:zarzahn_f10 color purple
bossbar set minecraft:zarzahn_f10 max 200
bossbar add zarzahn_f11 {"text":"Warp","color":"dark_purple"}
bossbar set minecraft:zarzahn_f11 color purple
bossbar set minecraft:zarzahn_f11 max 200
bossbar add zarzahn_f12 {"text":"Warp","color":"dark_purple"}
bossbar set minecraft:zarzahn_f12 color purple
bossbar set minecraft:zarzahn_f12 max 200
