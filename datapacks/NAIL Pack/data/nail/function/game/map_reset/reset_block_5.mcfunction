scoreboard objectives add Regenerate dummy
scoreboard players remove @a Regenerate 1
scoreboard players add @a[x=-1,y=192,z=312,dx=0,dy=0,dz=0] Regenerate 2
execute as @p[x=-1,y=192,z=312,dx=0,dy=0,dz=0] run scoreboard players reset @a[scores={Regenerate=..-1}] Regenerate
tp @p[y=192,x=-1,z=248,scores={Regenerate=..-1}] -1 192 312 ~ ~
gamemode adventure @a[scores={Regenerate=..-1},dz=0,dx=0,dy=0,y=192,x=-1,z=312]

execute as @p[scores={Regenerate=18},dz=0,dx=0,dy=0,y=192,x=-1,z=312] run clone 218 30 2169 221 31 2174 -2 194 311

execute as @p[scores={Regenerate=18},dz=0,dx=0,dy=0,y=192,x=-1,z=312] run scoreboard players add @e KillAll 0
execute as @p[scores={Regenerate=18},dz=0,dx=0,dy=0,y=192,x=-1,z=312] run scoreboard players set @a KillAll 1
execute as @p[scores={Regenerate=18},dz=0,dx=0,dy=0,y=192,x=-1,z=312] run tp @e[scores={KillAll=0}] ~ ~-300 ~

execute as @p[scores={Regenerate=20},dz=0,dx=0,dy=0,y=192,x=-1,z=312] run fill -1 195 313 -1 195 313 redstone_block
execute as @p[scores={Regenerate=20},dz=0,dx=0,dy=0,y=192,x=-1,z=312] run fill -1 195 313 -1 195 313 air

execute as @p[scores={Regenerate=22},dz=0,dx=0,dy=0,y=192,x=-1,z=312] run fill 0 195 313 0 195 313 redstone_block
execute as @p[scores={Regenerate=22},dz=0,dx=0,dy=0,y=192,x=-1,z=312] run fill 0 195 313 0 195 313 air

execute as @p[scores={Regenerate=24},dz=0,dx=0,dy=0,y=192,x=-1,z=312] run fill -2 195 313 -2 195 313 redstone_block
execute as @p[scores={Regenerate=24},dz=0,dx=0,dy=0,y=192,x=-1,z=312] run fill -2 195 313 -2 195 313 air

execute as @p[scores={Regenerate=26},dz=0,dx=0,dy=0,y=192,x=-1,z=312] run fill 1 195 313 1 195 313 redstone_block
execute as @p[scores={Regenerate=26},dz=0,dx=0,dy=0,y=192,x=-1,z=312] run fill 1 195 313 1 195 313 air

execute as @p[scores={Regenerate=28},dz=0,dx=0,dy=0,y=192,x=-1,z=312] run fill -1 195 314 -1 195 314 redstone_block
execute as @p[scores={Regenerate=28},dz=0,dx=0,dy=0,y=192,x=-1,z=312] run fill -1 195 314 -1 195 314 air

execute as @p[scores={Regenerate=30},dz=0,dx=0,dy=0,y=192,x=-1,z=312] run fill 0 195 314 0 195 314 redstone_block
execute as @p[scores={Regenerate=30},dz=0,dx=0,dy=0,y=192,x=-1,z=312] run fill 0 195 314 0 195 314 air

execute as @p[scores={Regenerate=32},dz=0,dx=0,dy=0,y=192,x=-1,z=312] run fill -2 195 314 -2 195 314 redstone_block
execute as @p[scores={Regenerate=32},dz=0,dx=0,dy=0,y=192,x=-1,z=312] run fill -2 195 314 -2 195 314 air

execute as @p[scores={Regenerate=34},dz=0,dx=0,dy=0,y=192,x=-1,z=312] run fill 1 195 314 1 195 314 redstone_block
execute as @p[scores={Regenerate=34},dz=0,dx=0,dy=0,y=192,x=-1,z=312] run fill 1 195 314 1 195 314 air

execute as @p[scores={Regenerate=36..},dz=0,dx=0,dy=0,y=192,x=-1,z=312] run fill -2 194 311 1 195 316 air
execute as @p[scores={Regenerate=36..},dz=0,dx=0,dy=0,y=192,x=-1,z=312] run fill 183 64 2169 183 64 2169 stone replace redstone_block
execute as @p[scores={Regenerate=36..},dz=0,dx=0,dy=0,y=192,x=-1,z=312] run fill 183 64 2171 183 64 2171 redstone_block replace stone
execute as @p[scores={Regenerate=36..},dz=0,dx=0,dy=0,y=192,x=-1,z=312] run scoreboard objectives remove Regenerate