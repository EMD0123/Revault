execute if block ~ ~ ~ minecraft:vault[vault_state=unlocking] run summon area_effect_cloud ~ ~ ~ {Duration:20,Tags:["revault.blocker"]}
tag @s add revault.vault_timer
execute store result score @s revault.time run time query gametime
execute if block ~ ~ ~ minecraft:vault[ominous=false] run scoreboard players operation @s revault.time += Normal revault.time
execute if block ~ ~ ~ minecraft:vault[ominous=true] run scoreboard players operation @s revault.time += Ominous revault.time
