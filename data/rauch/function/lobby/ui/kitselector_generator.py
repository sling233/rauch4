class Kit:
    def __init__(self, name, typ):
        self.name = name
        self.typ = typ
        self.range = 3

    name = ""
    typ = ""
    health = ""
    damage = ""
    r_ability = ""
    q_ability = ""
    f_ability = ""
    colors = []
    r_cool = -1
    q_cool = -1
    f_cool = -1

class WokkamanKit(Kit):
    sr_ability = ""
    sq_ability = ""
    sf_ability = ""
    sr_cool = -1
    sq_cool = -1
    sf_cool = -1


bolt = Kit("Bolt","Fighter")
bolt.r_ability = "You shoot a slow projectile that explodes after a short travel time or on contact with the ground, dealing 1.5❤ Damage. If your Q is active, you are able to use this to get extra hits."
bolt.q_ability = "You have 4 seconds to hit as many distinct players as possible. After the timer ends, you recieve a +20% damage buff for every unique player hit (stacks additively). You can press Q again to end the timer immediately, to get the damage boost early."
bolt.f_ability = "+40% Speed for 5 seconds."
bolt.colors = ["#4AF6F0","#247774","#30A19E","#3DCCC7","#4AF6F0","#4AF6F0","#4AF6F0","#4AF6F0"]

zarzahn = Kit("Zarzahn",["Fighter","Support"])
zarzahn.r_ability = "You shoot out a hook that pulls enemies towards you. Once they arrive, they are stunned for 0.75 seconds."
zarzahn.q_ability = "Shoots a rocket that knocks players away on explosion."
zarzahn.f_ability = "Use Shift-F to create a Warp Point. The next 18 seconds you have the ability to teleport to that point by pressing F again (without sneaking)."
zarzahn.colors = ["#00EE00","#3D773D","#3D993D","#29CC29","#00EE00","#00EE00","#00EE00","#00EE00"]

raucher = Kit("Raucher","Support")
raucher.r_ability = "You throw a Damage Cloud that slows enemies and increases their received damage by 40%. Hold Sneak to throw a Health Cloud that gives your teammates regeneration. You can store 3 clouds."
#raucher.r_cool = "7s per cloud"
raucher.q_ability = "Buffs damage for a teammate by 50% for 5 seconds (look at them and press Q)."
raucher.f_ability = "Spawns 8 spiders, that attack enemies in a 30 block radius. The Spiders select targets evenly. They die in one hit or after 9 seconds."
raucher.colors = ["#FFA54C","#C7290A","#DD4D1D","#F27130","#FFA54C","#FFA54C","#FFA54C","#FFA54C"]

hacker = Kit("Hacker","Support (rework planned)")
hacker.r_ability = "Shoots a projectile that hacks enemies for 10 seconds. Hacked players cannot use their abilities."
hacker.q_ability = "Throws a projectile that increases received damage by 20% for 12 seconds for all enemies in a radius after landing."
hacker.f_ability = "Reduces all ability cooldowns for teammates in range (cone-shape in front of you) by 15 seconds. Instead of having a cooldown, this ability is charge-based. You get a charge if a player debuffed (R) or hacked (Q) by you dies. You spawn with 1 charge at the start of the game, but dying doesn\\'t affect your charges."
hacker.f_cool = "-"
hacker.colors = ["#FF0000","#FFBF00","#7FFF00","#00FF3F","#00FFFF","#003FFF","#7F00FF","#FF00BF"]

wark = Kit("Wark","Fighter")
wark.r_ability = "Selects an enemy up to 20 blocks away. Creates a circle around that player. If the player leaves the circle, you get 40% Q charge."
wark.q_ability = "Instead of having a cooldown, this ability is a percentage-based charge. You get 1% charge every second passively and with R. Using R, you can get overcharge (above 100% charge), that will deplete back to 100% at a moderate speed. Activating Q with 100% charge, you gain Speed III, Jump Boost II and +50% damage for 10 seconds. Alternatively, you can activate Shift-Q that will only consume 50% charge, giving you Speed III, Jumpboost II and +30% damage for 5 seconds."
wark.q_cool = "-"
wark.f_ability = "An upwards boost for mobility."
wark.colors = ["#07E6BD","#036654","#049177","#06BB9A","#07E6BD","#07E6BD","#07E6BD","#07E6BD"]

