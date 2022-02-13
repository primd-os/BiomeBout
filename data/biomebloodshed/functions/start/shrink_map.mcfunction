scoreboard players set @e[x=0,tag=hub.border] hub.borderSizeChange -2
scoreboard players set @e[x=0,tag=hub.border] hub.borderCeilingChange 0
scoreboard players set @e[x=0,tag=hub.border] hub.borderChangeLength 11000
schedule function biomebloodshed:start/lower_border 11000t
tellraw @a[x=0] {"text": "Shrinking border...","color":"red"}
execute as @a[x=0] at @s run playsound minecraft:block.note_block.bell master @s