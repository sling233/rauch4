# $(index) has current index in storage map_data maps. $(page) has page

$data modify storage rauch temp.pages[$(page)] append value [{"text":"\n[","color":"dark_gray"},\
{"text":"⬤","color":"dark_green","click_event":{"action":"run_command","command":"/function rauch:lobby/select_map {\"index\":$(index)}"},\
"hover_event":{"action":"show_text","value":[{"text":"Set"}]}},\
{"text":"⬤","color":"yellow","hover_event":{"action":"show_text","value":[{"text":"Edit"}]},\
"click_event":{"action":"run_command","command":"/function rauch:settings/edit_map/edit_initialize_check {\"map_id\":$(index)}"}},\
{"text":"⬤","color":"red","hover_event":{"action":"show_text","value":[{"text":"Remove"}]},\
"click_event":{"action":"run_command","command":"/function rauch:settings/edit_map/remove_map {\"map_id\":$(index)}"}},\
{"text":"] ","color":"dark_gray"},{"storage":"map_data","nbt":"maps[$(index)].name","color":"$(is_active)"}]
