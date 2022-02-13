scoreboard objectives add bb.clearZ dummy
scoreboard objectives add bb.Variables dummy
scoreboard objectives add bb.deaths deathCount

scoreboard players set IsReloading bb.Variables 0
execute in biomebloodshed:game run kill @e[type=!player,x=0]

team add bb.BiomeBloodshed
team modify bb.BiomeBloodshed prefix {"text": "Biome Bout | "}
team modify bb.BiomeBloodshed collisionRule never
team modify bb.BiomeBloodshed friendlyFire true
team modify bb.BiomeBloodshed seeFriendlyInvisibles false

function biomebloodshed:start/main