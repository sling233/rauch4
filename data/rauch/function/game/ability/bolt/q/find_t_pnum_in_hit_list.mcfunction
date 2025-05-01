# as any bolt, t_pnum temp has pnum to be checked. t_found temp saves found staus

# return if already found (gets called by @a[...])
execute if score t_found temp matches 1 run return 0

function rauch:macros/data_get_to {storage:"bolt_hit",to:"macros data2"}
function rauch:macros/foreach_nested {for_path:"macros data2.list",for_function:"rauch:game/ability/bolt/q/idk",level:1}

