scoreboard players set modulo bb.Variables 160
execute store result score Rand bb.Variables run data get entity @s UUID[0] 
scoreboard players operation Rand bb.Variables %= modulo bb.Variables
scoreboard players remove Rand bb.Variables 80
execute store result entity @s Pos[0] double 1 run scoreboard players get Rand bb.Variables

scoreboard players set modulo bb.Variables 60
execute store result score Rand bb.Variables run data get entity @s UUID[1] 
scoreboard players operation Rand bb.Variables %= modulo bb.Variables
scoreboard players add Rand bb.Variables 20
execute store result entity @s Pos[1] double 1 run scoreboard players get Rand bb.Variables

scoreboard players set modulo bb.Variables 160
execute store result score Rand bb.Variables run data get entity @s UUID[2] 
scoreboard players operation Rand bb.Variables %= modulo bb.Variables
scoreboard players remove Rand bb.Variables 80
execute store result entity @s Pos[2] double 1 run scoreboard players get Rand bb.Variables
