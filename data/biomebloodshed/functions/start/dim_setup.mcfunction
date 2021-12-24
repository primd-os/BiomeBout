clear @a[x=0]
tp @a[x=0] 0 128 0
fill -6 127 -6 6 127 6 nether_brick_fence
fill -5 127 -5 5 127 5 glass

execute unless entity @e[x=0,tag=hub.border] run summon marker 0 1000 0 {Tags:["hub.border"]}
scoreboard players set @e[x=0,tag=hub.border] hub.borderChangeLength 0
scoreboard players set @e[x=0,tag=hub.border] hub.borderSize 20000

gamemode adventure @a[x=0]
effect give @a[x=0] weakness 15 0 true
effect give @a[x=0] jump_boost 10 251 true
effect give @a[x=0] invisibility 15 0 true
schedule function biomebloodshed:start/start_game 10s
xp set @a[x=0] 0 points
xp set @a[x=0] 0 levels

summon marker 0 50 0 {Tags:["bb.IslandSpawner"]}
summon marker 0 50 0 {Tags:["bb.IslandSpawner"]}
summon marker 0 50 0 {Tags:["bb.IslandSpawner"]}
summon marker 0 50 0 {Tags:["bb.IslandSpawner"]}
summon marker 0 50 0 {Tags:["bb.IslandSpawner"]}
summon marker 0 50 0 {Tags:["bb.IslandSpawner"]}
summon marker 0 50 0 {Tags:["bb.IslandSpawner"]}
summon marker 0 50 0 {Tags:["bb.IslandSpawner"]}
summon marker 0 50 0 {Tags:["bb.IslandSpawner"]}
summon marker 0 50 0 {Tags:["bb.IslandSpawner"]}
summon marker 0 50 0 {Tags:["bb.IslandSpawner"]}
summon marker 0 50 0 {Tags:["bb.IslandSpawner"]}
summon marker 0 50 0 {Tags:["bb.IslandSpawner"]}
summon marker 0 50 0 {Tags:["bb.IslandSpawner"]}
summon marker 0 50 0 {Tags:["bb.IslandSpawner"]}
summon marker 0 50 0 {Tags:["bb.IslandSpawner"]}
summon marker 0 50 0 {Tags:["bb.IslandSpawner"]}
summon marker 0 50 0 {Tags:["bb.IslandSpawner"]}
summon marker 0 50 0 {Tags:["bb.IslandSpawner"]}
summon marker 0 50 0 {Tags:["bb.IslandSpawner"]}
summon marker 0 50 0 {Tags:["bb.IslandSpawner"]}
summon marker 0 50 0 {Tags:["bb.IslandSpawner"]}
summon marker 0 50 0 {Tags:["bb.IslandSpawner"]}
summon marker 0 50 0 {Tags:["bb.IslandSpawner"]}
execute as @e[type=marker,x=0,tag=bb.IslandSpawner] at @s run function biomebloodshed:start/randomize_position

execute as @e[type=marker,x=0,tag=bb.IslandSpawner] at @s as @e[type=marker,tag=bb.IslandSpawner,distance=0.01..35] run tag @s[dx=100,y=0,dy=100,z=-100,dz=200] add bb.ToRemove
execute as @e[type=marker,x=0,tag=bb.ToRemove] at @s run summon marker ~ ~ ~ {Tags:["bb.ToRemove"]}
kill @e[type=marker,x=0,tag=bb.IslandSpawner,tag=bb.ToRemove]
tag @e[type=marker,tag=bb.ToRemove] add bb.IslandSpawner
execute as @e[type=marker,x=0,tag=bb.IslandSpawner,tag=bb.ToRemove] at @s run function biomebloodshed:start/randomize_position

execute as @e[type=marker,x=0,tag=bb.IslandSpawner,tag=bb.ToRemove] at @s unless entity @e[type=marker,tag=bb.IslandSpawner,distance=0.01..35] run tag @s remove bb.ToRemove
execute as @e[type=marker,x=0,tag=bb.ToRemove] at @s run summon marker ~ ~ ~ {Tags:["bb.ToRemove"]}
kill @e[type=marker,x=0,tag=bb.IslandSpawner,tag=bb.ToRemove]
tag @e[type=marker,tag=bb.ToRemove] add bb.IslandSpawner
execute as @e[type=marker,x=0,tag=bb.IslandSpawner,tag=bb.ToRemove] at @s run function biomebloodshed:start/randomize_position

