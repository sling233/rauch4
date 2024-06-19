# Update from old version where the version wasnt tracked yet
tellraw @a [{"text":"Unknown (5.2.0 or earlier)","color":"#FF7912"},{"text":" -> ","color":"green"},{"text":"6.0.0","color":"light_purple"}]
tellraw @a [{"text":"- If you updated from version 4.0.2 or earlier, all map data is unfortunately going to be removed, as it is stored differently now.","color":"yellow"}]
tellraw @a [{"text":"- Please re-add all currently spawned in prebuilt maps (remove and spawn again). Doing this allows you to easily update the maps if they change in the future (you will receive a prompt in chat).","color":"yellow"}]

# set version
scoreboard players set Global version 600

# old map data save method, outdated
kill @e[type=armor_stand,tag=map]

# every scoreboard that was ever removed
scoreboard objectives remove heal
scoreboard objectives remove tank
scoreboard objectives remove tank_damage_dealt
scoreboard objectives remove arrows
scoreboard objectives remove arrowreg
scoreboard objectives remove maxArrows
scoreboard objectives remove decode
scoreboard objectives remove Health
scoreboard objectives remove squid
scoreboard objectives remove mapId
scoreboard objectives remove mapTime
scoreboard objectives remove squid
scoreboard objectives remove wark_r
scoreboard objectives remove wark_hit1
scoreboard objectives remove wark_hit2
scoreboard objectives remove wark_hit3
scoreboard objectives remove wark_hit4
scoreboard objectives remove wark_hit5
scoreboard objectives remove wark_hit6
scoreboard objectives remove wark_hit7
scoreboard objectives remove wark_hit8
scoreboard objectives remove wark_hit9
scoreboard objectives remove wark_hit10
scoreboard objectives remove wark_hit11
scoreboard objectives remove wark_hit12
scoreboard objectives remove center_blue
scoreboard objectives remove center_red
scoreboard objectives remove music_id
scoreboard objectives remove music_length
scoreboard objectives remove teleporter_id
scoreboard objectives remove hacking
scoreboard objectives remove zarzahn_id
scoreboard objectives remove 1
scoreboard objectives remove 4
scoreboard objectives remove 8
scoreboard objectives remove 16
scoreboard objectives remove 32
scoreboard objectives remove 64
scoreboard objectives remove 128
scoreboard objectives remove 256
scoreboard objectives remove 512
scoreboard objectives remove 1024
scoreboard objectives remove 2048
scoreboard objectives remove bolt_hitby
scoreboard objectives remove bolt_hit
scoreboard objectives remove elytracool
scoreboard objectives remove flagDisplay
scoreboard objectives remove time_times

# every scoreboard that ever changed type
scoreboard objectives remove mapParticle
scoreboard objectives add mapParticle dummy
scoreboard objectives remove map_setting
scoreboard objectives add map_setting trigger
scoreboard objectives remove elytra
scoreboard objectives add elytra dummy
scoreboard objectives remove wark_f
scoreboard objectives add wark_f minecraft.custom:minecraft.time_since_rest
scoreboard objectives remove stats_g_damage_d
scoreboard objectives add stats_g_damage_d minecraft.custom:minecraft.damage_dealt
scoreboard objectives remove stats_g_damage_t
scoreboard objectives add stats_g_damage_t minecraft.custom:minecraft.damage_taken
scoreboard objectives remove stats_g_deaths
scoreboard objectives add stats_g_deaths minecraft.custom:minecraft.deaths
scoreboard objectives remove stats_g_kills
scoreboard objectives add stats_g_kills playerKillCount

# every bossbar that was ever removed
bossbar remove minecraft:tank1
bossbar remove minecraft:tank2
bossbar remove minecraft:tank3
bossbar remove minecraft:tank4
bossbar remove minecraft:tank5
bossbar remove minecraft:tank6
bossbar remove minecraft:tank7
bossbar remove minecraft:tank8
bossbar remove minecraft:tank9
bossbar remove minecraft:tank10
bossbar remove minecraft:tank11
bossbar remove minecraft:tank12
bossbar remove red_capturing
bossbar remove blue_capturing
bossbar remove red_captured
bossbar remove blue_captured
bossbar remove red_contested
bossbar remove blue_contested
bossbar remove recall1
bossbar remove recall2
bossbar remove recall3
bossbar remove recall4
bossbar remove recall5
bossbar remove recall6
bossbar remove recall7
bossbar remove recall8
bossbar remove recall9
bossbar remove recall10
bossbar remove recall11
bossbar remove recall12
bossbar remove thehack1
bossbar remove thehack2
bossbar remove thehack3
bossbar remove thehack4
bossbar remove thehack5
bossbar remove thehack6
bossbar remove thehack7
bossbar remove thehack8
bossbar remove thehack9
bossbar remove thehack10
bossbar remove thehack11
bossbar remove thehack12
bossbar remove wark_r1
bossbar remove wark_r2
bossbar remove wark_r3
bossbar remove wark_r4
bossbar remove wark_r5
bossbar remove wark_r6
bossbar remove wark_r7
bossbar remove wark_r8
bossbar remove wark_r9
bossbar remove wark_r10
bossbar remove wark_r11
bossbar remove wark_r12
