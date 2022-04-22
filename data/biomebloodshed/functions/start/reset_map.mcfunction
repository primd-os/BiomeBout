execute in biomebloodshed:game as @a[x=0] run function biomebloodshed:start/join_game

execute in biomebloodshed:game run forceload add -100 -100 100 100
execute in biomebloodshed:game run summon minecraft:marker 0 0 -130 {Tags: ["bb.clearMap"]}
execute in biomebloodshed:game run scoreboard players set @e[type=marker,tag=bb.clearMap,x=0] bb.clearZ -140
scoreboard players set GameState bb.Variables -2
execute in biomebloodshed:game run gamemode spectator @a[x=0]
execute in biomebloodshed:game run effect clear @a[x=0]
execute in biomebloodshed:game run effect give @a[x=0] saturation 1 10 true
execute in biomebloodshed:game run effect give @a[x=0] instant_health 1 10 true

execute in biomebloodshed:game run kill @e[x=0,type=!player,type=!marker]
execute in biomebloodshed:game run scoreboard players set @e[x=0,tag=hub.border] hub.borderChangeLength 0
execute in biomebloodshed:game run scoreboard players set @e[x=0,tag=hub.border] hub.borderSize 30000
execute in biomebloodshed:game run scoreboard players set @e[x=0,tag=hub.border] hub.borderCeiling 30000000

schedule clear biomebloodshed:start/start_game
schedule clear biomebloodshed:start/start_warn
schedule clear biomebloodshed:start/remove_elytra
schedule clear biomebloodshed:main/lower_border
scoreboard players set shrinkDelay bb.Variables -1