teleporter = Kit("Teleporter","Assassin")
teleporter.r_ability = "Shoots a projetile. You teleport behind the player you hit. The player gets debuffed with -40% speed and -40% attack damage for 3 seconds. Missing only causes 1/3 of the cooldown."
teleporter.q_ability = "You become invisible for 6 seconds. Sprinting particles are visible though."
teleporter.f_ability = "You instantly teleport to where you are looking, with a max range of 14 blocks."
teleporter.colors = ["#FF88FF","#804480","#AA5BAA","#D471D4","#FF88FF","#FF88FF","#FF88FF","#FF88FF"]

tank = Kit("Tank",["Tank","Support","old kit, will get a rework someday"])
tank.r_ability = "Damage taken passively accumulates, up to 10 hearts. When it\\'s over 4 hearts, you can use R on a teammate to heal them by the amount of damage taken."
tank.r_cool = "-"
tank.q_ability = "Buffs resistance and knockback resistance for a teammate by 40% for 6 seconds (look at them and press Q). Additionally, team members in a 4.5 block radius around the buffed player recieve 20% less damage."
tank.f_ability = "Creates a Projectile Shield that lasts 7.5 seconds."
tank.colors = ["#6E69FF","#373580","#4946AA","#5C58D4","#6E69FF","#6E69FF","#6E69FF","#6E69FF"]

pikka = Kit("Pikka","Assassin")
pikka.r_ability = "A Boost in momentum forwards. Way more useful in the air."
pikka.q_ability = "When grounded, you rise in the air. If you already are in the air you simply stall for a bit. After a short while you slam into the ground, dealing 4.8❤ and stunning everyone in range for 1 second."
pikka.f_ability = "A Boost upwards. In general, you have an elytra. When exceeding a certain speed while flying, your melee attacks get buffed to 4.6❤ (with a crit, that would be 6.9❤) until you touch the ground."
pikka.colors = ["#FFBF47","#DB00B6","#F20089","#EB8842","#FFBF47","#FFBF47","#FFBF47","#FFBF47"]

# Wokkaman definition:
wokkaman = WokkamanKit("Wokkaman","Everything")
wokkaman.r_ability = "Wok R"
wokkaman.sr_ability = "Wok sR"
wokkaman.q_ability = "Wok Q"
wokkaman.q_cool = "-"
wokkaman.sq_ability = "Wok sQ"
wokkaman.f_ability = "Wok F"
wokkaman.sf_ability = "Wok sF"
wokkaman.colors = ["red","red","red","red","red","red","red","red","red","red","red"]

# colors go [name,type,health,damage,range,r,q,f,sr,sq,sf]

# ------------------------- dont need to touch anything below this ------------------
kits = [bolt,zarzahn,raucher,hacker,wark,teleporter,tank,pikka,wokkaman]

# read health damage and range stats
with open(r"..\..\game\mechanics\stats.mcfunction","r") as f:
    lines = f.readlines()
    for line in lines:
        for i, kit in enumerate(kits):
            if line[:59] == "attribute @s[scores={kit=" + str(i+1) + "}] minecraft:max_health base set ": kit.health = int(int(line[59:-1]) / 2)
            if line[:62] == "attribute @s[scores={kit=" + str(i+1) + "}] minecraft:attack_damage base set ": kit.damage = int(line[62:-1]) / 10
            if line[:73] == "attribute @s[scores={kit=" + str(i+1) + "}] minecraft:entity_interaction_range base set ": kit.range = line[73:-1]

