setblock ~ ~ ~ structure_block{mode:"LOAD"}
data modify block ~ ~ ~ name set from storage biomebloodshed:name name

scoreboard players set modulo bb.Variables 4
execute store result score Rand bb.Variables run data get entity @s UUID[0] 
scoreboard players operation Rand bb.Variables %= modulo bb.Variables
execute if score Rand bb.Variables matches 0 run data modify block ~ ~ ~ rotation set value "NONE"
execute if score Rand bb.Variables matches 1 run data modify block ~ ~ ~ rotation set value "CLOCKWISE_90"
execute if score Rand bb.Variables matches 2 run data modify block ~ ~ ~ rotation set value "CLOCKWISE_180"
execute if score Rand bb.Variables matches 3 run data modify block ~ ~ ~ rotation set value "COUNTERCLOCKWISE_90"

execute if score Rand bb.Variables matches 0 run data modify block ~ ~ ~ posX set value -12
execute if score Rand bb.Variables matches 1 run data modify block ~ ~ ~ posX set value 12
execute if score Rand bb.Variables matches 2 run data modify block ~ ~ ~ posX set value 12
execute if score Rand bb.Variables matches 3 run data modify block ~ ~ ~ posX set value -12

execute if score Rand bb.Variables matches 0 run data modify block ~ ~ ~ posZ set value -12
execute if score Rand bb.Variables matches 1 run data modify block ~ ~ ~ posZ set value -12
execute if score Rand bb.Variables matches 2 run data modify block ~ ~ ~ posZ set value 12
execute if score Rand bb.Variables matches 3 run data modify block ~ ~ ~ posZ set value 12

scoreboard players set modulo bb.Variables 2
execute store result score Rand bb.Variables run data get entity @s UUID[1] 
scoreboard players operation Rand bb.Variables %= modulo bb.Variables
execute if score Rand bb.Variables matches 0 run data modify block ~ ~ ~ mirror set value "NONE"
execute if score Rand bb.Variables matches 1 run data modify block ~ ~ ~ mirror set value "LEFT_RIGHT"

scoreboard players set Rand bb.Variables -1

setblock ~ ~1 ~ redstone_block
fill ~ ~ ~ ~ ~1 ~ air