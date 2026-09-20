# create firstconnexion scoreboard
scoreboard objectives add first_connection dummy

# if firstConnection = return
execute if score $FC first_connection matches 1 run tellraw @a [{"text":"Le jeu a déjà été lancé, si vous souhaitez réinitialiser la progression veuillez faire la commande ","color":"red"},{"text":"/function bordermc:reset","color":"yellow"}]
execute if score $FC first_connection matches 1 run return 0

tellraw @a ""
tellraw @a {"text":"[BorderMC] Lancement du jeu...","color":"green"}
tellraw @a {"text":"/function bordermc:help pour plus d'infos.","color":"gray"}
tellraw @a ""

# else give access tag + initiate the game
tag @s add initiateAccess

execute as @s run function bmc_backend:initiate