# read cooldowns
with open(r"..\..\game\framework\default_conditions.mcfunction","r") as f:
    lines = f.readlines()
    for line in lines:
        for i, kit in enumerate(kits):
            if kit.r_cool == -1:
                if line[:73] == "execute as @a[scores={kit=" + str(i+1) + "}] run scoreboard players set @s cool1_target ":
                    cool = int(line[73:-1]) / 20
                    if cool.is_integer(): cool = int(cool)
                    kit.r_cool = f"{cool}s"
            if kit.q_cool == -1:
                if line[:73] == "execute as @a[scores={kit=" + str(i+1) + "}] run scoreboard players set @s cool2_target ":
                    cool = int(line[73:-1]) / 20
                    if cool.is_integer(): cool = int(cool)
                    kit.q_cool = f"{cool}s"
            if kit.f_cool == -1:
                if line[:73] == "execute as @a[scores={kit=" + str(i+1) + "}] run scoreboard players set @s cool3_target ":
                    cool = int(line[73:-1]) / 20
                    if cool.is_integer(): cool = int(cool)
                    kit.f_cool = f"{cool}s"

            # only go on if kit is wokkaman (more abilities)
            if type(kit) is Kit: continue

            if kit.sr_cool == -1:
                if line[:73] == "execute as @a[scores={kit=9}] run scoreboard players set @s cool4_target ":
                    cool = int(line[73:-1]) / 20
                    if cool.is_integer(): cool = int(cool)
                    kit.sr_cool = f"{cool}s"
            if kit.sq_cool == -1:
                if line[:73] == "execute as @a[scores={kit=9}] run scoreboard players set @s cool5_target ":
                    cool = int(line[73:-1]) / 20
                    if cool.is_integer(): cool = int(cool)
                    kit.sq_cool = f"{cool}s"
            if kit.sf_cool == -1:
                if line[:73] == "execute as @a[scores={kit=9}] run scoreboard players set @s cool6_target ":
                    cool = int(line[73:-1]) / 20
                    if cool.is_integer(): cool = int(cool)
                    kit.sf_cool = f"{cool}s"

            #if line[:70] == "attribute @s[scores={kit=" + str(i+1) + "}] minecraft:attack_damage base set ": kits[i].damage = int(line[70:-1]) / 10
            #if line[:80] == "attribute @s[scores={kit=" + str(i+1) + "}] minecraft:entity_interaction_range base set ": kits[i].range = line[80:-1]

# raucher custom r cool text
raucher.r_cool += " per cloud"

# generate kit text
text = ['$item replace entity @s hotbar.8 with written_book[written_book_content={title:"Kit Selector/Settings",author:"The Pog Man",pages:[[\\',
        '{"text":"           "},{"text":"Kits\\n\\n","bold":true},{"text":"[","color":"dark_gray"},\\']
# add kit descriptions (not wokkaman, too much difference. wokkaman gets done seperately later)
for i, kit in enumerate(kits[:-1]):
    if type(kit.typ) is list:
        type_lol = ""
        for typ in kit.typ[:-1]:
            type_lol += ',{"text":"' + typ + '","color":"' + kit.colors[1] + '"},{"text":" / ","color":"gray"}'
        type_lol += ',{"text":"' + kit.typ[-1] + '\\n","color":"' + kit.colors[1] + '"},\\'
    else:
        type_lol = ',{"text":"' + kit.typ + '\\n","color":"' + kit.colors[1] + '"},\\'

    text.append('{"text":"' + kit.name + '","color":"$(' + kit.name.lower() + ')","click_event":{"action":"run_command","command":"/trigger kitselect set ' + str(i+1) + '"},"hover_event":{"action":"show_text","value":\\')
    text.append('[{"text":"Name: ","color":"gray"},{"text":"' + kit.name + '\\n","color":"' + kit.colors[0] + '"},{"text":"Type: ","color":"gray"}' + type_lol)
    text.append('{"text":"Stats:  "},{"text":"❤' + str(kit.health) + '  ","color":"' + kit.colors[2] + '"},{"text":"⚔' + str(kit.damage) + '  ","color":"' + kit.colors[3] + '"},{"text":"Range: ' + str(kit.range) + '\\n\\n","color":"' + kit.colors[4] + '"},{"text":"R (' + str(kit.r_cool) + '): ","color":"' + kit.colors[5] + '"},\\')
    text.append('{"text":"' + kit.r_ability + '\\n\\n"},{"text":"Q (' + str(kit.q_cool) + '): ","color":"' + kit.colors[6] + '"},\\')
    text.append('{"text":"' + kit.q_ability + '\\n\\n"},{"text":"F (' + str(kit.f_cool) + '): ","color":"' + kit.colors[7] + '"},\\')
    if i == len(kits) - 2: # last kit (make one line more for wokkaman)
        text.append('{"text":"' + kit.f_ability + '"}]}},{"text":"]","color":"dark_gray"},\\')
    else: # for every other kit
        text.append('{"text":"' + kit.f_ability + '"}]}},{"text":"]\\n[","color":"dark_gray"},\\')


