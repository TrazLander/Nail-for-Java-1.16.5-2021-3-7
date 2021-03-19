# Kill all animals and witches during game
execute as @e[type=#nail:undesirables] at @s run tp @s[y=0,dy=5000] ~ -2 ~

# spawn random enderman
scoreboard players remove Ticks0 Enderman 1
execute if score Ticks0 Enderman matches -1 run summon minecraft:enderman 2 202 94
execute if score Ticks0 Enderman matches -1 run scoreboard players set Ticks0 Enderman 3600

# leave team
execute if score fake! MapMode matches 2..3 run execute as @p[x=-1,y=219,z=435,dx=1,dy=2,dz=0,scores={Teams=1..2}] run function nail:player/leaveteam
execute if score fake! MapMode matches 2..3 run execute as @p[x=-1,y=208,z=30,dx=1,dy=2,dz=1,scores={Teams=1..2}] run function nail:player/leaveteam

execute if score fake! cobwebtimer matches 1 run function nail:ready/cobwebtimer

execute if score Tick! T2StartTimer matches -1.. run function nail:ready/t2_countdown

# trough kill (error checking? I forget what this is for, TRY TO GO OVER IT AGAIN LATER)
execute if score fake! TroughKill matches 1 run scoreboard players add @a[x=-3,y=212,z=48,dx=6,dy=2,dz=0,gamemode=!spectator] Teams 0
execute if score fake! TroughKill matches 1 run kill @a[scores={Teams=0..1},gamemode=!spectator,dz=0,dx=6,dy=2,y=212,x=-3,z=48]
execute if score fake! TroughKill matches 1..2 run scoreboard players add @a[x=-3,y=212,z=46,dx=6,dy=2,dz=0,gamemode=!spectator] Teams 0
execute if score fake! TroughKill matches 1..2 run kill @a[scores={Teams=0},gamemode=!spectator,dz=0,dx=6,dy=2,y=212,x=-3,z=46]

# lane protection
execute if score Tick! T2StartTimer matches 0.. run 

# speed to t1 on respawn
effect give @a[scores={Teams=1},dz=19,dx=7,dy=6,y=216,x=-4,z=414] saturation 1 50 true
effect give @a[scores={Teams=1},dz=19,dx=7,dy=6,y=216,x=-4,z=414] speed 25 1 true

function nail:game/timer_board

# t2 victory check
execute unless block 0 225 226 minecraft:sponge run execute unless block -1 225 226 minecraft:sponge run function nail:game/t2_victory
# t1 victory check
execute if score fake! TimerMins2 matches ..0 run execute if score fake! TimerMins1 matches ..0 run execute if score fake! TimerSecs2 matches ..0 run execute if score fake! TimerSecs1 matches ..0 run execute if score fake! TimerTicks matches ..0 run function nail:game/t1_victory


# respawn rotate - no longer needed as of 1.16.2 since they added a rotation to /spawnpoint, but will be needed if map converts to bedrock
#function nail:game/respawn_rotate