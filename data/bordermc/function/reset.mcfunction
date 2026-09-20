execute unless score $FC first_connection matches 1 run tellraw @a [{"text":"Le datapack [BorderMC] n'est pas initialisé, vous ne pouvez pas le réinitialiser ! Veuillez faire la commande ","color":"red"},{"text":"/function bordermc:load","color":"yellow"}]
execute unless score $FC first_connection matches 1 run return 0

scoreboard objectives remove xpPrice
scoreboard objectives remove temp_xp
scoreboard objectives remove maths
scoreboard objectives remove compassTool
scoreboard objectives remove borderSize

scoreboard players set $FC first_connection 0

tellraw @a {"text":"Le datapack [BorderMC] été réinitialisé avec succès ! Faite un /reload pour relancer le jeu","color":"green"}

tag @a remove initiateAccess
tag @a remove needCompassAccess
tag @a remove buyAccess
tag @a remove applyPurchaseAccess
tag @a remove removeXPAccess
tag @a remove displayTitleAccess
