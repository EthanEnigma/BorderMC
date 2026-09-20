# if player doesn't have needCompassAccess tag = return
execute unless entity @s[tag=needCompassAccess] run tellraw @s {"text":"Vous n'avez pas l'accès à cette commande (needCompassAccess) !","color":"red"}
execute unless entity @s[tag=needCompassAccess] run return 0

clear @s minecraft:compass[custom_data={compass_tool:1b}] 1
$item replace entity @s weapon.mainhand with minecraft:compass[custom_data={compass_tool:1b},max_stack_size=1,item_name=[{"text":"Agrandir la ","color":"yellow"},{"text":"Zone ","color":"gold","bold":true},{"text":"($(price) lvl)","color":"green"}],lore=[{"text":"Prix : §6$(price) lvl","color":"white"},{"text":"Taille actuelle : §6$(borderSize)x$(borderSize)","color":"white"}],rarity="epic",consumable={consume_seconds:0.05f,sound:entity.experience_orb.pickup,has_consume_particles:0b}]

data remove storage bmc_backend:temp Params
tag @a remove needCompassAccess