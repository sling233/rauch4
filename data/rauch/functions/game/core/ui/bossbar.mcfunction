execute store result bossbar minecraft:red_capturing value run scoreboard players get Global center_red
execute store result bossbar minecraft:red_contested value run scoreboard players get Global center_red
execute store result bossbar minecraft:red_captured value run scoreboard players get Global center_red
execute store result bossbar minecraft:blue_capturing value run scoreboard players get Global center_blue
execute store result bossbar minecraft:blue_contested value run scoreboard players get Global center_blue
execute store result bossbar minecraft:blue_captured value run scoreboard players get Global center_blue

bossbar set minecraft:red_capturing visible false
bossbar set minecraft:blue_capturing visible false
bossbar set minecraft:red_captured visible false
bossbar set minecraft:blue_captured visible false
bossbar set minecraft:red_contested visible false
bossbar set minecraft:blue_contested visible false

execute if score Global mode matches 1 if score Global capture_info matches 1 run bossbar set minecraft:red_capturing visible true
execute if score Global mode matches 1 if score Global capture_info matches 2 run bossbar set minecraft:blue_capturing visible true
execute if score Global mode matches 1 if score Global capture_info matches 3 run bossbar set minecraft:red_captured visible true
execute if score Global mode matches 1 if score Global capture_info matches 4 run bossbar set minecraft:blue_captured visible true
execute if score Global mode matches 1 if score Global capture_info matches 5 run bossbar set minecraft:red_contested visible true
execute if score Global mode matches 1 if score Global capture_info matches 6 run bossbar set minecraft:blue_contested visible true

execute store result bossbar minecraft:bolt1 value run scoreboard players get @a[tag=game,limit=1,scores={pnum=1}] bolt
execute store result bossbar minecraft:bolt2 value run scoreboard players get @a[tag=game,limit=1,scores={pnum=2}] bolt
execute store result bossbar minecraft:bolt3 value run scoreboard players get @a[tag=game,limit=1,scores={pnum=3}] bolt
execute store result bossbar minecraft:bolt4 value run scoreboard players get @a[tag=game,limit=1,scores={pnum=4}] bolt
execute store result bossbar minecraft:bolt5 value run scoreboard players get @a[tag=game,limit=1,scores={pnum=5}] bolt
execute store result bossbar minecraft:bolt6 value run scoreboard players get @a[tag=game,limit=1,scores={pnum=6}] bolt
execute store result bossbar minecraft:bolt7 value run scoreboard players get @a[tag=game,limit=1,scores={pnum=7}] bolt
execute store result bossbar minecraft:bolt8 value run scoreboard players get @a[tag=game,limit=1,scores={pnum=8}] bolt
execute store result bossbar minecraft:bolt9 value run scoreboard players get @a[tag=game,limit=1,scores={pnum=9}] bolt
execute store result bossbar minecraft:bolt10 value run scoreboard players get @a[tag=game,limit=1,scores={pnum=10}] bolt
execute store result bossbar minecraft:bolt11 value run scoreboard players get @a[tag=game,limit=1,scores={pnum=11}] bolt
execute store result bossbar minecraft:bolt12 value run scoreboard players get @a[tag=game,limit=1,scores={pnum=12}] bolt

