execute as @e[type=marker,x=0,tag=bb.clearMap] at @s run function biomebloodshed:start/slow_clear_map_loop

execute as @a[x=0,tag=!bb.hasClosePlayer] at @s if entity @a[distance=0.01..10] run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 2 1
execute as @a[x=0,tag=!bb.hasClosePlayer] at @s if entity @a[distance=0.01..10] run tag @s add bb.hasClosePlayer
execute as @a[x=0,tag=bb.hasClosePlayer] at @s unless entity @a[distance=0.01..10] run tag @s remove bb.hasClosePlayer

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