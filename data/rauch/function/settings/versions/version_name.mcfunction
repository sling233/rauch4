# outputs name of version in score t_version temp into storage rauch temp.version_name

execute unless score t_version temp matches 600.. run return run data modify storage rauch temp.version_name set value "Unknown (5.2.0 or earlier)"
execute if score t_version temp matches 600 run return run data modify storage rauch temp.version_name set value "6.0.0"
execute if score t_version temp matches 601 run return run data modify storage rauch temp.version_name set value "dev601"
execute if score t_version temp matches 602 run return run data modify storage rauch temp.version_name set value "dev602"
execute if score t_version temp matches 603 run return run data modify storage rauch temp.version_name set value "dev603"
execute if score t_version temp matches 604 run return run data modify storage rauch temp.version_name set value "dev604"
execute if score t_version temp matches 605 run return run data modify storage rauch temp.version_name set value "dev605"
execute if score t_version temp matches 606 run return run data modify storage rauch temp.version_name set value "dev606"
execute if score t_version temp matches 607 run return run data modify storage rauch temp.version_name set value "dev607"
execute if score t_version temp matches 608 run return run data modify storage rauch temp.version_name set value "dev608"
execute if score t_version temp matches 609 run return run data modify storage rauch temp.version_name set value "dev609"
execute if score t_version temp matches 610 run return run data modify storage rauch temp.version_name set value "dev610"
execute if score t_version temp matches 611 run return run data modify storage rauch temp.version_name set value "dev611"

data modify storage rauch temp.version_name set value "Unknown future version"