execute store result bossbar minecraft:recall1 value run scoreboard players get @a[tag=game,limit=1,scores={pnum=1}] recall
execute store result bossbar minecraft:recall2 value run scoreboard players get @a[tag=game,limit=1,scores={pnum=2}] recall
execute store result bossbar minecraft:recall3 value run scoreboard players get @a[tag=game,limit=1,scores={pnum=3}] recall
execute store result bossbar minecraft:recall4 value run scoreboard players get @a[tag=game,limit=1,scores={pnum=4}] recall
execute store result bossbar minecraft:recall5 value run scoreboard players get @a[tag=game,limit=1,scores={pnum=5}] recall
execute store result bossbar minecraft:recall6 value run scoreboard players get @a[tag=game,limit=1,scores={pnum=6}] recall
execute store result bossbar minecraft:recall7 value run scoreboard players get @a[tag=game,limit=1,scores={pnum=7}] recall
execute store result bossbar minecraft:recall8 value run scoreboard players get @a[tag=game,limit=1,scores={pnum=8}] recall
execute store result bossbar minecraft:recall9 value run scoreboard players get @a[tag=game,limit=1,scores={pnum=9}] recall
execute store result bossbar minecraft:recall10 value run scoreboard players get @a[tag=game,limit=1,scores={pnum=10}] recall
execute store result bossbar minecraft:recall11 value run scoreboard players get @a[tag=game,limit=1,scores={pnum=11}] recall
execute store result bossbar minecraft:recall12 value run scoreboard players get @a[tag=game,limit=1,scores={pnum=12}] recall

execute store result bossbar minecraft:stun1 value run scoreboard players get @a[tag=game,limit=1,scores={pnum=1}] stun
execute store result bossbar minecraft:stun2 value run scoreboard players get @a[tag=game,limit=1,scores={pnum=2}] stun
execute store result bossbar minecraft:stun3 value run scoreboard players get @a[tag=game,limit=1,scores={pnum=3}] stun
execute store result bossbar minecraft:stun4 value run scoreboard players get @a[tag=game,limit=1,scores={pnum=4}] stun
execute store result bossbar minecraft:stun5 value run scoreboard players get @a[tag=game,limit=1,scores={pnum=5}] stun
execute store result bossbar minecraft:stun6 value run scoreboard players get @a[tag=game,limit=1,scores={pnum=6}] stun
execute store result bossbar minecraft:stun7 value run scoreboard players get @a[tag=game,limit=1,scores={pnum=7}] stun
execute store result bossbar minecraft:stun8 value run scoreboard players get @a[tag=game,limit=1,scores={pnum=8}] stun
execute store result bossbar minecraft:stun9 value run scoreboard players get @a[tag=game,limit=1,scores={pnum=9}] stun
execute store result bossbar minecraft:stun10 value run scoreboard players get @a[tag=game,limit=1,scores={pnum=10}] stun
execute store result bossbar minecraft:stun11 value run scoreboard players get @a[tag=game,limit=1,scores={pnum=11}] stun
execute store result bossbar minecraft:stun12 value run scoreboard players get @a[tag=game,limit=1,scores={pnum=12}] stun

execute store result bossbar minecraft:thehack1 value run scoreboard players get @a[tag=game,limit=1,scores={pnum=1}] hacking
execute store result bossbar minecraft:thehack2 value run scoreboard players get @a[tag=game,limit=1,scores={pnum=2}] hacking
execute store result bossbar minecraft:thehack3 value run scoreboard players get @a[tag=game,limit=1,scores={pnum=3}] hacking
execute store result bossbar minecraft:thehack4 value run scoreboard players get @a[tag=game,limit=1,scores={pnum=4}] hacking
execute store result bossbar minecraft:thehack5 value run scoreboard players get @a[tag=game,limit=1,scores={pnum=5}] hacking
execute store result bossbar minecraft:thehack6 value run scoreboard players get @a[tag=game,limit=1,scores={pnum=6}] hacking
execute store result bossbar minecraft:thehack7 value run scoreboard players get @a[tag=game,limit=1,scores={pnum=7}] hacking
execute store result bossbar minecraft:thehack8 value run scoreboard players get @a[tag=game,limit=1,scores={pnum=8}] hacking
execute store result bossbar minecraft:thehack9 value run scoreboard players get @a[tag=game,limit=1,scores={pnum=9}] hacking
execute store result bossbar minecraft:thehack10 value run scoreboard players get @a[tag=game,limit=1,scores={pnum=10}] hacking
execute store result bossbar minecraft:thehack11 value run scoreboard players get @a[tag=game,limit=1,scores={pnum=11}] hacking
execute store result bossbar minecraft:thehack12 value run scoreboard players get @a[tag=game,limit=1,scores={pnum=12}] hacking

