data remove block ~ ~ ~ server_data.rewarded_players[0]
kill @s
execute unless entity @e[tag=revault.vault_timer,distance=0...1] if data block ~ ~ ~ server_data.rewarded_players[0] run data remove block ~ ~ ~ server_data.rewarded_players[]