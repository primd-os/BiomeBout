fill 127 0 ~ -127 127 ~ air
fill 127 0 ~-1 -127 127 ~-1 air
tp ~ ~ ~1
scoreboard players add @s bb.clearZ 1
execute as @s[scores={bb.clearZ=130..}] run function biomebloodshed:start/dim_setup
