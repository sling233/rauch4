$item replace entity @s hotbar.8 with written_book[written_book_content={title:"Kit Selector/Settings",author:"The Pog Man",pages:[[\
{"text":"           "},{"text":"Kits\n\n","bold":true},\
{"text":"⦿","color":"blue","click_event":{"action":"run_command","command":"/trigger kitselect set 1001"},"hover_event":{"action":"show_text","value":[{"text":"Try out"}]}},\
{"text":" Bolt\n","color":"$(bolt)",\
   "click_event":{"action":"run_command","command":"/trigger kitselect set 1"},\
   "hover_event":{"action":"show_text","value":[\
       {"text":"Name: ","color":"gray"},{"text":"Bolt\n","color":"#4AF6F0"},\
       {"text":"Type: ","color":"gray"},{"text":"Fighter\n","color":"#247774"},\
       {"text":"Stats:  "},{"text":"❤16  ","color":"#30A19E"},{"text":"⚔1.4  ","color":"#3DCCC7"},{"text":"Range: 3.5\n\n","color":"#4AF6F0"},\
       {"text":"R (10s): ","color":"#4AF6F0"},{"text":"A short-ranged projectile that explodes after a short travel time, dealing 1.5❤ Damage. If your Q is active this can be used to get extra hits.\n\n"},\
       {"text":"Q (14s): ","color":"#4AF6F0"},{"text":"You have 4 seconds to hit as many distinct players as possible. After the timer ends, you recieve a +20% damage buff for every unique player hit (stacks additively). You can press Q again to end the timer immediately, to get the damage boost early.\n\n"},\
       {"text":"F (11s): ","color":"#4AF6F0"},{"text":"+40% Speed for 5 seconds."}\
   ]}\
},\
{"text":"⦿","color":"blue","click_event":{"action":"run_command","command":"/trigger kitselect set 1002"},"hover_event":{"action":"show_text","value":[{"text":"Try out"}]}},\
{"text":" Zarzahn\n","color":"$(zarzahn)",\
   "click_event":{"action":"run_command","command":"/trigger kitselect set 2"},\
   "hover_event":{"action":"show_text","value":[\
       {"text":"Name: ","color":"gray"},{"text":"Zarzahn\n","color":"#00EE00"},\
       {"text":"Type: ","color":"gray"},{"text":"Fighter","color":"#3D773D"},{"text":" / ","color":"gray"},{"text":"Support\n","color":"#3D773D"},\
       {"text":"Stats:  "},{"text":"❤16  ","color":"#3D993D"},{"text":"⚔1.2  ","color":"#29CC29"},{"text":"Range: 3\n\n","color":"#00EE00"},\
       {"text":"R (13s): ","color":"#00EE00"},{"text":"A hook (pulls an enemy towards you if you hit them). Stuns for 0.75 seconds on arrival.\n\n"},\
       {"text":"Q (9.5s): ","color":"#00EE00"},{"text":"Shoots a rocket that deals no damage and knocks players away.\n\n"},\
       {"text":"F (18s): ","color":"#00EE00"},{"text":"Use F while crouching (Shift-F) to create a Warp Point. The next 18 seconds you have the ability to teleport to that point once by pressing F again (without crouching)."}\
   ]}\
},\
{"text":"⦿","color":"blue","click_event":{"action":"run_command","command":"/trigger kitselect set 1003"},"hover_event":{"action":"show_text","value":[{"text":"Try out"}]}},\
{"text":" Raucher\n","color":"$(raucher)",\
   "click_event":{"action":"run_command","command":"/trigger kitselect set 3"},\
   "hover_event":{"action":"show_text","value":[\
       {"text":"Name: ","color":"gray"},{"text":"Raucher\n","color":"#FFA54C"},\
       {"text":"Type: ","color":"gray"},{"text":"Support\n","color":"#C7290A"},\
       {"text":"Stats:  "},{"text":"❤12  ","color":"#DD4D1D"},{"text":"⚔0.9  ","color":"#F27130"},{"text":"Range: 2.5\n\n","color":"#FFA54C"},\
       {"text":"R (4s per cloud): ","color":"#FFA54C"},{"text":"Throws a debuff Cloud that increases received damage by 40% for all enemies inside. Use while crouching to throw a Health Cloud that heals teammates instead. Up to 3 clouds can be stored and used at will.\n\n"},\
       {"text":"Q (16s): ","color":"#FFA54C"},{"text":"Buffs damage for a teammate by 50% for 5 seconds (look at them and press Q).\n\n"},\
       {"text":"F (15s): ","color":"#FFA54C"},{"text":"Spawns 8 spiders, that attack enemies in a 30 block radius. The Spiders select targets evenly. They die in one hit or after 9 seconds."}\
   ]}\
},\
{"text":"⦿","color":"blue","click_event":{"action":"run_command","command":"/trigger kitselect set 1004"},"hover_event":{"action":"show_text","value":[{"text":"Try out"}]}},\
{"text":" Hacker\n","color":"$(hacker)",\
   "click_event":{"action":"run_command","command":"/trigger kitselect set 4"},\
   "hover_event":{"action":"show_text","value":[\
       {"text":"Name: ","color":"gray"},{"text":"Hacker\n","color":"#FF0000"},\
       {"text":"Type: ","color":"gray"},{"text":"Support (rework planned)\n","color":"#FFBF00"},\
       {"text":"Stats:  "},{"text":"❤13  ","color":"#7FFF00"},{"text":"⚔1.0  ","color":"#00FF3F"},{"text":"Range: 3\n\n","color":"#00FFFF"},\
       {"text":"R (13s): ","color":"#003FFF"},{"text":"Projectile that hacks enemies for 6 seconds. Hacked players cannot use their abilities. Missing only causes 1/3 of the cooldown.\n\n"},\
       {"text":"Q (17s): ","color":"#7F00FF"},{"text":"Projectile that debuffs all enemies in a ~5 block radius after landing by increasing received damage by 20% for 12 seconds.\n\n"},\
       {"text":"F (-): ","color":"#FF00BF"},{"text":"Reduces all ability cooldowns for teammates in range (cone-shape in front of you) by 15 seconds. Instead of having a cooldown, this ability is charge-based. You get a charge if a player debuffed (R) or hacked (Q) by you dies."}\
   ]}\
},\
{"text":"⦿","color":"blue","click_event":{"action":"run_command","command":"/trigger kitselect set 1005"},"hover_event":{"action":"show_text","value":[{"text":"Try out"}]}},\
{"text":" Wark\n","color":"$(wark)",\
   "click_event":{"action":"run_command","command":"/trigger kitselect set 5"},\
   "hover_event":{"action":"show_text","value":[\
       {"text":"Name: ","color":"gray"},{"text":"Wark\n","color":"#07E6BD"},\
       {"text":"Type: ","color":"gray"},{"text":"Fighter\n","color":"#036654"},\
       {"text":"Stats:  "},{"text":"❤16  ","color":"#049177"},{"text":"⚔1.2  ","color":"#06BB9A"},{"text":"Range: 3\n\n","color":"#07E6BD"},\
       {"text":"R (10s): ","color":"#07E6BD"},{"text":"Selects an enemy up to 20 blocks away. Creates a circle around that player. If the player leaves the circle, you get +40% Q charge.\n\n"},\
       {"text":"Q (-): ","color":"#07E6BD"},{"text":"Instead of having a cooldown, this ability is a percentage-based charge. You get 1% charge every second passively. Using R, you can get overcharge (above 100% charge), which will deplete back to 100% at a moderate speed. Activating Q grants Speed III, Jump Boost II and +50% damage for 10 seconds.\n\n"},\
       {"text":"F (10s): ","color":"#07E6BD"},{"text":"An upwards boost for mobility."}\
   ]}\
},\
{"text":"⦿","color":"blue","click_event":{"action":"run_command","command":"/trigger kitselect set 1006"},"hover_event":{"action":"show_text","value":[{"text":"Try out"}]}},\
{"text":" Teleporter\n","color":"$(teleporter)",\
   "click_event":{"action":"run_command","command":"/trigger kitselect set 6"},\
   "hover_event":{"action":"show_text","value":[\
       {"text":"Name: ","color":"gray"},{"text":"Teleporter\n","color":"#FF88FF"},\
       {"text":"Type: ","color":"gray"},{"text":"Assassin\n","color":"#804480"},\
       {"text":"Stats:  "},{"text":"❤10  ","color":"#AA5BAA"},{"text":"⚔2.8  ","color":"#D471D4"},{"text":"Range: 2\n\n","color":"#FF88FF"},\
       {"text":"R (14s): ","color":"#FF88FF"},{"text":"Projectile that teleports you behind the player you hit. Missing only causes 1/3 of the cooldown.\n\n"},\
       {"text":"Q (17s): ","color":"#FF88FF"},{"text":"You become invisible for 6 seconds. Sprinting particles are visible though.\n\n"},\
       {"text":"F (15s): ","color":"#FF88FF"},{"text":"You instantly teleport up to 14 blocks forwards."}\
   ]}\
},\
{"text":"⦿","color":"blue","click_event":{"action":"run_command","command":"/trigger kitselect set 1007"},"hover_event":{"action":"show_text","value":[{"text":"Try out"}]}},\
{"text":" Tank\n","color":"$(tank)",\
   "click_event":{"action":"run_command","command":"/trigger kitselect set 7"},\
   "hover_event":{"action":"show_text","value":[\
       {"text":"Name: ","color":"gray"},{"text":"Tank\n","color":"#6E69FF"},\
       {"text":"Type: ","color":"gray"},{"text":"Tank","color":"#373580"},{"text":" / ","color":"gray"},{"text":"Support","color":"#373580"},{"text":" / ","color":"gray"},{"text":"old kit, will get a rework someday\n","color":"#373580"},\
       {"text":"Stats:  "},{"text":"❤22  ","color":"#4946AA"},{"text":"⚔0.7  ","color":"#5C58D4"},{"text":"Range: 2.5\n\n","color":"#6E69FF"},\
       {"text":"R (-): ","color":"#6E69FF"},{"text":"Damage taken passively accumulates, up to 10 hearts. When it's over 4 hearts, you can use R on a teammate to heal them by the amount of accumulated damage.\n\n"},\
       {"text":"Q (18s): ","color":"#6E69FF"},{"text":"Buffs resistance and knockback resistance for a teammate by 40% for 6 seconds (look at them and press Q). Additionally, team members in a 4.5 block radius around the buffed player recieve 20% less damage.\n\n"},\
       {"text":"F (16s): ","color":"#6E69FF"},{"text":"Creates a Projectile Shield that lasts 7.5 seconds."}\
   ]}\
},\
{"text":"⦿","color":"blue","click_event":{"action":"run_command","command":"/trigger kitselect set 1008"},"hover_event":{"action":"show_text","value":[{"text":"Try out"}]}},\
{"text":" Pikka\n","color":"$(pikka)",\
   "click_event":{"action":"run_command","command":"/trigger kitselect set 8"},\
   "hover_event":{"action":"show_text","value":[\
       {"text":"Name: ","color":"gray"},{"text":"Pikka\n","color":"#FFBF47"},\
       {"text":"Type: ","color":"gray"},{"text":"Assassin\n","color":"#DB00B6"},\
       {"text":"Stats:  "},{"text":"❤12  ","color":"#F20089"},{"text":"⚔1.1  ","color":"#EB8842"},{"text":"Range: 3\n\n","color":"#FFBF47"},\
       {"text":"R (18s): ","color":"#FFBF47"},{"text":"A Boost in momentum forwards. Way more useful in the air.\n\n"},\
       {"text":"Q (17s): ","color":"#FFBF47"},{"text":"When grounded, you rise in the air. If you already are in the air you simply stall for a bit. After a short while you slam into the ground, dealing 4.8❤ and stunning everyone in range for 1 second.\n\n"},\
       {"text":"F (14s): ","color":"#FFBF47"},{"text":"A Boost upwards. In general, you have an elytra. When exceeding a certain speed while flying, your melee attacks get buffed to 4.6❤ (with a crit, that would be 6.9❤) until you touch the ground."}\
   ]}\
},\
{"text":"⦿","color":"blue","click_event":{"action":"run_command","command":"/trigger kitselect set 1009"},"hover_event":{"action":"show_text","value":[{"text":"Try out"}]}},\
{"text":" Wokkaman\n","color":"$(wokkaman)",\
   "click_event":{"action":"run_command","command":"/trigger kitselect set 9"},\
   "hover_event":{"action":"show_text","value":[\
       {"text":"Name: ","color":"gray"},{"text":"Wokkaman\n","color":"red"},\
       {"text":"Type: ","color":"gray"},{"text":"Everything\n","color":"red"},\
       {"text":"Stats:  "},{"text":"❤40  ","color":"red"},{"text":"⚔2.0  ","color":"red"},{"text":"Range: 3.6\n\n","color":"red"},\
       {"text":"R (8s): ","color":"red"},{"text":"A hook (pulls enemies towards you). Press right click again to instead fix the enemy in place and pull youself towards them, lauching them away when arriving.\n\n"},\
       {"text":"Q (-): ","color":"red"},{"text":"You get 4 rockets per kill (the ones rotating around you). Press Q to fire them.\n\n"},\
       {"text":"F (7s): ","color":"red"},{"text":"When on the ground, launches you in the air. This is the only case the cooldown is used for.\nWhen in the air, it makes you hover for a little bit.\nWhen hovering, it launches you downwards.\nWhen flying using the elytra, it cancels the elytra.\n\n"},\
           {"text":"sR (8s): ","color":"red"},{"text":"A projectile that looks for enemies closeby, automatically targeting them, and returning to searching once it hits the target. When no more players are found it explodes and stuns all players hit.\n\n"},\
           {"text":"sQ (9s): ","color":"red"},{"text":"Hop onto a nearby enemy, stunning them and dragging them downwards. Stops when arriving at the ground (so the higher you use it the more damage it does).\n\n"},\
           {"text":"sF (5s): ","color":"red"},{"text":"Teleport behind the player you are looking at."}\
   ]}\
}],\
[\
{"text":"   "},{"text":"Other Settings\n\n","bold":true},\
{"text":"Ambient Particles:\n","hover_event":{"action":"show_text","value":[{"text":"Turns Ambient Particles On/Off in case you don't like them. Some Maps may not have Ambient Particles.","color":"white"}]}},\
{"text":" [","color":"dark_gray"},{"text":"Off","color":"$(ambient)","click_event":{"action":"run_command","command":"/trigger kitselect set 100"}},{"text":"]      [","color":"dark_gray"},{"text":"On","color":"$(not_ambient)","click_event":{"action":"run_command","command":"/trigger kitselect set 101"}},{"text":"]\n\n","color":"dark_gray"},\
{"text":"Night Vision:\n","hover_event":{"action":"show_text","value":[{"text":"Accessibility Setting controlling wether to apply night vision on no/dark/all maps. We recommend trying turning up the brightness setting first as maps may look a lot worse with night vision.","color":"white"}]}},\
{"text":"[","color":"dark_gray"},{"text":"Off","color":"$(night_never)","click_event":{"action":"run_command","command":"/trigger kitselect set 120"}},\
{"text":"] [","color":"dark_gray"},{"text":"Dark","color":"$(night_dark)","click_event":{"action":"run_command","command":"/trigger kitselect set 121"},"hover_event":{"action":"show_text","value":[{"text":"Give Night Vision on dark maps"}]}},\
{"text":"] [","color":"dark_gray"},{"text":"Always","color":"$(night_always)","click_event":{"action":"run_command","command":"/trigger kitselect set 122"},"hover_event":{"action":"show_text","value":[{"text":"Give Night Vision on all maps"}]}},{"text":"]\n\n","color":"dark_gray"},\
{"text":"Actionbar Design:\n"},\
{"text":"[","color":"dark_gray"},{"text":"Design 1",color:"$(design_0)","hover_event":{"action":"show_text","value":[{"text":"No cooldown: "},{"text":"Q [0.0] ","color":"dark_purple"},{"text":"F [0.0] ","color":"dark_green"},{"text":"R [0.0]","color":"gold"},{"text":"\nOn cooldown: "},{"text":"Q [6.8] ","color":"light_purple"},{"text":"F [4.1] ","color":"green"},{"text":"R [3.2]","color":"yellow"}]},"click_event":{"action":"run_command","command":"/trigger kitselect set 110"}},{"text":"]\n","color":"dark_gray"},\
{"text":"[","color":"dark_gray"},{"text":"Design 2",color:"$(design_1)","hover_event":{"action":"show_text","value":[{"text":"No cooldown: "},{"text":"Q [0.0] ","color":"dark_purple"},{"text":"F [0.0] ","color":"dark_green"},{"text":"R [0.0]","color":"gold"},{"text":"\nOn cooldown: "},{"text":"Q [6.8] F [4.1] R [3.2]","color":"gray"}]},"click_event":{"action":"run_command","command":"/trigger kitselect set 111"}},{"text":"]\n","color":"dark_gray"},\
{"text":"[","color":"dark_gray"},{"text":"Design 3",color:"$(design_2)","hover_event":{"action":"show_text","value":[{"text":"No cooldown: "},{"text":"Q [0.0] ","color":"dark_purple"},{"text":"F [0.0] ","color":"dark_green"},{"text":"R [0.0]","color":"gold"},{"text":"\nOn cooldown: "},{"text":"Q [","color":"dark_gray"},{"text":"6.8","color":"gray"},{"text":"] F [","color":"dark_gray"},{"text":"4.1","color":"gray"},{"text":"] R [","color":"dark_gray"},{"text":"3.2","color":"gray"},{"text":"]","color":"dark_gray"}]},"click_event":{"action":"run_command","command":"/trigger kitselect set 112"}},{"text":"]\n","color":"dark_gray"},\
{"text":"[","color":"dark_gray"},{"text":"Design 4","color":"$(design_3)","hover_event":{"action":"show_text","value":[{"text":"No cooldown: "},{"text":"Q [0.0] ","color":"dark_purple"},{"text":"F [0.0] ","color":"dark_green"},{"text":"R [0.0]","color":"gold"},{"text":"\nOn cooldown: "},{"text":"Q ","color":"dark_purple"},{"text":"[","color":"dark_gray"},{"text":"6.8","color":"gray"},{"text":"]","color":"dark_gray"},{"text":" F ","color":"dark_green"},{"text":"[","color":"dark_gray"},{"text":"4.1","color":"gray"},{"text":"]","color":"dark_gray"},{"text":" R ","color":"gold"},{"text":"[","color":"dark_gray"},{"text":"3.2","color":"gray"},{"text":"]","color":"dark_gray"}]},"click_event":{"action":"run_command","command":"/trigger kitselect set 113"}},{"text":"]\n","color":"dark_gray"},\
{"text":"[","color":"dark_gray"},{"text":"Design 5","color":"$(design_4)","hover_event":{"action":"show_text","value":[{"text":"No cooldown: "},{"text":"Q [0.0] ","color":"dark_purple"},{"text":"F [0.0] ","color":"dark_green"},{"text":"R [0.0]","color":"gold"},{"text":"\nOn cooldown: "},{"text":"Q ","color":"dark_purple"},{"text":"[6.8] ","color":"gray"},{"text":"F ","color":"dark_green"},{"text":"[4.1] ","color":"gray"},{"text":"R ","color":"gold"},{"text":"[3.2]","color":"gray"}]},"click_event":{"action":"run_command","command":"/trigger kitselect set 114"}},{"text":"]","color":"dark_gray"}\
]\
]},item_name={"text":"Kit Selector/Settings","color":"yellow"}] 1