execute store result bossbar minecraft:hack1 value run scoreboard players get @a[tag=game,limit=1,scores={pnum=1}] hack
execute store result bossbar minecraft:hack2 value run scoreboard players get @a[tag=game,limit=1,scores={pnum=2}] hack
execute store result bossbar minecraft:hack3 value run scoreboard players get @a[tag=game,limit=1,scores={pnum=3}] hack
execute store result bossbar minecraft:hack4 value run scoreboard players get @a[tag=game,limit=1,scores={pnum=4}] hack
execute store result bossbar minecraft:hack5 value run scoreboard players get @a[tag=game,limit=1,scores={pnum=5}] hack
execute store result bossbar minecraft:hack6 value run scoreboard players get @a[tag=game,limit=1,scores={pnum=6}] hack
execute store result bossbar minecraft:hack7 value run scoreboard players get @a[tag=game,limit=1,scores={pnum=7}] hack
execute store result bossbar minecraft:hack8 value run scoreboard players get @a[tag=game,limit=1,scores={pnum=8}] hack
execute store result bossbar minecraft:hack9 value run scoreboard players get @a[tag=game,limit=1,scores={pnum=9}] hack
execute store result bossbar minecraft:hack10 value run scoreboard players get @a[tag=game,limit=1,scores={pnum=10}] hack
execute store result bossbar minecraft:hack11 value run scoreboard players get @a[tag=game,limit=1,scores={pnum=11}] hack
execute store result bossbar minecraft:hack12 value run scoreboard players get @a[tag=game,limit=1,scores={pnum=12}] hack

execute store result bossbar minecraft:tank1 value run scoreboard players get @a[tag=game,limit=1,scores={pnum=1}] tank
execute store result bossbar minecraft:tank2 value run scoreboard players get @a[tag=game,limit=1,scores={pnum=2}] tank
execute store result bossbar minecraft:tank3 value run scoreboard players get @a[tag=game,limit=1,scores={pnum=3}] tank
execute store result bossbar minecraft:tank4 value run scoreboard players get @a[tag=game,limit=1,scores={pnum=4}] tank
execute store result bossbar minecraft:tank5 value run scoreboard players get @a[tag=game,limit=1,scores={pnum=5}] tank
execute store result bossbar minecraft:tank6 value run scoreboard players get @a[tag=game,limit=1,scores={pnum=6}] tank
execute store result bossbar minecraft:tank7 value run scoreboard players get @a[tag=game,limit=1,scores={pnum=7}] tank
execute store result bossbar minecraft:tank8 value run scoreboard players get @a[tag=game,limit=1,scores={pnum=8}] tank
execute store result bossbar minecraft:tank9 value run scoreboard players get @a[tag=game,limit=1,scores={pnum=9}] tank
execute store result bossbar minecraft:tank10 value run scoreboard players get @a[tag=game,limit=1,scores={pnum=10}] tank
execute store result bossbar minecraft:tank11 value run scoreboard players get @a[tag=game,limit=1,scores={pnum=11}] tank
execute store result bossbar minecraft:tank12 value run scoreboard players get @a[tag=game,limit=1,scores={pnum=12}] tank

