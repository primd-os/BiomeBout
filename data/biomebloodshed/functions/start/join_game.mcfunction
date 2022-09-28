clear @s
gamemode adventure @s
execute in biomebloodshed:lobby run tp @s 0 9 0
execute in biomebloodshed:lobby positioned 0 9 0 run function hub:main/death/spawnpoint
team join bb.BiomeBloodshed @s
effect clear @s
effect give @s saturation 1 10 true
effect give @s instant_health 1 10 true