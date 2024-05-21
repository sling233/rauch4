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


bolt = Kit("Bolt","Fighter")
bolt.r_ability = "You shoot a slow projectile that explodes after a short travel time or on contact with the ground, dealing 1.5❤ Damage. If your Q is active, you are able to use this to get extra hits."
bolt.q_ability = "You have 4 seconds to hit as many distinct players as possible. After the timer ends, you recieve a +20% damage buff for every unique player hit (stacks additively). You can press Q again to end the timer immediately, to get the damage boost early."
bolt.f_ability = "+40% Speed for 5 seconds."
bolt.colors = ["#4AF6F0","#247774","#30A19E","#3DCCC7","#4AF6F0","#4AF6F0","#4AF6F0","#4AF6F0"]

zarzahn = Kit("Zarzahn",["Fighter","Support"])
zarzahn.r_ability = "You shoot out a hook that pulls enemies towards you. Once they arrive, they are stunned for 0.75 seconds, however some classes can escape by dashing out as they are pulled."
zarzahn.q_ability = "Shoots a rocket that knocks players away on explosion."
zarzahn.f_ability = "When sneaking, you create a Warp Point. The next 10 seconds you have the ability to teleport to that point by pressing F again (without sneaking)."
zarzahn.colors = ["#00EE00","#3D773D","#3D993D","#29CC29","#00EE00","#00EE00","#00EE00","#00EE00"]

raucher = Kit("Raucher","Support")
raucher.r_ability = "You throw a Damage Cloud that slows enemies and increases their received damage by 40%. Hold Sneak to throw a Health Cloud that gives your teammates regeneration. You can store 3 clouds."
raucher.q_ability = "Buffs damage for a teammate by 50% for 5 seconds (look at them and press Q)."
raucher.f_ability = "Spawns 8 spiders, that attack enemies in a 30 block radius. The Spiders select targets evenly. They die in one hit or after 9 seconds."
raucher.colors = ["#FFA54C","#C7290A","#DD4D1D","#F27130","#FFA54C","#FFA54C","#FFA54C","#FFA54C"]

hacker = Kit("Hacker","Support")
hacker.r_ability = "Shoots a projectile that increases received damage by 20% for enemies for 12 seconds."
hacker.q_ability = "Throws a Hacking-Bomb. After landing, it hacks enemies in range for 10 seconds. Hacked players cannot use their abilities."
hacker.f_ability = "Reduces all ability cooldowns for teammates in range (cone-shape in front of you) by 15 seconds. Instead of having a cooldown, this ability is charge-based. You get a charge if a player debuffed (R) or hacked (Q) by you dies. You spawn with 1 charge at the start of the game, but dying doesn\\'t affect your charges."
hacker.colors = ["#FF0000","#FFBF00","#7FFF00","#00FF3F","#00FFFF","#003FFF","#7F00FF","#FF00BF"]

wark = Kit("Wark","Fighter")
wark.r_ability = "Selects an enemy up to 20 blocks away. Creates a circle around that player. If the player leaves the circle, you get 60% Q charge."
wark.q_ability = "Instead of having a cooldown, this ability is a percentage-based charge. You get 1% charge every second passively and with R. Using R, you can get overcharge (above 100% charge), that will deplete back to 100% at a moderate speed. Activating Q with 100% charge, you gain Speed III, Jump Boost II and +50% damage for 10 seconds. Alternatively, you can activate Shift-Q that will only consume 50% charge, giving you Speed III, Jumpboost II and +30% damage for 5 seconds."
wark.f_ability = "An upwards boost for mobility."
wark.colors = ["#07E6BD","#036654","#049177","#06BB9A","#07E6BD","#07E6BD","#07E6BD","#07E6BD"]

teleporter = Kit("Teleporter","Assassin")
teleporter.r_ability = "Shoots a projetile. You teleport behind the player you hit. The player gets debuffed with -40% speed and -40% attack damage for 3 seconds."
teleporter.q_ability = "You become invisible for 6 seconds. Sprinting particles are visible though."
teleporter.f_ability = "You instantly teleport to where you are looking, with a max range of 14 blocks."
teleporter.colors = ["#FF88FF","#804480","#AA5BAA","#D471D4","#FF88FF","#FF88FF","#FF88FF","#FF88FF"]

tank = Kit("Tank",["Tank","Support"])
tank.r_ability = "Damage taken passively accumulates, up to 10 hearts. When it\\'s over 4 hearts, you can use R on a teammate to heal them by the amount of damage taken."
tank.q_ability = "Buffs resistance and knockback resistance for a teammate by 40% for 6 seconds (look at them and press Q). Additionally, team members in a 4.5 block radius around the buffed player recieve 20% less damage."
tank.f_ability = "Creates a Projectile Shield that lasts 7.5 seconds."
tank.colors = ["#6E69FF","#373580","#4946AA","#5C58D4","#6E69FF","#6E69FF","#6E69FF","#6E69FF"]

