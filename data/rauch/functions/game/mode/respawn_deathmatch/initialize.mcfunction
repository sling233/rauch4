scoreboard players set Global killNumRed 0
scoreboard players set Global killNumBlue 0
scoreboard objectives setdisplay sidebar killsDisplay

tellraw @a[tag=game] [{"text":"[Respawn Deathmatch]: First Team to reach ","color":"yellow"},{"score":{"name":"Global","objective":"rd_kills_to_win"}},{"text":" kills wins!"}]
