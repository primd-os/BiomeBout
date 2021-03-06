clear @a[x=0]
tp @a[x=0] 0 127.5 0
fill -6 127 -6 6 127 6 glass_pane
fill -5 127 -5 5 127 5 air

execute unless entity @e[x=0,tag=hub.border] run summon marker 0 1000 0 {Tags:["hub.border"]}
scoreboard players set @e[x=0,tag=hub.border] hub.borderChangeLength 0
scoreboard players set @e[x=0,tag=hub.border] hub.borderSize 20000
scoreboard players set @e[x=0,tag=hub.border] hub.borderCeiling 20000000
scoreboard players set GameState bb.Variables 0

gamemode adventure @a[x=0]
effect give @a[x=0] minecraft:levitation 30 255 true
effect give @a[x=0] weakness 37 0 true
effect give @a[x=0] invisibility 37 0 true
effect give @a[x=0] resistance 37 4 true
schedule function biomebloodshed:start/start_game 30s
schedule function biomebloodshed:start/cancel_generation 15s
xp set @a[x=0] 0 points
xp set @a[x=0] 0 levels

scoreboard players reset * bb.IslandCounts

summon marker 0 50 0 {Tags:["bb.IslandSpawner","bb.ToRemove"]}
summon marker 0 50 0 {Tags:["bb.IslandSpawner","bb.ToRemove"]}
summon marker 0 50 0 {Tags:["bb.IslandSpawner","bb.ToRemove"]}
summon marker 0 50 0 {Tags:["bb.IslandSpawner","bb.ToRemove"]}
summon marker 0 50 0 {Tags:["bb.IslandSpawner","bb.ToRemove"]}
summon marker 0 50 0 {Tags:["bb.IslandSpawner","bb.ToRemove"]}
summon marker 0 50 0 {Tags:["bb.IslandSpawner","bb.ToRemove"]}
summon marker 0 50 0 {Tags:["bb.IslandSpawner","bb.ToRemove"]}
summon marker 0 50 0 {Tags:["bb.IslandSpawner","bb.ToRemove"]}
summon marker 0 50 0 {Tags:["bb.IslandSpawner","bb.ToRemove"]}
summon marker 0 50 0 {Tags:["bb.IslandSpawner","bb.ToRemove"]}
summon marker 0 50 0 {Tags:["bb.IslandSpawner","bb.ToRemove"]}
summon marker 0 50 0 {Tags:["bb.IslandSpawner","bb.ToRemove"]}
summon marker 0 50 0 {Tags:["bb.IslandSpawner","bb.ToRemove"]}
summon marker 0 50 0 {Tags:["bb.IslandSpawner","bb.ToRemove"]}
summon marker 0 50 0 {Tags:["bb.IslandSpawner","bb.ToRemove"]}
summon marker 0 50 0 {Tags:["bb.IslandSpawner","bb.ToRemove"]}
summon marker 0 50 0 {Tags:["bb.IslandSpawner","bb.ToRemove"]}
summon marker 0 50 0 {Tags:["bb.IslandSpawner","bb.ToRemove"]}
summon marker 0 50 0 {Tags:["bb.IslandSpawner","bb.ToRemove"]}
summon marker 0 50 0 {Tags:["bb.IslandSpawner","bb.ToRemove"]}
summon marker 0 50 0 {Tags:["bb.IslandSpawner","bb.ToRemove"]}
summon marker 0 50 0 {Tags:["bb.IslandSpawner","bb.ToRemove"]}
summon marker 0 50 0 {Tags:["bb.IslandSpawner","bb.ToRemove"]}
summon marker 0 50 0 {Tags:["bb.IslandSpawner","bb.ToRemove"]}
summon marker 0 50 0 {Tags:["bb.IslandSpawner","bb.ToRemove"]}

execute as @e[type=marker,x=0,tag=bb.IslandSpawner] at @s run function biomebloodshed:start/randomize_position