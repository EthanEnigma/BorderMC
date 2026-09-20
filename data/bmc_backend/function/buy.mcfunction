# check buyAccess tag
execute unless entity @s[tag=buyAccess] run tellraw @s {"text":"Vous n'avez pas l'accès à cette commande (buyAccess) !","color":"red"}
execute unless entity @s[tag=buyAccess] run return 0

#store player current xp 
execute as @s store result score @s temp_xp run xp query @s levels

# not enough xp
execute if score @s temp_xp < $xpPrice xpPrice run title @s actionbar {"text":"Vous n'avez pas assez d'XP pour agrandir la zone !","color":"red"}

# enough xp  
execute if score @s temp_xp >= $xpPrice xpPrice run tag @s add applyPurchaseAccess
execute if score @s temp_xp >= $xpPrice xpPrice run function bmc_backend:apply_purchase

# store new price
execute store result storage bmc_backend:temp Params.price int 1 run scoreboard players get $xpPrice xpPrice
execute store result storage bmc_backend:temp Params.borderSize int 1 run scoreboard players get $borderSize borderSize
tag @s add needCompassAccess

# reset compasstool scoreboard
scoreboard players set @a[scores={compassTool=1..}] compassTool 0

# remove variable
scoreboard players reset @s temp_xp

tag @s remove buyAccess