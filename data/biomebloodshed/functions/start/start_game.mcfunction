execute in biomebloodshed:game run fill -6 127 -6 6 127 6 air
execute in biomebloodshed:game run gamemode survival @a[x=0]
execute in biomebloodshed:game run item replace entity @a[x=0] armor.chest with elytra{Enchantments:[{id:"minecraft:vanishing_curse"},{id:"minecraft:binding_curse"}]} 1
execute in biomebloodshed:game run scoreboard players set @e[x=0,tag=hub.border] hub.borderSize 23600
execute in biomebloodshed:game run scoreboard players set @e[x=0,tag=hub.border] hub.borderCeiling 23600000
scoreboard players set shrinkDelay bb.Variables 3600
execute in biomebloodshed:game run scoreboard players set @e[x=0,tag=hub.border] hub.borderSizeChange 0
execute in biomebloodshed:game run scoreboard players set @e[x=0,tag=hub.border] hub.borderChangeLength 0
execute in biomebloodshed:game run scoreboard players set @a[x=0] hub.fallDmgPercent 0

execute in biomebloodshed:game run forceload remove all
execute in biomebloodshed:game as @a[x=0] at @s run playsound minecraft:block.note_block.bell master @s
schedule function biomebloodshed:start/enable_falldamage 7s replace