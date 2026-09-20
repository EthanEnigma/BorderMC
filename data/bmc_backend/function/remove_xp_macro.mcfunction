# if player doesn't have removeXPAccess tag = return
execute unless entity @s[tag=removeXPAccess] run tellraw @s {"text":"Vous n'avez pas l'accès à cette commande (removeXPAccess) !","color":"red"}
execute unless entity @s[tag=removeXPAccess] run return 0

$xp add @s -$(amount) levels

data remove storage bmc_backend:temp Params
tag @s remove removeXPAccess