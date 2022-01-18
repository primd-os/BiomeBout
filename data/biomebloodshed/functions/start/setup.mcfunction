scoreboard objectives add bb.clearZ dummy
scoreboard objectives add bb.Variables dummy
scoreboard objectives add bb.deaths deathCount
scoreboard players set IsReloading bb.Variables 0

team add bb.BiomeBloodshed
team modify bb.BiomeBloodshed prefix {"text": "Biome Bout | "}
team modify bb.BiomeBloodshed collisionRule always
team modify bb.BiomeBloodshed friendlyFire true