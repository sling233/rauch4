execute store result score t_red_count temp run team list Red
execute store result score t_blue_count temp run team list Blue
execute as @s[team=!Red,team=!Blue] if score t_red_count temp <= t_blue_count temp run team join Red @s
execute as @s[team=!Red,team=!Blue] if score t_red_count temp > t_blue_count temp run team join Blue @s