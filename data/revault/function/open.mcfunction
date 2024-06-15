place template revault:box ~-5 ~-5 ~-5 none none 0
execute at @e[tag=revault.scan] if block ~ ~ ~ minecraft:vault[vault_state=unlocking] if data block ~ ~ ~ server_data.rewarded_players[0] unless entity @e[tag=revault.blocker,distance=0...1] summon minecraft:marker run function revault:schedule
kill @e[tag=revault.scan]
schedule function revault:open2 1