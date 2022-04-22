scoreboard objectives add bb.clearZ dummy
scoreboard objectives add bb.Variables dummy
scoreboard objectives add bb.IslandCounts dummy
scoreboard objectives add bb.TotemDelay dummy

scoreboard players set GameState bb.Variables -1
execute in biomebloodshed:game run kill @e[type=!player,x=0]

team add bb.BiomeBloodshed
team modify bb.BiomeBloodshed prefix {"text": "Biome Bout | "}
team modify bb.BiomeBloodshed collisionRule never
team modify bb.BiomeBloodshed friendlyFire true
team modify bb.BiomeBloodshed seeFriendlyInvisibles false
team modify bb.BiomeBloodshed nametagVisibility never

execute in biomebloodshed:lobby run forceload add -24 -24 24 24
execute in biomebloodshed:lobby run setblock 0 0 0 minecraft:structure_block[mode=load]{name:"biomebloodshed:lobby",posX:-24,posY:0,posZ:-24,mode:"LOAD"}
execute in biomebloodshed:lobby run setblock 0 1 0 minecraft:redstone_block
execute in biomebloodshed:lobby run forceload remove -24 -24 24 24

function biomebloodshed:main/main