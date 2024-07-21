# set gamestatus to 1
scoreboard objectives remove gamestatus
scoreboard objectives add gamestatus dummy
scoreboard players set fake! gamestatus 1

function nail:setup/set_gamerules

# set MapMode
# 1 = tournament, 2 = friendlies, 3 = server
scoreboard objectives remove MapMode
scoreboard objectives add MapMode dummy
scoreboard players set fake! MapMode 2

# sets Teams scoreboard
scoreboard objectives add Teams dummy
scoreboard players set @a[scores={Teams=..2}] Teams 0
scoreboard players set @a[scores={Teams=20}] Teams 21
scoreboard players set @a[scores={SwapSidesTemp=11}] Teams 11
scoreboard players set @a[scores={SwapSidesTemp=12}] Teams 12
scoreboard objectives remove SwapSidesTemp

# setup java version teams
function nail:setup/setup_teams

# clear various scoreboards that might be up during a mid-game reset
scoreboard objectives remove Enderman
scoreboard objectives remove T1StartTimer
scoreboard objectives remove T2StartTimer
scoreboard objectives remove TroughKill
scoreboard objectives remove T1RespawnRotate
scoreboard objectives remove TNTboard
forceload remove 0 226 -1 226

# add beforegame scoreboards
scoreboard objectives remove Math
scoreboard objectives add Math dummy

scoreboard objectives remove GameStart
scoreboard objectives add GameStart dummy
scoreboard objectives setdisplay sidebar GameStart


scoreboard objectives remove levers
execute if score fake! MapMode matches 1..2 run scoreboard objectives add levers dummy
scoreboard objectives remove ReadyDisplay
scoreboard objectives remove ReadyDisplay2
execute if score fake! MapMode matches 1..2 run scoreboard objectives add ReadyDisplay dummy
execute if score fake! MapMode matches 1..2 run scoreboard objectives add ReadyDisplay2 dummy

# lane protection setup
scoreboard objectives remove LaneProtection

# specific player check scoreboard
scoreboard objectives add SpecificPlayer dummy