execute store result bossbar minecraft:respawn1 value run scoreboard players get @a[tag=game,limit=1,scores={pnum=1}] respawntimer
execute store result bossbar minecraft:respawn2 value run scoreboard players get @a[tag=game,limit=1,scores={pnum=2}] respawntimer
execute store result bossbar minecraft:respawn3 value run scoreboard players get @a[tag=game,limit=1,scores={pnum=3}] respawntimer
execute store result bossbar minecraft:respawn4 value run scoreboard players get @a[tag=game,limit=1,scores={pnum=4}] respawntimer
execute store result bossbar minecraft:respawn5 value run scoreboard players get @a[tag=game,limit=1,scores={pnum=5}] respawntimer
execute store result bossbar minecraft:respawn6 value run scoreboard players get @a[tag=game,limit=1,scores={pnum=6}] respawntimer
execute store result bossbar minecraft:respawn7 value run scoreboard players get @a[tag=game,limit=1,scores={pnum=7}] respawntimer
execute store result bossbar minecraft:respawn8 value run scoreboard players get @a[tag=game,limit=1,scores={pnum=8}] respawntimer
execute store result bossbar minecraft:respawn9 value run scoreboard players get @a[tag=game,limit=1,scores={pnum=9}] respawntimer
execute store result bossbar minecraft:respawn10 value run scoreboard players get @a[tag=game,limit=1,scores={pnum=10}] respawntimer
execute store result bossbar minecraft:respawn11 value run scoreboard players get @a[tag=game,limit=1,scores={pnum=11}] respawntimer
execute store result bossbar minecraft:respawn12 value run scoreboard players get @a[tag=game,limit=1,scores={pnum=12}] respawntimer

execute store result bossbar minecraft:elytra1 value run scoreboard players get @a[tag=game,limit=1,scores={pnum=1}] elytracool
execute store result bossbar minecraft:elytra2 value run scoreboard players get @a[tag=game,limit=1,scores={pnum=2}] elytracool
execute store result bossbar minecraft:elytra3 value run scoreboard players get @a[tag=game,limit=1,scores={pnum=3}] elytracool
execute store result bossbar minecraft:elytra4 value run scoreboard players get @a[tag=game,limit=1,scores={pnum=4}] elytracool
execute store result bossbar minecraft:elytra5 value run scoreboard players get @a[tag=game,limit=1,scores={pnum=5}] elytracool
execute store result bossbar minecraft:elytra6 value run scoreboard players get @a[tag=game,limit=1,scores={pnum=6}] elytracool
execute store result bossbar minecraft:elytra7 value run scoreboard players get @a[tag=game,limit=1,scores={pnum=7}] elytracool
execute store result bossbar minecraft:elytra8 value run scoreboard players get @a[tag=game,limit=1,scores={pnum=8}] elytracool
execute store result bossbar minecraft:elytra9 value run scoreboard players get @a[tag=game,limit=1,scores={pnum=9}] elytracool
execute store result bossbar minecraft:elytra10 value run scoreboard players get @a[tag=game,limit=1,scores={pnum=10}] elytracool
execute store result bossbar minecraft:elytra11 value run scoreboard players get @a[tag=game,limit=1,scores={pnum=11}] elytracool
execute store result bossbar minecraft:elytra12 value run scoreboard players get @a[tag=game,limit=1,scores={pnum=12}] elytracool

execute store result bossbar minecraft:speed1 value run scoreboard players get @a[tag=game,limit=1,scores={pnum=1}] fly
execute store result bossbar minecraft:speed2 value run scoreboard players get @a[tag=game,limit=1,scores={pnum=2}] fly
execute store result bossbar minecraft:speed3 value run scoreboard players get @a[tag=game,limit=1,scores={pnum=3}] fly
execute store result bossbar minecraft:speed4 value run scoreboard players get @a[tag=game,limit=1,scores={pnum=4}] fly
execute store result bossbar minecraft:speed5 value run scoreboard players get @a[tag=game,limit=1,scores={pnum=5}] fly
execute store result bossbar minecraft:speed6 value run scoreboard players get @a[tag=game,limit=1,scores={pnum=6}] fly
execute store result bossbar minecraft:speed7 value run scoreboard players get @a[tag=game,limit=1,scores={pnum=7}] fly
execute store result bossbar minecraft:speed8 value run scoreboard players get @a[tag=game,limit=1,scores={pnum=8}] fly
execute store result bossbar minecraft:speed9 value run scoreboard players get @a[tag=game,limit=1,scores={pnum=9}] fly
execute store result bossbar minecraft:speed10 value run scoreboard players get @a[tag=game,limit=1,scores={pnum=10}] fly
execute store result bossbar minecraft:speed11 value run scoreboard players get @a[tag=game,limit=1,scores={pnum=11}] fly
execute store result bossbar minecraft:speed12 value run scoreboard players get @a[tag=game,limit=1,scores={pnum=12}] fly

