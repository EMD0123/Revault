execute if block ~ ~ ~ minecraft:vault[vault_state=unlocking] run summon area_effect_cloud ~ ~ ~ {Duration:20,Tags:["revault.blocker"]}
data modify entity @s data.Owner set from entity @p[advancements={revault:open=true}] UUID
#scoreboard players set debug revault.time 1
execute if score debug revault.time matches 1 run say vault
execute if score debug revault.time matches 1 run particle lava
tag @s add revault.vault_timer
execute store result score @s revault.time run time query gametime
execute if block ~ ~ ~ minecraft:vault[ominous=false] run scoreboard players operation @s revault.time += Normal revault.time
execute if block ~ ~ ~ minecraft:vault[ominous=true] run scoreboard players operation @s revault.time += Ominous revault.time
execute if score Normal revault.time matches -1 if block ~ ~ ~ minecraft:vault[ominous=false] run kill @s
execute if score Ominous revault.time matches -1 if block ~ ~ ~ minecraft:vault[ominous=true] run kill @s