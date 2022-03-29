execute in biomebloodshed:game run fill -6 127 -6 6 127 6 air
execute in biomebloodshed:game run gamemode survival @a[x=0]
execute in biomebloodshed:game run item replace entity @a[x=0] armor.chest with elytra{Enchantments:[{id:"minecraft:vanishing_curse"},{id:"minecraft:binding_curse"}]} 1
execute in biomebloodshed:game run give @a[x=0] iron_pickaxe
execute in biomebloodshed:game run item replace entity @a[x=0] weapon.offhand with totem_of_undying{display:{Lore:['{"text":"Also works for the void!"}']}} 1
execute in biomebloodshed:game run scoreboard players set @e[x=0,tag=hub.border] hub.borderSize 23600
execute in biomebloodshed:game run scoreboard players set @e[x=0,tag=hub.border] hub.borderCeiling 23600000
scoreboard players set shrinkDelay bb.Variables 4200
execute in biomebloodshed:game run scoreboard players set @e[x=0,tag=hub.border] hub.borderSizeChange 0
execute in biomebloodshed:game run scoreboard players set @e[x=0,tag=hub.border] hub.borderChangeLength 0

execute in biomebloodshed:game run forceload remove all
execute in biomebloodshed:game as @a[x=0] at @s run playsound minecraft:block.note_block.bell master @s

schedule function biomebloodshed:start/remove_elytra 7s replace
execute in biomebloodshed:game run title @a[x=0] title {"text":""}
execute in biomebloodshed:game run title @a[x=0] subtitle {"text":"GO!","color":"green"}
execute in biomebloodshed:game run title @a[x=0] times 0 140 10
execute in biomebloodshed:game run title @a[x=0] actionbar {"text":"Elytra will disappear in 7 Seconds","color":"dark_blue"}

kill @e[type=marker,x=0,tag=bb.IslandSpawner,tag=bb.ToRemove]
execute in biomebloodshed:game run function biomebloodshed:start/generate_end_island

scoreboard players set IsReloading bb.Variables 0