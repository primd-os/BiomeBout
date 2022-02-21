setblock ~ 0 ~ command_block
data modify block ~ 0 ~ Command set from storage biomebloodshed:name command
data modify block ~ 0 ~ auto set value 1b

setblock ~ ~ ~ structure_block{mode:"LOAD"}
data modify block ~ ~ ~ name set from storage biomebloodshed:name name

setblock ~ 127 ~ structure_block{mode:"LOAD",posY:1}
data modify block ~ 127 ~ name set from storage biomebloodshed:name name
setblock ~ 126 ~ redstone_block

scoreboard players set modulo bb.Variables 4
execute store result score Rand bb.Variables run data get entity @s UUID[0] 
scoreboard players operation Rand bb.Variables %= modulo bb.Variables
execute if score Rand bb.Variables matches 0 run data modify block ~ ~ ~ rotation set value "NONE"
execute if score Rand bb.Variables matches 1 run data modify block ~ ~ ~ rotation set value "CLOCKWISE_90"
execute if score Rand bb.Variables matches 2 run data modify block ~ ~ ~ rotation set value "CLOCKWISE_180"
execute if score Rand bb.Variables matches 3 run data modify block ~ ~ ~ rotation set value "COUNTERCLOCKWISE_90"

execute if score Rand bb.Variables matches 0 store result block ~ ~ ~ posX int -1 run data get block ~ 127 ~ sizeX 0.5
execute if score Rand bb.Variables matches 1 store result block ~ ~ ~ posX int 1 run data get block ~ 127 ~ sizeX 0.5
execute if score Rand bb.Variables matches 2 store result block ~ ~ ~ posX int 1 run data get block ~ 127 ~ sizeX 0.5
execute if score Rand bb.Variables matches 3 store result block ~ ~ ~ posX int -1 run data get block ~ 127 ~ sizeX 0.5

execute store result block ~ ~ ~ posY int -1 run data get block ~ 127 ~ sizeY 0.5

execute if score Rand bb.Variables matches 0 store result block ~ ~ ~ posZ int -1 run data get block ~ 127 ~ sizeZ 0.5
execute if score Rand bb.Variables matches 1 store result block ~ ~ ~ posZ int -1 run data get block ~ 127 ~ sizeZ 0.5
execute if score Rand bb.Variables matches 2 store result block ~ ~ ~ posZ int 1 run data get block ~ 127 ~ sizeZ 0.5
execute if score Rand bb.Variables matches 3 store result block ~ ~ ~ posZ int 1 run data get block ~ 127 ~ sizeZ 0.5

scoreboard players set modulo bb.Variables 2
execute store result score Rand bb.Variables run data get entity @s UUID[1] 
scoreboard players operation Rand bb.Variables %= modulo bb.Variables
execute if score Rand bb.Variables matches 0 run data modify block ~ ~ ~ mirror set value "NONE"
execute if score Rand bb.Variables matches 1 run data modify block ~ ~ ~ mirror set value "LEFT_RIGHT"
execute if score Rand bb.Variables matches 1 store result block ~ ~ ~ posZ int 1 run data get block ~ ~ ~ sizeZ -1

scoreboard players set Rand bb.Variables -1

setblock ~ ~1 ~ redstone_block
fill ~ ~ ~ ~ ~1 ~ air
fill ~ 126 ~ ~ 127 ~ air