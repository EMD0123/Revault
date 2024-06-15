schedule function revault:main 1s
function revault:default_gamerules
execute store result score gametime revault.time run time query gametime
execute as @e[type=minecraft:marker,tag=revault.vault_timer] at @s if score gametime revault.time >= @s revault.time run function revault:check
