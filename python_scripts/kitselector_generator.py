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
bolt.r_ability = "A short-ranged projectile that explodes after a short travel time, dealing 1.5❤ Damage. If your Q is active this can be used to get extra hits."
bolt.q_ability = "You have 4 seconds to hit as many distinct players as possible. After the timer ends, you recieve a +20% damage buff for every unique player hit (stacks additively). You can press Q again to end the timer immediately, to get the damage boost early."
bolt.f_ability = "+40% Speed for 5 seconds."
bolt.colors = ["#4AF6F0","#247774","#30A19E","#3DCCC7","#4AF6F0","#4AF6F0","#4AF6F0","#4AF6F0"]

zarzahn = Kit("Zarzahn",["Fighter","Support"])
zarzahn.r_ability = "A hook (pulls an enemy towards you if you hit them). Stuns for 0.75 seconds on arrival."
zarzahn.q_ability = "Shoots a rocket that deals no damage and knocks players away."
zarzahn.f_ability = "Use F while crouching (Shift-F) to create a Warp Point. The next 18 seconds you have the ability to teleport to that point once by pressing F again (without crouching)."
zarzahn.colors = ["#00EE00","#3D773D","#3D993D","#29CC29","#00EE00","#00EE00","#00EE00","#00EE00"]

raucher = Kit("Raucher","Support")
raucher.r_ability = "Throws a debuff Cloud that increases received damage by 40% for all enemies inside. Use while crouching to throw a Health Cloud that heals teammates instead. Up to 3 clouds can be stored and used at will."
#raucher.r_cool = "7s per cloud"
raucher.q_ability = "Buffs damage for a teammate by 50% for 5 seconds (look at them and press Q)."
raucher.f_ability = "Spawns 8 spiders, that attack enemies in a 30 block radius. The Spiders select targets evenly. They die in one hit or after 9 seconds."
raucher.colors = ["#FFA54C","#C7290A","#DD4D1D","#F27130","#FFA54C","#FFA54C","#FFA54C","#FFA54C"]

hacker = Kit("Hacker","Support (rework planned)")
hacker.r_ability = "Projectile that hacks enemies for 6 seconds. Hacked players cannot use their abilities. Missing only causes 1/3 of the cooldown."
hacker.q_ability = "Projectile that debuffs all enemies in a ~5 block radius after landing by increasing received damage by 20% for 12 seconds."
hacker.f_ability = "Reduces all ability cooldowns for teammates in range (cone-shape in front of you) by 15 seconds. Instead of having a cooldown, this ability is charge-based. You get a charge if a player debuffed (R) or hacked (Q) by you dies."
hacker.f_cool = "-"
hacker.colors = ["#FF0000","#FFBF00","#7FFF00","#00FF3F","#00FFFF","#003FFF","#7F00FF","#FF00BF"]

wark = Kit("Wark","Fighter")
wark.r_ability = "Selects an enemy up to 20 blocks away. Creates a circle around that player. If the player leaves the circle, you get +40% Q charge."
wark.q_ability = "Instead of having a cooldown, this ability is a percentage-based charge. You get 1% charge every second passively. Using R, you can get overcharge (above 100% charge), which will deplete back to 100% at a moderate speed. Activating Q grants Speed III, Jump Boost II and +50% damage for 10 seconds."
wark.q_cool = "-"
wark.f_ability = "An upwards boost for mobility."
wark.colors = ["#07E6BD","#036654","#049177","#06BB9A","#07E6BD","#07E6BD","#07E6BD","#07E6BD"]

teleporter = Kit("Teleporter","Assassin")
teleporter.r_ability = "Projectile that teleports you behind the player you hit. Missing only causes 1/3 of the cooldown."
teleporter.q_ability = "You become invisible for 6 seconds. Sprinting particles are visible though."
teleporter.f_ability = "You instantly teleport up to 14 blocks forwards."
teleporter.colors = ["#FF88FF","#804480","#AA5BAA","#D471D4","#FF88FF","#FF88FF","#FF88FF","#FF88FF"]

tank = Kit("Tank",["Tank","Support","old kit, will get a rework someday"])
tank.r_ability = "Damage taken passively accumulates, up to 10 hearts. When it's over 4 hearts, you can use R on a teammate to heal them by the amount of accumulated damage."
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
wokkaman.r_ability = "A hook (pulls enemies towards you). Press right click again to instead fix the enemy in place and pull youself towards them, lauching them away when arriving."
wokkaman.sr_ability = "A projectile that looks for enemies closeby, automatically targeting them, and returning to searching once it hits the target. When no more players are found it explodes and stuns all players hit."
wokkaman.q_ability = "You get 4 rockets per kill (the ones rotating around you). Press Q to fire them."
wokkaman.q_cool = "-"
wokkaman.sq_ability = "Hop onto a nearby enemy, stunning them and dragging them downwards. Stops when arriving at the ground (so the higher you use it the more damage it does)."
wokkaman.f_ability = r"When on the ground, launches you in the air. This is the only case the cooldown is used for.\nWhen in the air, it makes you hover for a little bit.\nWhen hovering, it launches you downwards.\nWhen flying using the elytra, it cancels the elytra."
wokkaman.sf_ability = "Teleport behind the player you are looking at."
wokkaman.colors = ["red","red","red","red","red","red","red","red","red","red","red"]