pikka = Kit("Pikka","Assassin")
pikka.r_ability = "A Boost in momentum forwards. Way more useful in the air."
pikka.q_ability = "When grounded, you rise in the air. If you already are in the air you simply stall for a bit. After a short while you slam into the ground, dealing 4.8❤ and stunning everyone in range for 3 seconds."
pikka.f_ability = "A Boost upwards. In general, you have an elytra. When exceeding a certain speed while flying, your melee attacks get buffed to 4.6❤ (with a crit, that would be 6.9❤) until you touch the ground."
pikka.colors = ["#FFBF47","#DB00B6","#F20089","#EB8842","#FFBF47","#FFBF47","#FFBF47","#FFBF47"]

kits = [bolt,zarzahn,raucher,hacker,wark,teleporter,tank,pikka]

with open(r"..\..\game\mechanics\stats.mcfunction","r") as f:
    lines = f.readlines()
    for line in lines:
        for i in range(len(kits)):
            if line[:67] == "attribute @s[scores={kit=" + str(i+1) + "}] minecraft:generic.max_health base set ": kits[i].health = int(int(line[67:-1]) / 2)
            if line[:70] == "attribute @s[scores={kit=" + str(i+1) + "}] minecraft:generic.attack_damage base set ": kits[i].damage = int(line[70:-1]) / 10
            if line[:80] == "attribute @s[scores={kit=" + str(i+1) + "}] minecraft:player.entity_interaction_range base set ": kits[i].range = line[80:-1]

#region stuff
text = ["$item replace entity @s hotbar.8 with written_book[written_book_content={title:\"Kit Selector/Settings\",author:\"The Pog Man\",pages:[{raw:'\\",
        "[{\"text\":\"           \"},{\"text\":\"Kits\\\\n\\\\n\",\"bold\":true},{\"text\":\"[\",\"color\":\"dark_gray\"},\\"]

for i, kit in enumerate(kits):
    if type(kit.typ) is list:
        type_lol = ""
        for typ in kit.typ[:-1]:
            type_lol += ',{"text":"' + typ + '","color":"' + kit.colors[1] + '"},{"text":" / ","color":"gray"}'
        type_lol += ',{"text":"' + kit.typ[-1] + '\\\\n","color":"' + kit.colors[1] + '"},\\'
    else:
        type_lol = ',{"text":"' + kit.typ + '\\\\n","color":"' + kit.colors[1] + '"},\\'

    text.append('{"text":"' + kit.name + '","color":"$(' + kit.name.lower() + ')","clickEvent":{"action":"run_command","value":"/trigger kitselect set ' + str(i+1) + '"},"hoverEvent":{"action":"show_text","contents":\\')
    text.append('[{"text":"Name: ","color":"gray"},{"text":"' + kit.name + '\\\\n","color":"' + kit.colors[0] + '"},{"text":"Type: ","color":"gray"}' + type_lol)
    text.append('{"text":"Stats:  "},{"text":"❤' + str(kit.health) + '  ","color":"' + kit.colors[2] + '"},{"text":"⚔' + str(kit.damage) + '  ","color":"' + kit.colors[3] + '"},{"text":"Range: ' + str(kit.range) + '\\\\n\\\\n","color":"' + kit.colors[4] + '"},{"text":"R: ","color":"' + kit.colors[5] + '"},\\')
    text.append('{"text":"' + kit.r_ability + '\\\\n\\\\n"},{"text":"Q: ","color":"' + kit.colors[6] + '"},\\')
    text.append('{"text":"' + kit.q_ability + '\\\\n\\\\n"},{"text":"F: ","color":"' + kit.colors[7] + '"},\\')
    if i < len(kits) - 1: text.append('{"text":"' + kit.f_ability + '"}]}},{"text":"]\\\\n[","color":"dark_gray"},\\')
    if i == len(kits) - 1: text.append('{"text":"' + kit.f_ability + "\"}]}},{\"text\":\"]\",\"color\":\"dark_gray\"}]'},{raw:'\\")

text.append('[{"text":"   "},{"text":"Other Settings\\\\n\\\\n\\\\n","bold":true},\\')
text.append('{"text":"Ambient Particles:\\\\n","hoverEvent":{"action":"show_text","contents":[{"text":"Turns Ambient Particles On/Off. Some Maps may not have Ambient Particles. This can help a bit with performance problems.","color":"white"}]}},\\')
text.append('{"text":" [","color":"dark_gray"},{"text":"Off","color":"$(ambient)","clickEvent":{"action":"run_command","value":"/trigger kitselect set 100"}},{"text":"]      [","color":"dark_gray"},{"text":"On","color":"$(not_ambient)","clickEvent":{"action":"run_command","value":"/trigger kitselect set 101"}},{"text":"]\\\\n\\\\n","color":"dark_gray"}]'+"'}]},\\")
text.append("item_name='{\"text\":\"Kit Selector/Settings\",\"color\":\"yellow\"}'] 1")

with open("givekitselector_macro.mcfunction","w", encoding="utf-8") as f:
    result = ""
    for line in text:
        result += "\n" + line
    f.write("\n".join(text))
#endregion
