execute unless entity @e[type=marker,tag=bb.IslandSpawner,distance=..35,tag=!bb.ToRemove] positioned 0 ~ 0 unless entity @s[distance=..20] run tag @s remove bb.ToRemove
execute as @s[tag=bb.ToRemove] run summon marker ~ ~ ~ {Tags:["bb.ToRemove","bb.IslandSpawner","bb.active"]}
kill @s[tag=bb.ToRemove]
execute as @e[type=marker,x=0,tag=bb.active] at @s run function biomebloodshed:start/randomize_position
tag @e[type=marker,x=0,tag=bb.active,limit=1] remove bb.active