# colors go [name,type,health,damage,range,r,q,f,sr,sq,sf]

kits = [bolt,zarzahn,raucher,hacker,wark,teleporter,tank,pikka,wokkaman]

# ------------------------- dont need to touch anything below this ------------------
def last_word(s: str) -> str:
    return s.split()[-1]

# read health damage and range stats
for kit in kits:
    kit_folder_name = kit.name.lower()
    with open("../data/rauch/function/game/kits/" + kit_folder_name + "/stats.mcfunction","r") as f:
        lines = f.readlines()
        for line in lines:
            if line.startswith("attribute @s minecraft:max_health"):
                kit.health = int(int(last_word(line)) / 2)
            if line.startswith("attribute @s minecraft:attack_damage"):
                kit.damage = int(last_word(line)) / 10
            if line.startswith("attribute @s minecraft:entity_interaction_range"):
                kit.range = last_word(line)

# read cooldowns
for kit in kits:
    kit_folder_name = kit.name.lower()
    with open("../data/rauch/function/game/kits/" + kit_folder_name + "/cooldowns.mcfunction","r") as f:
        lines = f.readlines()
        for line in lines:
            if kit.r_cool == -1:
                if line.startswith("scoreboard players set @s cool1_target"):
                    cool = int(last_word(line)) / 20
                    if cool.is_integer(): cool = int(cool)
                    kit.r_cool = f"{cool}s"
            if kit.q_cool == -1:
                if line.startswith("scoreboard players set @s cool2_target"):
                    cool = int(last_word(line)) / 20
                    if cool.is_integer(): cool = int(cool)
                    kit.q_cool = f"{cool}s"
            if kit.f_cool == -1:
                if line.startswith("scoreboard players set @s cool3_target"):
                    cool = int(last_word(line)) / 20
                    if cool.is_integer(): cool = int(cool)
                    kit.f_cool = f"{cool}s"

            # only go on if kit is wokkaman (more abilities)
            if type(kit) is Kit: continue

            if kit.sr_cool == -1:
                if line.startswith("scoreboard players set @s cool4_target"):
                    cool = int(last_word(line)) / 20
                    if cool.is_integer(): cool = int(cool)
                    kit.sr_cool = f"{cool}s"
            if kit.sq_cool == -1:
                if line.startswith("scoreboard players set @s cool5_target"):
                    cool = int(last_word(line)) / 20
                    if cool.is_integer(): cool = int(cool)
                    kit.sq_cool = f"{cool}s"
            if kit.sf_cool == -1:
                if line.startswith("scoreboard players set @s cool6_target"):
                    cool = int(last_word(line)) / 20
                    if cool.is_integer(): cool = int(cool)
                    kit.sf_cool = f"{cool}s"

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
text.append('{"text":"\\n\\n[","color":"dark_gray"},{"text":"' + wokkaman.name + '","color":"$(wokkaman)",\\')
text.append('"click_event":{"action":"run_command","command":"/trigger kitselect set ' + str(len(kits)) + '"},\\')
text.append('"hover_event":{"action":"show_text","value":\\')
text.append('[{text:"",color:"gray"},{"text":"This kit automatically gets assigned to players in team red in the Wokkaman game mode. You can\'t select it, unlesss an admin enables it.\\n\\n","color":"#C87878"},\\')
text.append('{"text":"Name: ","color":"gray"},{"text":"' + wokkaman.name + '\\n","color":"' + wokkaman.colors[0] + '"},{"text":"Type: ","color":"gray"}' + type_lol)
text.append('{"text":"Stats:  "},{"text":"❤' + str(wokkaman.health) + '  ","color":"' + wokkaman.colors[2] + '"},{"text":"⚔' + str(wokkaman.damage) + '  ","color":"' + wokkaman.colors[3] + '"},{"text":"Range: ' + str(wokkaman.range) + '\\n\\n","color":"' + wokkaman.colors[4] + '"},{"text":"R (' + str(wokkaman.r_cool) + '): ","color":"' + wokkaman.colors[5] + '"},\\')
text.append('{"text":"' + wokkaman.r_ability + '\\n\\n"},{"text":"Shift-R (' + str(wokkaman.sr_cool) + '): ","color":"' + wokkaman.colors[8] + '"},\\')
text.append('{"text":"' + wokkaman.sr_ability + '\\n\\n"},{"text":"Q (' + str(wokkaman.q_cool) + '): ","color":"' + wokkaman.colors[6] + '"},\\')
text.append('{"text":"' + wokkaman.q_ability + '\\n\\n"},{"text":"Shift-Q (' + str(wokkaman.sq_cool) + '): ","color":"' + wokkaman.colors[9] + '"},\\')
text.append('{"text":"' + wokkaman.sq_ability + '\\n\\n"},{"text":"F (' + str(wokkaman.f_cool) + '): ","color":"' + wokkaman.colors[7] + '"},\\')
text.append('{"text":"' + wokkaman.f_ability + '\\n\\n"},{"text":"Shift-F (' + str(wokkaman.sf_cool) + '): ","color":"' + wokkaman.colors[10] + '"},\\')
text.append('{"text":"' + wokkaman.sf_ability + '"}]}},{"text":"]","color":"dark_gray"}],[\\')


