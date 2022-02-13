summon armor_stand ~ ~ ~ {Tags:["bb.islandTypeGenerator"]}
loot replace entity @e[type=armor_stand,x=0,tag=bb.islandTypeGenerator,limit=1] weapon.mainhand loot biomebloodshed:island_generator
data modify storage biomebloodshed:name name set from entity @e[type=armor_stand,x=0,tag=bb.islandTypeGenerator,limit=1] HandItems[0].tag.pages[0]
kill @e[type=armor_stand,x=0,tag=bb.islandTypeGenerator]
function biomebloodshed:start/place_island

tag @s add bb.Completed