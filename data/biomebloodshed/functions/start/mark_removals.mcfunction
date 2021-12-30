tag @e[type=marker,x=0,tag=bb.IslandSpawner,tag=bb.ToRemove,limit=1] add bb.active
execute as @e[type=marker,x=0,tag=bb.active] at @s unless entity @e[type=marker,tag=bb.IslandSpawner,distance=..35,tag=!bb.ToRemove] run tag @s remove bb.ToRemove
execute as @e[type=marker,x=0,tag=bb.ToRemove,tag=bb.active] at @s run summon marker ~ ~ ~ {Tags:["bb.ToRemove","bb.active"]}
kill @e[type=marker,x=0,tag=bb.IslandSpawner,tag=bb.ToRemove,tag=bb.active]
tag @e[type=marker,x=0,tag=bb.active] add bb.IslandSpawner
execute as @e[type=marker,x=0,tag=bb.active] at @s run function biomebloodshed:start/randomize_position
tag @e[type=marker,x=0,tag=bb.active] remove bb.active
scoreboard players add iterations bb.Variables 1
execute if score iterations bb.Variables matches ..100 if entity @e[type=marker,x=0,tag=bb.IslandSpawner,tag=bb.ToRemove] run function biomebloodshed:start/mark_removals