# temporarily save amount of damage of first entry in dmg queue, then multiply by 3, divide with 2 write back
scoreboard objectives add t_multiply_helper dummy

execute store result score Global t_multiply_helper run data get storage game_data damage_queue[0].list[0].amount
scoreboard players operation Global t_multiply_helper *= Global 3
scoreboard players operation Global t_multiply_helper /= Global 2

execute store result storage game_data damage_queue[0].list[0].amount int 1 run scoreboard players get Global t_multiply_helper

scoreboard objectives remove t_multiply_helper