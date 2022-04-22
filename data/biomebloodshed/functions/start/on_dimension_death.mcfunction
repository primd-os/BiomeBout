gamemode spectator @s
team leave @s

# uid matching. bb.killed is the matching player who died
scoreboard players operation $uid rx.temp = @s rx.death_uid
execute as @a[scores={rx.kill_uid=1..},x=0] if score @s rx.kill_uid = $uid rx.temp run tag @s add bb.killed

# basic death message
execute if entity @a[tag=bb.killed,x=0,limit=1] run tag @s add dieMarked
execute as @s[advancements={rx:death_cause/arrow=true},tag=dieMarked,tag=!bb.Messaged] run tellraw @a[x=0] ["", {"selector":"@s"}, " was shot by ", {"selector":"@a[tag=bb.killed,x=0,limit=1]"}, "'s arrow"]
execute as @s[advancements={rx:death_cause/arrow=true},tag=dieMarked,tag=!bb.Messaged] run tag @s add bb.Messaged
execute as @s[advancements={rx:death_cause/explosion=true},tag=dieMarked,tag=!bb.Messaged] run tellraw @a[x=0] ["", {"selector":"@s"}, " was blown up by ", {"selector":"@a[tag=bb.killed,x=0,limit=1]"}]
execute as @s[advancements={rx:death_cause/explosion=true},tag=dieMarked,tag=!bb.Messaged] run tag @s add bb.Messaged
execute as @s[advancements={rx:death_cause/fire=true},tag=dieMarked,tag=!bb.Messaged] run tellraw @a[x=0] ["", {"selector":"@s"}, " was burned to death by ", {"selector":"@a[tag=bb.killed,x=0,limit=1]"}]
execute as @s[advancements={rx:death_cause/fire=true},tag=dieMarked,tag=!bb.Messaged] run tag @s add bb.Messaged
execute as @s[advancements={rx:death_cause/void=true},tag=dieMarked,tag=!bb.Messaged] run tellraw @a[x=0] ["", {"selector":"@s"}, " fell due to ", {"selector":"@a[tag=bb.killed,x=0,limit=1]"}]
execute as @s[advancements={rx:death_cause/void=true},tag=dieMarked,tag=!bb.Messaged] run tag @s add bb.Messaged
execute as @s[advancements={rx:death_cause/melee=true},tag=dieMarked,tag=!bb.Messaged,tag=!bb.Messaged] run tellraw @a[x=0] ["", {"selector":"@s"}, " was stabbed by ", {"selector":"@a[tag=bb.killed,x=0,limit=1]"}]
execute as @s[advancements={rx:death_cause/melee=true},tag=dieMarked,tag=!bb.Messaged] run tag @s add bb.Messaged
execute as @s[advancements={rx:death_cause/magic=true},tag=dieMarked,tag=!bb.Messaged,tag=!bb.Messaged] run tellraw @a[x=0] ["", {"selector":"@s"}, " was magiced by ", {"selector":"@a[tag=bb.killed,x=0,limit=1]"}]
execute as @s[advancements={rx:death_cause/magic=true},tag=dieMarked,tag=!bb.Messaged] run tag @s add bb.Messaged
execute as @s[advancements={rx:death_cause/lightning=true},tag=dieMarked,tag=!bb.Messaged,tag=!bb.Messaged] run tellraw @a[x=0] ["", {"selector":"@s"}, " was struck with lightning by ", {"selector":"@a[tag=bb.killed,x=0,limit=1]"}]
execute as @s[advancements={rx:death_cause/lightning=true},tag=dieMarked,tag=!bb.Messaged] run tag @s add bb.Messaged
execute as @s[advancements={rx:death_cause/starvation=true},tag=dieMarked,tag=!bb.Messaged,tag=!bb.Messaged] run tellraw @a[x=0] ["", {"selector":"@s"}, " was starved by ", {"selector":"@a[tag=bb.killed,x=0,limit=1]"}]
execute as @s[advancements={rx:death_cause/starvation=true},tag=dieMarked,tag=!bb.Messaged] run tag @s add bb.Messaged

execute as @s[tag=!bb.Messaged] run tellraw @a[x=0] [{"selector": "@s"},{"text": " died"}]
# remove tag :)
tag @a[x=0] remove bb.killed
tag @s remove bb.Messaged
tag @s remove dieMarked

team join bb.BiomeBloodshed @s

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