scoreboard objectives remove T2StartTimer

# confirm trough t2
scoreboard players set @a[x=-3,y=212,z=46,dx=5,dy=2,dz=0,gamemode=!spectator] Teams 2

# gamemode effects clears spawnpoint
clear @a[scores={Teams=2}]
effect clear @a[scores={Teams=2}]
xp set @a[scores={Teams=2}] 0 levels
xp set @a[scores={Teams=2}] 0 points
effect give @a[scores={Teams=2}] minecraft:instant_health 2 10 true
effect give @a[scores={Teams=2}] minecraft:resistance 2 5 true
effect give @a[scores={Teams=2}] minecraft:saturation 1 255 true
gamemode survival @a[scores={Teams=2}]

# spawnpoint
spawnpoint @a[scores={Teams=2}] 0 208 34

# piston sound at floor
playsound block.piston.contract master @a 0.0 211 46 .9 .7

# floor remove
fill -3 211 46 2 211 46 air

# wither sound to all on invader release
execute as @a run playsound entity.wither.spawn master @p ~ ~ ~ 2 .9

# update trough kill
scoreboard players set fake! TroughKill 2

# queue system stuff
execute as @a[scores={Teams=2}] run scoreboard players operation @s QueueSet = @s Queue