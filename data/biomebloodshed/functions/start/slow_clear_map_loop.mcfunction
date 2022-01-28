fill 1 0 ~ 130 127 ~ air
fill -130 0 ~ 0 127 ~ air
fill 1 0 ~-1 130 127 ~-1 air
fill -130 0 ~-1 0 127 ~-1 air
tp ~ ~ ~1
scoreboard players add @s bb.clearZ 1
execute as @s[scores={bb.clearZ=130..}] run function biomebloodshed:start/dim_setup
