#repair vaults opened before revault
summon marker ~ ~ ~ {Tags:["revault.scan_repair.center"]}

execute as @e[tag=revault.scan_repair.center] run rotate @s facing ^ ^ ^1
execute as @e[tag=revault.scan_repair.center] at @s positioned ^ ^ ^1 align xyz run tp @s ~.5 ~.5 ~.5
execute at @e[tag=revault.scan_repair.center] run summon marker ~ ~ ~ {Tags:["revault.scan_repair"]}
execute as @e[tag=revault.scan_repair.center] run rotate @s facing ^ ^ ^2
execute as @e[tag=revault.scan_repair.center] at @s positioned ^ ^ ^1 align xyz run tp @s ~.5 ~.5 ~.5
execute at @e[tag=revault.scan_repair.center] run summon marker ~ ~ ~ {Tags:["revault.scan_repair"]}
execute as @e[tag=revault.scan_repair.center] run rotate @s facing ^ ^ ^3
execute as @e[tag=revault.scan_repair.center] at @s positioned ^ ^ ^1 align xyz run tp @s ~.5 ~.5 ~.5
execute at @e[tag=revault.scan_repair.center] run summon marker ~ ~ ~ {Tags:["revault.scan_repair"]}
execute as @e[tag=revault.scan_repair.center] run rotate @s facing ^ ^ ^4
execute as @e[tag=revault.scan_repair.center] at @s positioned ^ ^ ^1 align xyz run tp @s ~.5 ~.5 ~.5
execute at @e[tag=revault.scan_repair.center] run summon marker ~ ~ ~ {Tags:["revault.scan_repair"]}
execute as @e[tag=revault.scan_repair.center] run rotate @s facing ^ ^ ^5
execute as @e[tag=revault.scan_repair.center] at @s positioned ^ ^ ^1 align xyz run tp @s ~.5 ~.5 ~.5
execute at @e[tag=revault.scan_repair.center] run summon marker ~ ~ ~ {Tags:["revault.scan_repair"]}
execute as @e[tag=revault.scan_repair.center] run rotate @s facing ^ ^ ^6
execute as @e[tag=revault.scan_repair.center] at @s positioned ^ ^ ^1 align xyz run tp @s ~.5 ~.5 ~.5
execute at @e[tag=revault.scan_repair.center] run summon marker ~ ~ ~ {Tags:["revault.scan_repair"]}

execute at @e[tag=revault.scan_repair] if block ~ ~ ~ minecraft:vault if data block ~ ~ ~ server_data.rewarded_players[0] unless entity @e[tag=revault.vault_timer,distance=0...1] run data remove block ~ ~ ~ server_data.rewarded_players[]
tp @e[tag=revault.scan_repair.center,type=!player] ~ ~-1000 ~
kill @e[tag=revault.scan_repair.center,type=!player]
tp @e[tag=revault.scan_repair,type=!player] ~ ~-1000 ~
kill @e[tag=revault.scan_repair,type=!player]
