# gets called immediately after someone hit someone (by enchantment)
# attacker has tag attacker and is @s, victim has tag victim. Gets cleared automatically after
# say @s hit @a[tag=victim]
execute as @s[scores={kit=1,bolt=0..}] run function rauch:game/kits/bolt/q/tag
