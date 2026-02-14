$data modify entity @s transformation set value [$(x)f,0f,0f,0f,0f,0f,0f,0f,$(z)f,0f,0f,0f,0f,0f,0f,1f]
kill @s
return run data get entity @s transformation.scale[0] 1000