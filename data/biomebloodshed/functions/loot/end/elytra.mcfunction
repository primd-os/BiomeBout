setblock ~ ~ ~ air
execute unless block ~ ~ ~1 air unless entity @e[distance=..2,type=item_frame] run summon minecraft:item_frame ~ ~ ~ {Facing: 2b, Item: {id: "minecraft:elytra", Count: 1b, tag: {Damage: 0}}}
execute unless block ~ ~ ~-1 air unless entity @e[distance=..2,type=item_frame] run summon minecraft:item_frame ~ ~ ~ {Facing: 3b, Item: {id: "minecraft:elytra", Count: 1b, tag: {Damage: 0}}}
execute unless block ~1 ~ ~ air unless entity @e[distance=..2,type=item_frame] run summon minecraft:item_frame ~ ~ ~ {Facing: 4b, Item: {id: "minecraft:elytra", Count: 1b, tag: {Damage: 0}}}
execute unless block ~-1 ~ ~ air unless entity @e[distance=..2,type=item_frame] run summon minecraft:item_frame ~ ~ ~ {Facing: 5b, Item: {id: "minecraft:elytra", Count: 1b, tag: {Damage: 0}}}