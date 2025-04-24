# $(page) has new page idx, $(previous_page) has previous page idx
$data modify storage rauch temp.pages[$(previous_page)] append value [\
  {"text":"\n   ⋮\n   ⤷"}\
]

$data modify storage rauch temp.pages append value [\
  [\
      {"text":"    "},{"text":"Map Selector\n","bold":true},{"text":"         Page $(page)","color":"gray"}\
  ]\
]
