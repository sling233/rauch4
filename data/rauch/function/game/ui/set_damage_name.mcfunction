#$summon item ~ ~1.6 ~ {CustomNameVisible:1b,Age:5980,PickupDelay:32767,Motion:[0.1,0.3,0.005],CustomName:'{"text":"$(dmg1).$(dmg2)","color":"$(color)"}',Item:{id:"minecraft:warped_fungus_on_a_stick",components:{custom_model_data:0}}}
$summon text_display ~ ~2 ~ {Tags:["setup","damage_number"],billboard:"center",text:{"text":"$(dmg1).$(dmg2)","color":"$(color)"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1f,1f,1f]}}
#data merge entity @e[type=text_display,tag=setup,limit=1] {transformation:{scale:[2,2,2]},start_interpolation:0,interpolation_duration:30}
#tag @e[type=text_display,tag=setup] remove setup
