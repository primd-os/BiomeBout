scoreboard players set modulo bb.Variables 11
execute store result score Rand bb.Variables run data get entity @s UUID[3] 
scoreboard players operation Rand bb.Variables %= modulo bb.Variables


execute if score Rand bb.Variables matches 0 run data modify storage biomebloodshed:name name set value "biomebloodshed:islands/desert_temple_island"
execute if score Rand bb.Variables matches 0 positioned ~ ~ ~ run function biomebloodshed:start/place_island

execute if score Rand bb.Variables matches 1 run data modify storage biomebloodshed:name name set value "biomebloodshed:islands/ocean_monument_island"
execute if score Rand bb.Variables matches 1 positioned ~ ~ ~ run function biomebloodshed:start/place_island

execute if score Rand bb.Variables matches 2 run data modify storage biomebloodshed:name name set value "biomebloodshed:islands/village_island_1"
execute if score Rand bb.Variables matches 2 positioned ~ ~5 ~ run function biomebloodshed:start/place_island

execute if score Rand bb.Variables matches 3 run data modify storage biomebloodshed:name name set value "biomebloodshed:islands/village_island_2"
execute if score Rand bb.Variables matches 3 positioned ~ ~10 ~ run function biomebloodshed:start/place_island

execute if score Rand bb.Variables matches 4 run data modify storage biomebloodshed:name name set value "biomebloodshed:islands/end_ship"
execute if score Rand bb.Variables matches 4 positioned ~ ~20 ~ run function biomebloodshed:start/place_island

execute if score Rand bb.Variables matches 5 run data modify storage biomebloodshed:name name set value "biomebloodshed:islands/crappyswampisland"
execute if score Rand bb.Variables matches 5 positioned ~ ~15 ~ run function biomebloodshed:start/place_island

execute if score Rand bb.Variables matches 6 run data modify storage biomebloodshed:name name set value "biomebloodshed:islands/nether_fortress_island"
execute if score Rand bb.Variables matches 6 positioned ~ ~ ~ run function biomebloodshed:start/place_island

execute if score Rand bb.Variables matches 7 run data modify storage biomebloodshed:name name set value "biomebloodshed:islands/outpost"
execute if score Rand bb.Variables matches 7 positioned ~ ~10 ~ run function biomebloodshed:start/place_island

execute if score Rand bb.Variables matches 8 run data modify storage biomebloodshed:name name set value "biomebloodshed:islands/creeper_aw_man"
execute if score Rand bb.Variables matches 8 positioned ~ ~ ~ run function biomebloodshed:start/place_island

execute if score Rand bb.Variables matches 9 run data modify storage biomebloodshed:name name set value "biomebloodshed:islands/coral_reef_island"
execute if score Rand bb.Variables matches 9 positioned ~ ~ ~ run function biomebloodshed:start/place_island

execute if score Rand bb.Variables matches 10 run data modify storage biomebloodshed:name name set value "biomebloodshed:islands/lush_cave"
execute if score Rand bb.Variables matches 10 positioned ~ ~10 ~ run function biomebloodshed:start/place_island

kill @s
execute unless entity @e[type=marker,x=0,tag=bb.IslandSpawner,limit=1] run function biomebloodshed:start/generate_end_island