# add wokkaman description
type_lol = ',{"text":"' + wokkaman.typ + '\\n","color":"' + wokkaman.colors[1] + '"},\\'
text.append('{"text":"\\n\\n[","color":"dark_gray"},{"text":"' + wokkaman.name + '","color":"gray","hover_event":{"action":"show_text","value":\\')
text.append('[{"text":"This kit cannot be selected, it gets assigned to players in team red in the Wokkaman game mode.\\n\\n","color":"gray"},\\')
text.append('{"text":"Name: ","color":"gray"},{"text":"' + wokkaman.name + '\\n","color":"' + wokkaman.colors[0] + '"},{"text":"Type: ","color":"gray"}' + type_lol)
text.append('{"text":"Stats:  "},{"text":"❤' + str(wokkaman.health) + '  ","color":"' + wokkaman.colors[2] + '"},{"text":"⚔' + str(wokkaman.damage) + '  ","color":"' + wokkaman.colors[3] + '"},{"text":"Range: ' + str(wokkaman.range) + '\\n\\n","color":"' + wokkaman.colors[4] + '"},{"text":"R (' + str(wokkaman.r_cool) + '): ","color":"' + wokkaman.colors[5] + '"},\\')
text.append('{"text":"' + wokkaman.r_ability + '\\n\\n"},{"text":"sR (' + str(wokkaman.sr_cool) + '): ","color":"' + wokkaman.colors[8] + '"},\\')
text.append('{"text":"' + wokkaman.sr_ability + '\\n\\n"},{"text":"Q (' + str(wokkaman.q_cool) + '): ","color":"' + wokkaman.colors[6] + '"},\\')
text.append('{"text":"' + wokkaman.q_ability + '\\n\\n"},{"text":"sQ (' + str(wokkaman.sq_cool) + '): ","color":"' + wokkaman.colors[9] + '"},\\')
text.append('{"text":"' + wokkaman.sq_ability + '\\n\\n"},{"text":"F (' + str(wokkaman.f_cool) + '): ","color":"' + wokkaman.colors[7] + '"},\\')
text.append('{"text":"' + wokkaman.f_ability + '\\n\\n"},{"text":"sF (' + str(wokkaman.sf_cool) + '): ","color":"' + wokkaman.colors[10] + '"},\\')
text.append('{"text":"' + wokkaman.sf_ability + '"}]}},{"text":"]","color":"dark_gray"}],[\\')


# add settings (new page)
text.append('{"text":"   "},{"text":"Other Settings\\n\\n","bold":true},\\')
text.append('{"text":"Ambient Particles:\\n","hover_event":{"action":"show_text","value":[{"text":"Turns Ambient Particles On/Off. Some Maps may not have Ambient Particles. This may help a little with fps problems (probably not much though).","color":"white"}]}},\\')
text.append('{"text":" [","color":"dark_gray"},{"text":"Off","color":"$(ambient)","click_event":{"action":"run_command","command":"/trigger kitselect set 100"}},{"text":"]      [","color":"dark_gray"},{"text":"On","color":"$(not_ambient)","click_event":{"action":"run_command","command":"/trigger kitselect set 101"}},{"text":"]\\n\\n","color":"dark_gray"},\\')

text.append('{"text":"Night Vision:\\n","hover_event":{"action":"show_text","value":[{"text":"Accessibility Setting controlling wether to apply night vision on no/dark/all maps. But i recommend trying turning up the brightness setting first as maps may look a lot worse with night vision.","color":"white"}]}},\\')
text.append('{"text":"[","color":"dark_gray"},{"text":"Off","color":"$(night_never)","click_event":{"action":"run_command","command":"/trigger kitselect set 120"}},\\')
text.append('{"text":"] [","color":"dark_gray"},{"text":"Dark","color":"$(night_dark)","click_event":{"action":"run_command","command":"/trigger kitselect set 121"},"hover_event":{"action":"show_text","value":[{"text":"Give Night Vision on dark maps"}]}},\\')
text.append('{"text":"] [","color":"dark_gray"},{"text":"Always","color":"$(night_always)","click_event":{"action":"run_command","command":"/trigger kitselect set 122"},"hover_event":{"action":"show_text","value":[{"text":"Give Night Vision on all maps"}]}},{"text":"]\\n\\n","color":"dark_gray"},\\')

