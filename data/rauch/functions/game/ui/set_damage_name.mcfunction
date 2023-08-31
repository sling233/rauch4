#$data modify entity @e[type=item,tag=setup,limit=1] CustomName set value '{"text":"$(dmg1).$(dmg2)","color":"$(color)"}'
$summon item ~ ~1.6 ~ {Tags:["setup"],CustomNameVisible:1b,Age:5980,PickupDelay:32767,Motion:[0.1,0.3,0.005],CustomName:'{"text":"$(dmg1).$(dmg2)"}',Item:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{CustomModelData:0}}}