bossbar set minecraft:bolt1 players @a[tag=game,scores={pnum=1,bolt=1..}]
bossbar set minecraft:bolt2 players @a[tag=game,scores={pnum=2,bolt=1..}]
bossbar set minecraft:bolt3 players @a[tag=game,scores={pnum=3,bolt=1..}]
bossbar set minecraft:bolt4 players @a[tag=game,scores={pnum=4,bolt=1..}]
bossbar set minecraft:bolt5 players @a[tag=game,scores={pnum=5,bolt=1..}]
bossbar set minecraft:bolt6 players @a[tag=game,scores={pnum=6,bolt=1..}]
bossbar set minecraft:bolt7 players @a[tag=game,scores={pnum=7,bolt=1..}]
bossbar set minecraft:bolt8 players @a[tag=game,scores={pnum=8,bolt=1..}]
bossbar set minecraft:bolt9 players @a[tag=game,scores={pnum=9,bolt=1..}]
bossbar set minecraft:bolt10 players @a[tag=game,scores={pnum=10,bolt=1..}]
bossbar set minecraft:bolt11 players @a[tag=game,scores={pnum=11,bolt=1..}]
bossbar set minecraft:bolt12 players @a[tag=game,scores={pnum=12,bolt=1..}]

bossbar set minecraft:recall1 players @a[tag=game,scores={pnum=1,recall=1..}]
bossbar set minecraft:recall2 players @a[tag=game,scores={pnum=2,recall=1..}]
bossbar set minecraft:recall3 players @a[tag=game,scores={pnum=3,recall=1..}]
bossbar set minecraft:recall4 players @a[tag=game,scores={pnum=4,recall=1..}]
bossbar set minecraft:recall5 players @a[tag=game,scores={pnum=5,recall=1..}]
bossbar set minecraft:recall6 players @a[tag=game,scores={pnum=6,recall=1..}]
bossbar set minecraft:recall7 players @a[tag=game,scores={pnum=7,recall=1..}]
bossbar set minecraft:recall8 players @a[tag=game,scores={pnum=8,recall=1..}]
bossbar set minecraft:recall9 players @a[tag=game,scores={pnum=9,recall=1..}]
bossbar set minecraft:recall10 players @a[tag=game,scores={pnum=10,recall=1..}]
bossbar set minecraft:recall11 players @a[tag=game,scores={pnum=11,recall=1..}]
bossbar set minecraft:recall12 players @a[tag=game,scores={pnum=12,recall=1..}]

bossbar set minecraft:stun1 players @a[tag=game,scores={pnum=1,stun=1..}]
bossbar set minecraft:stun2 players @a[tag=game,scores={pnum=2,stun=1..}]
bossbar set minecraft:stun3 players @a[tag=game,scores={pnum=3,stun=1..}]
bossbar set minecraft:stun4 players @a[tag=game,scores={pnum=4,stun=1..}]
bossbar set minecraft:stun5 players @a[tag=game,scores={pnum=5,stun=1..}]
bossbar set minecraft:stun6 players @a[tag=game,scores={pnum=6,stun=1..}]
bossbar set minecraft:stun7 players @a[tag=game,scores={pnum=7,stun=1..}]
bossbar set minecraft:stun8 players @a[tag=game,scores={pnum=8,stun=1..}]
bossbar set minecraft:stun9 players @a[tag=game,scores={pnum=9,stun=1..}]
bossbar set minecraft:stun10 players @a[tag=game,scores={pnum=10,stun=1..}]
bossbar set minecraft:stun11 players @a[tag=game,scores={pnum=11,stun=1..}]
bossbar set minecraft:stun12 players @a[tag=game,scores={pnum=12,stun=1..}]

