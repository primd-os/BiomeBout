tag @a[x=0] remove Parkour
tag @a[x=0] add bb.lobbyPlayers
execute in biomebloodshed:game as @a[tag=bb.lobbyPlayers] positioned 0 100 0 run function hub:main/death/spawnpoint
execute in biomebloodshed:game run tp @a[tag=bb.lobbyPlayers] 0 100 0
gamemode spectator @a[tag=bb.lobbyPlayers]
tag @a remove bb.lobbyPlayers