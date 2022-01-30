execute in biomebloodshed:game run scoreboard players set @e[x=0,tag=hub.border] hub.borderCeiling 12800
execute in biomebloodshed:game run scoreboard players set @e[x=0,tag=hub.border] hub.borderCeilingChange -3
execute in biomebloodshed:game run scoreboard players set @e[x=0,tag=hub.border] hub.borderSizeChange 0
execute in biomebloodshed:game run scoreboard players set @e[x=0,tag=hub.border] hub.borderChangeLength 10000
execute in biomebloodshed:game run tellraw @a[x=0] {"text": "Lowering border ceiling...","color":"red"}
execute in biomebloodshed:game as @a[x=0] at @s run playsound minecraft:block.note_block.bell master @s