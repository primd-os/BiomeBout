team leave @a[gamemode=survival,x=0]
execute if score playerCount bb.Variables matches 1 run title @a[x=0] times 10 60 10
execute if score playerCount bb.Variables matches 1 run title @a[x=0] title [{"selector":"@a[gamemode=survival,x=0]","color":"yellow"},{"text": " Wins!","color":"yellow"}]
team join bb.BiomeBloodshed @a[gamemode=survival,x=0]
scoreboard players set GameState bb.Variables 2

schedule function biomebloodshed:start/reset_map 15s