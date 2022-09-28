execute in biomebloodshed:game run tellraw @a[x=0] {"text":"The game will start in 15 seconds","color":"green"}
execute in biomebloodshed:game at @e[type=marker,x=0,tag=bb.IslandSpawner] run setblock ~ 0 ~ air
execute in biomebloodshed:game run kill @e[type=marker,x=0,tag=bb.IslandSpawner]
scoreboard players set countdown bb.Variables 3
schedule function biomebloodshed:start/start_warn 12s