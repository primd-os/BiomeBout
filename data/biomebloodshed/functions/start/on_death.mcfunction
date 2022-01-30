gamemode spectator @s
team leave @s
tellraw @a[x=0] [{"selector":"@s"}," has died"]
team join bb.BiomeBloodshed @s
scoreboard players set @s bb.deaths 0

setblock 0 127 0 yellow_shulker_box
item replace block 0 127 0 container.0 from entity @s inventory.0
item replace block 0 127 0 container.1 from entity @s inventory.1
item replace block 0 127 0 container.2 from entity @s inventory.2
item replace block 0 127 0 container.3 from entity @s inventory.3
item replace block 0 127 0 container.4 from entity @s inventory.4
item replace block 0 127 0 container.5 from entity @s inventory.5
item replace block 0 127 0 container.6 from entity @s inventory.6
item replace block 0 127 0 container.7 from entity @s inventory.7
item replace block 0 127 0 container.8 from entity @s inventory.8
item replace block 0 127 0 container.9 from entity @s inventory.9
item replace block 0 127 0 container.10 from entity @s inventory.10
item replace block 0 127 0 container.11 from entity @s inventory.11
item replace block 0 127 0 container.12 from entity @s inventory.12
item replace block 0 127 0 container.13 from entity @s inventory.13
item replace block 0 127 0 container.14 from entity @s inventory.14
item replace block 0 127 0 container.15 from entity @s inventory.15
item replace block 0 127 0 container.16 from entity @s inventory.16
item replace block 0 127 0 container.17 from entity @s inventory.17
item replace block 0 127 0 container.18 from entity @s inventory.18
item replace block 0 127 0 container.19 from entity @s inventory.19
item replace block 0 127 0 container.20 from entity @s inventory.20
item replace block 0 127 0 container.21 from entity @s inventory.21
item replace block 0 127 0 container.22 from entity @s inventory.22
item replace block 0 127 0 container.23 from entity @s inventory.23
item replace block 0 127 0 container.24 from entity @s inventory.24
item replace block 0 127 0 container.25 from entity @s inventory.25
item replace block 0 127 0 container.26 from entity @s inventory.26
loot spawn ~ ~ ~ mine 0 127 0 air{drop_contents: 1b}
setblock 0 127 0 air

setblock 0 127 0 yellow_shulker_box
item replace block 0 127 0 container.0 from entity @s hotbar.0
item replace block 0 127 0 container.1 from entity @s hotbar.1
item replace block 0 127 0 container.2 from entity @s hotbar.2
item replace block 0 127 0 container.3 from entity @s hotbar.3
item replace block 0 127 0 container.4 from entity @s hotbar.4
item replace block 0 127 0 container.5 from entity @s hotbar.5
item replace block 0 127 0 container.6 from entity @s hotbar.6
item replace block 0 127 0 container.7 from entity @s hotbar.7
item replace block 0 127 0 container.8 from entity @s hotbar.8
item replace block 0 127 0 container.9 from entity @s weapon.offhand
item replace block 0 127 0 container.10 from entity @s armor.head
item replace block 0 127 0 container.11 from entity @s armor.chest
item replace block 0 127 0 container.12 from entity @s armor.legs
item replace block 0 127 0 container.13 from entity @s armor.feet
loot spawn ~ ~ ~ mine 0 127 0 air{drop_contents: 1b}
setblock 0 127 0 air

clear @s