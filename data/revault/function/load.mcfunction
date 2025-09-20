scoreboard objectives add revault.time dummy
execute unless score installed_time revault.time matches -1.. store result score installed_time revault.time run time query gametime
execute if score installed_time revault.time matches 1.. unless score gametime revault.time matches -1.. unless score RepairMode revault.time matches 0..1 run scoreboard players set RepairMode revault.time 1
function revault:main



#if new world = repair off
#if old world with revault = repair off (world could have been created with revault) users should manually enable
#if old world without revault = repair on


#score installed_time revault.time matches 1..
#true = world isn't new

#score gametime revault.time matches -1..
#true = revault is installed