# add settings (new page)
text.append('{"text":"   "},{"text":"Other Settings\\n\\n","bold":true},\\')
text.append('{"text":"Ambient Particles:\\n","hover_event":{"action":"show_text","value":[{"text":"Turns Ambient Particles On/Off in case you don\'t like them. Some Maps may not have Ambient Particles.","color":"white"}]}},\\')
text.append('{"text":" [","color":"dark_gray"},{"text":"Off","color":"$(ambient)","click_event":{"action":"run_command","command":"/trigger kitselect set 100"}},{"text":"]      [","color":"dark_gray"},{"text":"On","color":"$(not_ambient)","click_event":{"action":"run_command","command":"/trigger kitselect set 101"}},{"text":"]\\n\\n","color":"dark_gray"},\\')

text.append('{"text":"Night Vision:\\n","hover_event":{"action":"show_text","value":[{"text":"Accessibility Setting controlling wether to apply night vision on no/dark/all maps. We recommend trying turning up the brightness setting first as maps may look a lot worse with night vision.","color":"white"}]}},\\')
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
with open("../data/rauch/function/lobby/ui/givekitselector_macro.mcfunction","w", encoding="utf-8") as f:
    result = ""
    for line in text:
        result += "\n" + line
    f.write("\n".join(text))

##############
# dialoges
for kit in kits:
    with open("../data/rauch/dialog/kits/" + kit.name.lower() + ".json","w", encoding="utf-8") as f:
        f.write("""
{
  "type": "minecraft:notice",
  "title": "Ability Reminder",
  "can_close_with_escape": true,
  "pause": false,
  "action": {
    "label": "Close"
  },
  "body": {
    "type": "minecraft:plain_message",
    "width": 300,
    "contents": [
""")
        f.write('       {"text":"Name: ","color":"white"},{"text":"' + kit.name + '\\n","color":"' + kit.colors[0] + '"},\n')
        if type(kit.typ) is list:
            type_lol = ""
            for typ in kit.typ[:-1]:
                type_lol += ',{"text":"' + typ + '","color":"' + kit.colors[1] + '"},{"text":" / ","color":"gray"}'
            type_lol += ',{"text":"' + kit.typ[-1] + '\\n","color":"' + kit.colors[1] + '"},'
        else:
            type_lol = ',{"text":"' + kit.typ + '\\n","color":"' + kit.colors[1] + '"},\n'
        f.write('       {"text":"Type: "}' + type_lol)
        f.write('       {"text":"Stats:  "},{"text":"❤' + str(kit.health) + '  ","color":"' + kit.colors[2] + '"},{"text":"⚔' + str(kit.damage) + '  ","color":"' + kit.colors[3] + '"},{"text":"Range: ' + str(kit.range) + '\\n\\n","color":"' + kit.colors[4] + '"},\n')
        f.write('       {"text":"R (' + str(kit.r_cool) + '): ","color":"' + kit.colors[5] + '"},\n')
        f.write('       {"text":"' + kit.r_ability + '\\n\\n"},\n')
        f.write('       {"text":"Q (' + str(kit.q_cool) + '): ","color":"' + kit.colors[6] + '"},\n')
        f.write('       {"text":"' + kit.q_ability + '\\n\\n"},\n')
        f.write('       {"text":"F (' + str(kit.f_cool) + '): ","color":"' + kit.colors[7] + '"},\n')
        f.write('       {"text":"' + kit.f_ability + '\\n\\n"}')
        if type(kit) is WokkamanKit:
            f.write(",\n")
            f.write('       {"text":"sR (' + str(kit.sr_cool) + '): ","color":"' + kit.colors[8] + '"},\n')
            f.write('       {"text":"' + kit.sr_ability + '\\n\\n"},\n')
            f.write('       {"text":"sQ (' + str(kit.sq_cool) + '): ","color":"' + kit.colors[9] + '"},\n')
            f.write('       {"text":"' + kit.sq_ability + '\\n\\n"},\n')
            f.write('       {"text":"sF (' + str(kit.sf_cool) + '): ","color":"' + kit.colors[10] + '"},\n')
            f.write('       {"text":"' + kit.sf_ability + '\\n\\n"}')

        f.write("""
    ]
  }
}
""")
    