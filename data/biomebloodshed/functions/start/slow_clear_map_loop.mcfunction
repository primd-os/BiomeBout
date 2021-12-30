fill 118 0 ~ -118 127 ~ air
fill 118 0 ~-1 -118 127 ~-1 air
tp ~ ~ ~1
scoreboard players add @s bb.clearZ 1
execute as @s[scores={bb.clearZ=120..}] run function biomebloodshed:start/dim_setup
