# if player doesn't have initiateAccess tag = return
execute unless entity @s[tag=initiateAccess] run tellraw @s {"text":"Vous n'avez pas l'accès à cette commande (initiateAccess) !","color":"red"}
execute unless entity @s[tag=initiateAccess] run return 0

# if firstConnection = err msg + return 
execute if score $FC first_connection matches 1 run return 0

# intro speech
tellraw @a {"text":"Bienvenue sur le datapack BorderMC","color":"green"}
tellraw @a {"text":"",}
tellraw @a {"text":"Pour agrandir la bordure, cliquez droit avec la boussole.","color":"white"}
tellraw @a {"text":"Chaque palier augmente la zone de 2 blocks.","color":"white"}
tellraw @a {"text":"Le prix (en niveau d'xp) est indiqué sur la boussole.","color":"white"}
tellraw @a {"text":"",}
tellraw @a {"text":"Bon jeu !","color":"green"}
tellraw @a {"text":"",}
tellraw @a [{"text":"Developpé par : ","color":"gold"},{"text":"LightYT","color":"yellow"}]

# set worldborder + reset xp + disable command outputs
worldborder warning distance 0
execute as @s at @s run worldborder center ~ ~
worldborder set 15
xp set @a 0 levels
xp set @a 0 points
clear @a
gamerule command_block_output false
gamerule send_command_feedback false

# create scoreboards
scoreboard objectives add xpPrice dummy
scoreboard objectives add temp_xp dummy
scoreboard objectives add maths dummy
scoreboard objectives add compassTool minecraft.used:minecraft.compass
scoreboard objectives add borderSize dummy

# store borderSize
execute store result score $borderSize borderSize run worldborder get

# set variables
scoreboard players set $factor maths 2
scoreboard players set $xpPrice xpPrice 2

# give compass tool
execute store result storage bmc_backend:temp Params.price int 1 run scoreboard players get $xpPrice xpPrice
tag @a add needCompassAccess
function bmc_backend:give_compass_macro with storage bmc_backend:temp Params

# remove tag from load + add firstConnection
tag @s remove initiateAccess
scoreboard players set $FC first_connection 1