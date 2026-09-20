execute as @a[scores={compassTool=1..}] run tag @s add buyAccess
execute as @a[tag=buyAccess] run function bmc_backend:buy

execute if entity @a[tag=needCompassAccess] run execute store result storage bmc_backend:temp Params.price int 1 run scoreboard players get $xpPrice xpPrice
execute if entity @a[tag=needCompassAccess] run execute store result storage bmc_backend:temp Params.borderSize int 1 run scoreboard players get $borderSize borderSize
execute as @a[tag=needCompassAccess] run function bmc_backend:give_compass_macro with storage bmc_backend:temp Params
tag @a[tag=needCompassAccess] remove needCompassAccess