scoreboard players set t2lever levers 1

execute if score t1lever levers matches 1 run scoreboard objectives add T1StartTimer dummy
execute if score t1lever levers matches 1 run scoreboard players set Tick! T1StartTimer 1
execute if score t1lever levers matches 1 run scoreboard players set Second1! T1StartTimer 6