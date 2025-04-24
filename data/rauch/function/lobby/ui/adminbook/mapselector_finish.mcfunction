# $(last_page_idx) has index of last page
$data modify storage rauch temp.pages[$(last_page_idx)] append value [\
  {"text":"\n\n[","color":"dark_gray"},{"text":"Add Map","color":"dark_green",\
  "click_event":{"action":"run_command","command":"/function rauch:settings/edit_map/add_map"}},{"text":"] ","color":"dark_gray"}\
]
