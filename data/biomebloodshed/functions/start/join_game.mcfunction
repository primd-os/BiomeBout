execute in biomebloodshed:game run tp @s 0 100 0
execute in biomebloodshed:game positioned 0 100 0 run function hub:main/death/spawnpoint
scoreboard players set @s bb.deaths 0
gamemode spectator
team join bb.BiomeBloodshed @s