bossbar set minecraft:hack1 players @a[tag=game,scores={pnum=1,hack=0..}]
bossbar set minecraft:hack2 players @a[tag=game,scores={pnum=2,hack=0..}]
bossbar set minecraft:hack3 players @a[tag=game,scores={pnum=3,hack=0..}]
bossbar set minecraft:hack4 players @a[tag=game,scores={pnum=4,hack=0..}]
bossbar set minecraft:hack5 players @a[tag=game,scores={pnum=5,hack=0..}]
bossbar set minecraft:hack6 players @a[tag=game,scores={pnum=6,hack=0..}]
bossbar set minecraft:hack7 players @a[tag=game,scores={pnum=7,hack=0..}]
bossbar set minecraft:hack8 players @a[tag=game,scores={pnum=8,hack=0..}]
bossbar set minecraft:hack9 players @a[tag=game,scores={pnum=9,hack=0..}]
bossbar set minecraft:hack10 players @a[tag=game,scores={pnum=10,hack=0..}]
bossbar set minecraft:hack11 players @a[tag=game,scores={pnum=11,hack=0..}]
bossbar set minecraft:hack12 players @a[tag=game,scores={pnum=12,hack=0..}]

bossbar set minecraft:thehack1 players @a[tag=game,scores={pnum=1,hacking=1..}]
bossbar set minecraft:thehack2 players @a[tag=game,scores={pnum=2,hacking=1..}]
bossbar set minecraft:thehack3 players @a[tag=game,scores={pnum=3,hacking=1..}]
bossbar set minecraft:thehack4 players @a[tag=game,scores={pnum=4,hacking=1..}]
bossbar set minecraft:thehack5 players @a[tag=game,scores={pnum=5,hacking=1..}]
bossbar set minecraft:thehack6 players @a[tag=game,scores={pnum=6,hacking=1..}]
bossbar set minecraft:thehack7 players @a[tag=game,scores={pnum=7,hacking=1..}]
bossbar set minecraft:thehack8 players @a[tag=game,scores={pnum=8,hacking=1..}]
bossbar set minecraft:thehack9 players @a[tag=game,scores={pnum=9,hacking=1..}]
bossbar set minecraft:thehack11 players @a[tag=game,scores={pnum=11,hacking=1..}]
bossbar set minecraft:thehack12 players @a[tag=game,scores={pnum=12,hacking=1..}]

bossbar set minecraft:tank1 players @a[tag=game,scores={pnum=1,tank=1..}]
bossbar set minecraft:tank2 players @a[tag=game,scores={pnum=2,tank=1..}]
bossbar set minecraft:tank3 players @a[tag=game,scores={pnum=3,tank=1..}]
bossbar set minecraft:tank4 players @a[tag=game,scores={pnum=4,tank=1..}]
bossbar set minecraft:tank5 players @a[tag=game,scores={pnum=5,tank=1..}]
bossbar set minecraft:tank6 players @a[tag=game,scores={pnum=6,tank=1..}]
bossbar set minecraft:tank7 players @a[tag=game,scores={pnum=7,tank=1..}]
bossbar set minecraft:tank8 players @a[tag=game,scores={pnum=8,tank=1..}]
bossbar set minecraft:tank9 players @a[tag=game,scores={pnum=9,tank=1..}]
bossbar set minecraft:tank10 players @a[tag=game,scores={pnum=10,tank=1..}]
bossbar set minecraft:tank11 players @a[tag=game,scores={pnum=11,tank=1..}]
bossbar set minecraft:tank12 players @a[tag=game,scores={pnum=12,tank=1..}]

