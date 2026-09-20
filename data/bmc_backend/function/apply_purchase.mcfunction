# if player has not applyPurchaseAccess tag = return
execute unless entity @s[tag=applyPurchaseAccess] run tellraw @s {"text":"Vous n'avez pas l'accès à cette commande (applyPurchaseAccess) !","color":"red"}
execute unless entity @s[tag=applyPurchaseAccess] run return 0

# else
# copy current xpPrice value to NBT storage Params.amount
execute store result storage bmc_backend:temp Params.amount int 1 run scoreboard players get $xpPrice xpPrice

tag @s add removeXPAccess
# execute macro that removes xp levels
function bmc_backend:remove_xp_macro with storage bmc_backend:temp Params

# enlarge border
worldborder add 2 3s

scoreboard players add $borderSize borderSize 2

tag @s add displayTitleAccess
function bmc_backend:display_title

# increase price
scoreboard players operation $xpPrice xpPrice += $factor maths

# tag remove
tag @s remove applyPurchaseAccess