text.append('{"text":"Actionbar Design:\\n"},\\')
text.append('{"text":"[","color":"dark_gray"},{"text":"Design 1",color:"$(design_0)","hover_event":{"action":"show_text","value":[{"text":"No cooldown: "},{"text":"Q [0.0] ","color":"dark_purple"},{"text":"F [0.0] ","color":"dark_green"},{"text":"R [0.0]","color":"gold"},{"text":"\\nOn cooldown: "},{"text":"Q [6.8] ","color":"light_purple"},{"text":"F [4.1] ","color":"green"},{"text":"R [3.2]","color":"yellow"}]},"click_event":{"action":"run_command","command":"/trigger kitselect set 110"}},{"text":"]\\n","color":"dark_gray"},\\')
text.append('{"text":"[","color":"dark_gray"},{"text":"Design 2",color:"$(design_1)","hover_event":{"action":"show_text","value":[{"text":"No cooldown: "},{"text":"Q [0.0] ","color":"dark_purple"},{"text":"F [0.0] ","color":"dark_green"},{"text":"R [0.0]","color":"gold"},{"text":"\\nOn cooldown: "},{"text":"Q [6.8] F [4.1] R [3.2]","color":"gray"}]},"click_event":{"action":"run_command","command":"/trigger kitselect set 111"}},{"text":"]\\n","color":"dark_gray"},\\')
text.append('{"text":"[","color":"dark_gray"},{"text":"Design 3",color:"$(design_2)","hover_event":{"action":"show_text","value":[{"text":"No cooldown: "},{"text":"Q [0.0] ","color":"dark_purple"},{"text":"F [0.0] ","color":"dark_green"},{"text":"R [0.0]","color":"gold"},{"text":"\\nOn cooldown: "},{"text":"Q [","color":"dark_gray"},{"text":"6.8","color":"gray"},{"text":"] F [","color":"dark_gray"},{"text":"4.1","color":"gray"},{"text":"] R [","color":"dark_gray"},{"text":"3.2","color":"gray"},{"text":"]","color":"dark_gray"}]},"click_event":{"action":"run_command","command":"/trigger kitselect set 112"}},{"text":"]\\n","color":"dark_gray"},\\')
text.append('{"text":"[","color":"dark_gray"},{"text":"Design 4","color":"$(design_3)","hover_event":{"action":"show_text","value":[{"text":"No cooldown: "},{"text":"Q [0.0] ","color":"dark_purple"},{"text":"F [0.0] ","color":"dark_green"},{"text":"R [0.0]","color":"gold"},{"text":"\\nOn cooldown: "},{"text":"Q ","color":"dark_purple"},{"text":"[","color":"dark_gray"},{"text":"6.8","color":"gray"},{"text":"]","color":"dark_gray"},{"text":" F ","color":"dark_green"},{"text":"[","color":"dark_gray"},{"text":"4.1","color":"gray"},{"text":"]","color":"dark_gray"},{"text":" R ","color":"gold"},{"text":"[","color":"dark_gray"},{"text":"3.2","color":"gray"},{"text":"]","color":"dark_gray"}]},"click_event":{"action":"run_command","command":"/trigger kitselect set 113"}},{"text":"]\\n","color":"dark_gray"},\\')
text.append('{"text":"[","color":"dark_gray"},{"text":"Design 5","color":"$(design_4)","hover_event":{"action":"show_text","value":[{"text":"No cooldown: "},{"text":"Q [0.0] ","color":"dark_purple"},{"text":"F [0.0] ","color":"dark_green"},{"text":"R [0.0]","color":"gold"},{"text":"\\nOn cooldown: "},{"text":"Q ","color":"dark_purple"},{"text":"[6.8] ","color":"gray"},{"text":"F ","color":"dark_green"},{"text":"[4.1] ","color":"gray"},{"text":"R ","color":"gold"},{"text":"[3.2]","color":"gray"}]},"click_event":{"action":"run_command","command":"/trigger kitselect set 114"}},{"text":"]","color":"dark_gray"}\\')
text.append(']]},\\')
text.append('item_name={"text":"Kit Selector/Settings","color":"yellow"}] 1')


# write file
with open("givekitselector_macro.mcfunction","w", encoding="utf-8") as f:
    result = ""
    for line in text:
        result += "\n" + line
    f.write("\n".join(text))
