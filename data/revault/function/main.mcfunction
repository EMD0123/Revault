schedule function revault:main 1s
function revault:default_gamerules
execute store result score gametime revault.time run time query gametime
execute as @e[type=minecraft:marker,tag=revault.vault_timer] at @s unless score gametime revault.time < @s revault.time run function revault:check
execute if score Particles revault.time matches 1 as @e[type=minecraft:marker,tag=revault.vault_timer] at @s if block ~ ~ ~ minecraft:vault[vault_state=inactive] run function revault:particle with entity @s data