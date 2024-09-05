scoreboard objectives add Regenerate dummy
scoreboard players remove @a Regenerate 1
scoreboard players add @a[x=-1,y=192,z=376,dx=0,dy=0,dz=0] Regenerate 2
execute as @p[x=-1,y=192,z=376,dx=0,dy=0,dz=0] run scoreboard players reset @a[scores={Regenerate=..-1}] Regenerate
tp @p[y=192,x=-1,z=312,scores={Regenerate=..-1}] -1 192 376 ~ ~
gamemode adventure @a[scores={Regenerate=..-1},dz=0,dx=0,dy=0,y=192,x=-1,z=376]

execute as @p[scores={Regenerate=18},dz=0,dx=0,dy=0,y=192,x=-1,z=376] run clone 218 37 2169 221 38 2174 -2 194 375

execute as @p[scores={Regenerate=18},dz=0,dx=0,dy=0,y=192,x=-1,z=376] run scoreboard players add @e KillAll 0
execute as @p[scores={Regenerate=18},dz=0,dx=0,dy=0,y=192,x=-1,z=376] run scoreboard players set @a KillAll 1
execute as @p[scores={Regenerate=18},dz=0,dx=0,dy=0,y=192,x=-1,z=376] run tp @e[scores={KillAll=0}] ~ ~-300 ~

execute as @p[scores={Regenerate=20},dz=0,dx=0,dy=0,y=192,x=-1,z=376] run fill -1 195 377 -1 195 377 redstone_block
execute as @p[scores={Regenerate=20},dz=0,dx=0,dy=0,y=192,x=-1,z=376] run fill -1 195 377 -1 195 377 air

execute as @p[scores={Regenerate=22},dz=0,dx=0,dy=0,y=192,x=-1,z=376] run fill 0 195 377 0 195 377 redstone_block
execute as @p[scores={Regenerate=22},dz=0,dx=0,dy=0,y=192,x=-1,z=376] run fill 0 195 377 0 195 377 air

execute as @p[scores={Regenerate=24},dz=0,dx=0,dy=0,y=192,x=-1,z=376] run fill -2 195 377 -2 195 377 redstone_block
execute as @p[scores={Regenerate=24},dz=0,dx=0,dy=0,y=192,x=-1,z=376] run fill -2 195 377 -2 195 377 air

execute as @p[scores={Regenerate=26},dz=0,dx=0,dy=0,y=192,x=-1,z=376] run fill 1 195 377 1 195 377 redstone_block
execute as @p[scores={Regenerate=26},dz=0,dx=0,dy=0,y=192,x=-1,z=376] run fill 1 195 377 1 195 377 air

execute as @p[scores={Regenerate=28},dz=0,dx=0,dy=0,y=192,x=-1,z=376] run fill -1 195 378 -1 195 378 redstone_block
execute as @p[scores={Regenerate=28},dz=0,dx=0,dy=0,y=192,x=-1,z=376] run fill -1 195 378 -1 195 378 air

execute as @p[scores={Regenerate=30},dz=0,dx=0,dy=0,y=192,x=-1,z=376] run fill 0 195 378 0 195 378 redstone_block
execute as @p[scores={Regenerate=30},dz=0,dx=0,dy=0,y=192,x=-1,z=376] run fill 0 195 378 0 195 378 air

execute as @p[scores={Regenerate=32},dz=0,dx=0,dy=0,y=192,x=-1,z=376] run fill -2 195 378 -2 195 378 redstone_block
execute as @p[scores={Regenerate=32},dz=0,dx=0,dy=0,y=192,x=-1,z=376] run fill -2 195 378 -2 195 378 air

execute as @p[scores={Regenerate=34},dz=0,dx=0,dy=0,y=192,x=-1,z=376] run fill 1 195 378 1 195 378 redstone_block
execute as @p[scores={Regenerate=34},dz=0,dx=0,dy=0,y=192,x=-1,z=376] run fill 1 195 378 1 195 378 air

execute as @p[scores={Regenerate=36..},dz=0,dx=0,dy=0,y=192,x=-1,z=376] run fill -2 194 375 1 195 380 air
execute as @p[scores={Regenerate=36..},dz=0,dx=0,dy=0,y=192,x=-1,z=376] run fill 183 64 2171 183 64 2171 stone replace redstone_block
execute as @p[scores={Regenerate=36..},dz=0,dx=0,dy=0,y=192,x=-1,z=376] run fill 183 64 2173 183 64 2173 redstone_block replace stone
execute as @p[scores={Regenerate=36..},dz=0,dx=0,dy=0,y=192,x=-1,z=376] run scoreboard objectives remove Regenerate