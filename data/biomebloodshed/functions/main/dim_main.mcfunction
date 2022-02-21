execute as @e[type=marker,x=0,tag=bb.clearMap] at @s run function biomebloodshed:start/slow_clear_map_loop
execute as @e[type=piglin,x=0] if data entity @s Brain.memories."minecraft:admiring_item"{ttl:60L} run data modify entity @s Brain.memories."minecraft:admiring_item" set value {ttl:1L}

execute as @a[x=0] unless score @s bb.deaths matches 0 at @s run function biomebloodshed:main/on_death

scoreboard players set playerCount bb.Variables 0
execute as @a[x=0,gamemode=!spectator] run scoreboard players add playerCount bb.Variables 1
scoreboard players set totalPlayerCount bb.Variables 0
execute as @a[x=0] run scoreboard players add totalPlayerCount bb.Variables 1
execute if score playerCount bb.Variables matches 0 if score totalPlayerCount bb.Variables matches 1 if score IsReloading bb.Variables matches 0 run function biomebloodshed:start/reset_map
execute if score playerCount bb.Variables matches 0..1 if score totalPlayerCount bb.Variables matches 2.. if score IsReloading bb.Variables matches 0 run function biomebloodshed:start/reset_map

execute as @e[type=marker,x=0,tag=bb.IslandSpawner,tag=bb.ToRemove,limit=1] at @s run function biomebloodshed:start/mark_removals

execute if score shrinkDelay bb.Variables matches 0.. run scoreboard players remove shrinkDelay bb.Variables 1
execute if score shrinkDelay bb.Variables matches 0 run function biomebloodshed:main/shrink_map