# if player has not displayTitleAccess tag = return
execute unless entity @s[tag=displayTitleAccess] run tellraw @s {"text":"Vous n'avez pas l'accès à cette commande (displayTitleAccess) !","color":"red"}
execute unless entity @s[tag=displayTitleAccess] run return 0

title @s times 10t 50t 10t
title @a subtitle [{"text":"Taille : ","color":"gold"},{"score":{"name":"$borderSize","objective":"borderSize"},"color":"yellow"},{"text":" x ","color":"white"},{"score":{"name":"$borderSize","objective":"borderSize"},"color":"yellow"}]
title @a title [{"text":"La zone s'agrandit","color":"green"}]
playsound minecraft:ui.toast.challenge_complete player @a ~ ~ ~ 0.3 1.25

tag @s remove displayTitleAccess