execute in biomebloodshed:game run scoreboard players set @e[x=0,tag=hub.border] hub.borderSizeChange -2
execute in biomebloodshed:game run scoreboard players set @e[x=0,tag=hub.border] hub.borderCeilingChange 0
execute in biomebloodshed:game run scoreboard players set @e[x=0,tag=hub.border] hub.borderChangeLength 11000
schedule function biomebloodshed:start/lower_border 11000t
execute in biomebloodshed:game run tellraw @a[x=0] {"text": "Shrinking border...","color":"red"}
execute in biomebloodshed:game as @a[x=0] at @s run playsound minecraft:block.note_block.bell master @s