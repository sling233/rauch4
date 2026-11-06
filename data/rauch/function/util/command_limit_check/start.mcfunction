execute if score command_limit_check global matches 1 run tellraw @a \
    {text:"Critical: Last tick exceeded the maximum command sequence length, this may lead to nasty bugs. \
    You can increase the max_command_sequence_length gamrule, but the damage might already be done. \
    If you want to be completely sure nothing broke, you have to start a fresh world.",color:"red"}

scoreboard players set command_limit_check global 1