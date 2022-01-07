
execute in biomebloodshed:game as @e[type=marker,x=0,tag=bb.clearMap] at @s run function biomebloodshed:start/slow_clear_map_loop
execute in biomebloodshed:game as @a[x=0] unless score @s bb.deaths matches 0 at @s run function biomebloodshed:start/on_death
scoreboard players set playerCount bb.Variables 0
execute in biomebloodshed:game as @a[x=0,gamemode=!spectator] run scoreboard players add playerCount bb.Variables 1
scoreboard players set totalPlayerCount bb.Variables 0
execute in biomebloodshed:game as @a[x=0] run scoreboard players add totalPlayerCount bb.Variables 1
execute in biomebloodshed:game if score playerCount bb.Variables matches 0 if score totalPlayerCount bb.Variables matches 1 if score IsReloading bb.Variables matches 0 run function biomebloodshed:start/reset_map
execute in biomebloodshed:game if score playerCount bb.Variables matches 0..1 if score totalPlayerCount bb.Variables matches 2.. if score IsReloading bb.Variables matches 0 run function biomebloodshed:start/reset_map
execute in biomebloodshed:game as @e[type=marker,x=0,tag=bb.IslandSpawner,limit=1] at @s run function biomebloodshed:start/generate_island
execute in biomebloodshed:game unless entity @e[type=marker,x=0,tag=bb.IslandSpawner] if score IsReloading bb.Variables matches 1 run function biomebloodshed:start/generate_end_island
execute if score shrinkDelay bb.Variables matches 0.. run scoreboard players remove shrinkDelay bb.Variables 1
execute if score shrinkDelay bb.Variables matches 0 run function biomebloodshed:start/shrink_map