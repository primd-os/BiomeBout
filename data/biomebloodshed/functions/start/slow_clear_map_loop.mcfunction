fill 1 0 ~ 140 127 ~ air
fill -140 0 ~ 0 127 ~ air
fill 1 0 ~-1 140 127 ~-1 air
fill -140 0 ~-1 0 127 ~-1 air
tp ~ ~ ~1
scoreboard players add @s bb.clearZ 1
kill @e[x=0,type=!player,type=!marker]
execute as @s[scores={bb.clearZ=140..}] run scoreboard players set GameState bb.Variables -1
execute as @s[scores={bb.clearZ=140..}] run kill @s
