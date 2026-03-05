execute if score command_limit_check global matches 1 run tellraw @a \
    {text:"Last tick exceeded the maximum command sequence length, this may lead to nasty bugs. \
    Please increase the max_command_sequence_length gamrule",color:"red"}

scoreboard players set command_limit_check global 1