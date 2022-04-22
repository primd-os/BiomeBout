execute as @e[type=marker,x=0,tag=bb.clearMap] at @s run function biomebloodshed:start/slow_clear_map_loop

execute if score GameState bb.Variables matches 1 as @a[x=0,tag=!bb.hasClosePlayer,gamemode=!spectator] at @s if entity @a[distance=0.01..15,gamemode=!spectator] run playsound block.note_block.chime player @s ~ ~ ~ 1 0.5 1
execute as @a[x=0,tag=!bb.hasClosePlayer] at @s if entity @a[distance=0.01..15,gamemode=!spectator] run tag @s add bb.hasClosePlayer
execute as @a[x=0,tag=bb.hasClosePlayer] at @s unless entity @a[distance=0.01..16,gamemode=!spectator] run tag @s remove bb.hasClosePlayer

execute as @a[scores={bb.TotemDelay=0}] run effect give @s levitation 1 127
execute as @a[scores={bb.TotemDelay=0}] run effect give @s slow_falling 10 0
scoreboard players remove @a[x=0] bb.TotemDelay 1
execute as @a[x=0] at @s as @a[y=-128,dy=72] if predicate biomebloodshed:has_totem run function biomebloodshed:main/on_totem_death

scoreboard players set playerCount bb.Variables 0
execute as @a[x=0,gamemode=!spectator] run scoreboard players add playerCount bb.Variables 1
scoreboard players set totalPlayerCount bb.Variables 0
execute as @a[x=0] run scoreboard players add totalPlayerCount bb.Variables 1
execute if score playerCount bb.Variables matches 0 if score totalPlayerCount bb.Variables matches 1 if score GameState bb.Variables matches 1 run function biomebloodshed:start/end_game
execute if score playerCount bb.Variables matches 0..1 if score totalPlayerCount bb.Variables matches 2.. if score GameState bb.Variables matches 1 run function biomebloodshed:start/end_game

execute if score totalPlayerCount bb.Variables matches 1.. if score GameState bb.Variables matches -1 run function biomebloodshed:start/dim_setup

execute as @e[type=marker,x=0,tag=bb.IslandSpawner,tag=bb.ToRemove,limit=1] at @s run function biomebloodshed:start/mark_removals

execute if score shrinkDelay bb.Variables matches 0.. run scoreboard players remove shrinkDelay bb.Variables 1
execute if score shrinkDelay bb.Variables matches 0 run function biomebloodshed:main/shrink_map