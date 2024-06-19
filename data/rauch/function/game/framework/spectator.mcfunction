execute if score @s spectate_stop matches 1 as @s[nbt={recipeBook:{isGuiOpen:0b}}] run function rauch:game/framework/spectate_stop
execute if score @s spectate_stop matches 0 as @s[nbt={recipeBook:{isGuiOpen:1b}}] run function rauch:game/framework/spectate_stop
