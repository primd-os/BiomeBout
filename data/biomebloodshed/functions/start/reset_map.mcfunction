team leave @a[gamemode=survival,x=0]
execute if score playerCount bb.Variables matches 1 run title @a[x=0] times 10 60 10
execute if score playerCount bb.Variables matches 1 run title @a[x=0] title [{"selector":"@a[gamemode=survival,x=0]","color":"yellow"},{"text": " Wins!","color":"yellow"}]
team join bb.BiomeBloodshed @a[gamemode=survival,x=0]

forceload add -100 -100 100 100
summon minecraft:marker 0 0 -130 {Tags: ["bb.clearMap"]}
scoreboard players set @e[type=marker,tag=bb.clearMap,x=0] bb.clearZ -140
scoreboard players set IsReloading bb.Variables 1
gamemode spectator @a[x=0]
effect clear @a[x=0]
effect give @a[x=0] saturation 1 10 true
effect give @a[x=0] instant_health 1 10 true

kill @e[x=0,type=!player,type=!marker]
scoreboard players set @e[x=0,tag=hub.border] hub.borderChangeLength 0
scoreboard players set @e[x=0,tag=hub.border] hub.borderSize 30000
scoreboard players set @e[x=0,tag=hub.border] hub.borderCeiling 30000000

schedule clear biomebloodshed:start/start_game
schedule clear biomebloodshed:start/start_warn
schedule clear biomebloodshed:start/enable_falldamage
schedule clear biomebloodshed:start/lower_border
scoreboard players set shrinkDelay bb.Variables -1