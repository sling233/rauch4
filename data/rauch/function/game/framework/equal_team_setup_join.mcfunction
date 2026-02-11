execute store result score Global time_red run team list Red
execute store result score Global time_blue run team list Blue
execute as @s[team=!Red,team=!Blue] if score Global time_red <= Global time_blue run team join Red @s
execute as @s[team=!Red,team=!Blue] if score Global time_red > Global time_blue run team join Blue @s