execute as @e[type=marker,x=0,tag=bb.IslandSpawner,tag=bb.ToRemove] at @s unless entity @e[type=marker,tag=bb.IslandSpawner,distance=0.01..35] run tag @s remove bb.ToRemove
execute as @e[type=marker,x=0,tag=bb.ToRemove] at @s run summon marker ~ ~ ~ {Tags:["bb.ToRemove"]}
kill @e[type=marker,x=0,tag=bb.IslandSpawner,tag=bb.ToRemove]
tag @e[type=marker,tag=bb.ToRemove] add bb.IslandSpawner
execute as @e[type=marker,x=0,tag=bb.IslandSpawner,tag=bb.ToRemove] at @s run function biomebloodshed:start/randomize_position

execute as @e[type=marker,x=0,tag=bb.IslandSpawner,tag=bb.ToRemove] at @s unless entity @e[type=marker,tag=bb.IslandSpawner,distance=0.01..35] run tag @s remove bb.ToRemove
execute as @e[type=marker,x=0,tag=bb.ToRemove] at @s run summon marker ~ ~ ~ {Tags:["bb.ToRemove"]}
kill @e[type=marker,x=0,tag=bb.IslandSpawner,tag=bb.ToRemove]
tag @e[type=marker,tag=bb.ToRemove] add bb.IslandSpawner
execute as @e[type=marker,x=0,tag=bb.IslandSpawner,tag=bb.ToRemove] at @s run function biomebloodshed:start/randomize_position

execute as @e[type=marker,x=0,tag=bb.IslandSpawner,tag=bb.ToRemove] at @s unless entity @e[type=marker,tag=bb.IslandSpawner,distance=0.01..35] run tag @s remove bb.ToRemove
execute as @e[type=marker,x=0,tag=bb.ToRemove] at @s run summon marker ~ ~ ~ {Tags:["bb.ToRemove"]}
kill @e[type=marker,x=0,tag=bb.IslandSpawner,tag=bb.ToRemove]
tag @e[type=marker,tag=bb.ToRemove] add bb.IslandSpawner
execute as @e[type=marker,x=0,tag=bb.IslandSpawner,tag=bb.ToRemove] at @s run function biomebloodshed:start/randomize_position

execute as @e[type=marker,x=0,tag=bb.IslandSpawner,tag=bb.ToRemove] at @s unless entity @e[type=marker,tag=bb.IslandSpawner,distance=0.01..35] run tag @s remove bb.ToRemove
execute as @e[type=marker,x=0,tag=bb.ToRemove] at @s run summon marker ~ ~ ~ {Tags:["bb.ToRemove"]}
kill @e[type=marker,x=0,tag=bb.IslandSpawner,tag=bb.ToRemove]
tag @e[type=marker,tag=bb.ToRemove] add bb.IslandSpawner
execute as @e[type=marker,x=0,tag=bb.IslandSpawner,tag=bb.ToRemove] at @s run function biomebloodshed:start/randomize_position

execute as @e[type=marker,x=0,tag=bb.IslandSpawner,tag=bb.ToRemove] at @s unless entity @e[type=marker,tag=bb.IslandSpawner,distance=0.01..35] run tag @s remove bb.ToRemove
execute as @e[type=marker,x=0,tag=bb.ToRemove] at @s run summon marker ~ ~ ~ {Tags:["bb.ToRemove"]}
kill @e[type=marker,x=0,tag=bb.IslandSpawner,tag=bb.ToRemove]
tag @e[type=marker,tag=bb.ToRemove] add bb.IslandSpawner
execute as @e[type=marker,x=0,tag=bb.IslandSpawner,tag=bb.ToRemove] at @s run function biomebloodshed:start/randomize_position

execute as @e[type=marker,x=0,tag=bb.IslandSpawner,tag=bb.ToRemove] at @s unless entity @e[type=marker,tag=bb.IslandSpawner,distance=0.01..35] run tag @s remove bb.ToRemove
execute as @e[type=marker,x=0,tag=bb.ToRemove] at @s run summon marker ~ ~ ~ {Tags:["bb.ToRemove"]}
kill @e[type=marker,x=0,tag=bb.IslandSpawner,tag=bb.ToRemove]
tag @e[type=marker,tag=bb.ToRemove] add bb.IslandSpawner
kill @e[type=marker,x=0,tag=bb.IslandSpawner,tag=bb.ToRemove]

execute as @e[type=marker,x=0,tag=bb.IslandSpawner] store result entity @s Pos[1] double 1 run data get entity @s Pos[1] 0.5
scoreboard players set IsReloading bb.Variables 0