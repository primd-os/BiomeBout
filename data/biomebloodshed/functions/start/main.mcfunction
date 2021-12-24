
execute in biomebloodshed:game as @e[type=marker,x=0,tag=bb.clearMap] at @s run function biomebloodshed:start/slow_clear_map_loop
execute in biomebloodshed:game as @a[x=0,scores={bb.deaths=1..}] run gamemode spectator @s
execute in biomebloodshed:game as @a[x=0,scores={bb.deaths=1..}] run clear @s
execute in biomebloodshed:game as @a[x=0,scores={bb.deaths=1..}] run tellraw @a[x=0] [{"selector":"@s"}," has died"]
execute in biomebloodshed:game as @a[x=0] run scoreboard players set @s bb.deaths 0
scoreboard players set playerCount bb.Variables 0
execute in biomebloodshed:game as @a[x=0,gamemode=!spectator] run scoreboard players add playerCount bb.Variables 1
scoreboard players set totalPlayerCount bb.Variables 0
execute in biomebloodshed:game as @a[x=0] run scoreboard players add totalPlayerCount bb.Variables 1
execute in biomebloodshed:game if score playerCount bb.Variables matches 0 if score totalPlayerCount bb.Variables matches 1 if score IsReloading bb.Variables matches 0 run function biomebloodshed:start/reset_map
execute in biomebloodshed:game if score playerCount bb.Variables matches 0..1 if score totalPlayerCount bb.Variables matches 2.. if score IsReloading bb.Variables matches 0 run function biomebloodshed:start/reset_map
execute in biomebloodshed:game as @e[type=marker,x=0,tag=bb.IslandSpawner,limit=1] at @s run function biomebloodshed:start/generate_island


execute in biomebloodshed:game if entity @a[x=0] run function hub:border/display
