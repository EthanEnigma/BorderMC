
execute store result storage bmc_backend:temp Params.price int 1 run scoreboard players get $xpPrice xpPrice
execute store result storage bmc_backend:temp Params.borderSize int 1 run scoreboard players get $borderSize borderSize
tag @s add needCompassAccess
function bmc_backend:give_compass_macro