bossbar set minecraft:respawn1 players @a[tag=game,tag=dead,scores={pnum=1}]
bossbar set minecraft:respawn2 players @a[tag=game,tag=dead,scores={pnum=2}]
bossbar set minecraft:respawn3 players @a[tag=game,tag=dead,scores={pnum=3}]
bossbar set minecraft:respawn4 players @a[tag=game,tag=dead,scores={pnum=4}]
bossbar set minecraft:respawn5 players @a[tag=game,tag=dead,scores={pnum=5}]
bossbar set minecraft:respawn6 players @a[tag=game,tag=dead,scores={pnum=6}]
bossbar set minecraft:respawn7 players @a[tag=game,tag=dead,scores={pnum=7}]
bossbar set minecraft:respawn8 players @a[tag=game,tag=dead,scores={pnum=8}]
bossbar set minecraft:respawn9 players @a[tag=game,tag=dead,scores={pnum=9}]
bossbar set minecraft:respawn10 players @a[tag=game,tag=dead,scores={pnum=10}]
bossbar set minecraft:respawn11 players @a[tag=game,tag=dead,scores={pnum=11}]
bossbar set minecraft:respawn12 players @a[tag=game,tag=dead,scores={pnum=12}]

bossbar set minecraft:elytra1 players @a[tag=game,scores={pnum=1,elytracool=..160,kit=8}]
bossbar set minecraft:elytra2 players @a[tag=game,scores={pnum=2,elytracool=..160,kit=8}]
bossbar set minecraft:elytra3 players @a[tag=game,scores={pnum=3,elytracool=..160,kit=8}]
bossbar set minecraft:elytra4 players @a[tag=game,scores={pnum=4,elytracool=..160,kit=8}]
bossbar set minecraft:elytra5 players @a[tag=game,scores={pnum=5,elytracool=..160,kit=8}]
bossbar set minecraft:elytra6 players @a[tag=game,scores={pnum=6,elytracool=..160,kit=8}]
bossbar set minecraft:elytra7 players @a[tag=game,scores={pnum=7,elytracool=..160,kit=8}]
bossbar set minecraft:elytra8 players @a[tag=game,scores={pnum=8,elytracool=..160,kit=8}]
bossbar set minecraft:elytra9 players @a[tag=game,scores={pnum=9,elytracool=..160,kit=8}]
bossbar set minecraft:elytra10 players @a[tag=game,scores={pnum=10,elytracool=..160,kit=8}]
bossbar set minecraft:elytra11 players @a[tag=game,scores={pnum=11,elytracool=..160,kit=8}]
bossbar set minecraft:elytra12 players @a[tag=game,scores={pnum=12,elytracool=..160,kit=8}]

bossbar set minecraft:speed1 players @a[tag=game,scores={pnum=1,fly=1..}]
bossbar set minecraft:speed2 players @a[tag=game,scores={pnum=2,fly=1..}]
bossbar set minecraft:speed3 players @a[tag=game,scores={pnum=3,fly=1..}]
bossbar set minecraft:speed4 players @a[tag=game,scores={pnum=4,fly=1..}]
bossbar set minecraft:speed5 players @a[tag=game,scores={pnum=5,fly=1..}]
bossbar set minecraft:speed6 players @a[tag=game,scores={pnum=6,fly=1..}]
bossbar set minecraft:speed7 players @a[tag=game,scores={pnum=7,fly=1..}]
bossbar set minecraft:speed8 players @a[tag=game,scores={pnum=8,fly=1..}]
bossbar set minecraft:speed9 players @a[tag=game,scores={pnum=9,fly=1..}]
bossbar set minecraft:speed10 players @a[tag=game,scores={pnum=10,fly=1..}]
bossbar set minecraft:speed11 players @a[tag=game,scores={pnum=11,fly=1..}]
bossbar set minecraft:speed12 players @a[tag=game,scores={pnum=12,fly=1..}]
