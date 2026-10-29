execute as @s[tag=red] run summon minecraft:marker ~ ~ ~ {Tags:["red","r_h","cloud","projectile","remove_on_game_end"]}
execute as @s[tag=blu] run summon minecraft:marker ~ ~ ~ {Tags:["blu","r_h","cloud","projectile","remove_on_game_end"]}
execute as @s[tag=red] run summon minecraft:marker ~ ~2 ~ {Tags:["red","r_h","indicator","remove_on_game_end"]}
execute as @s[tag=blu] run summon minecraft:marker ~ ~2 ~ {Tags:["blu","r_h","indicator","remove_on_game_end"]}
playsound minecraft:entity.puffer_fish.blow_out master @a ~ ~ ~ 1
kill @s
