execute in biomebloodshed:game run title @a[x=0] times 0 20 0
execute in biomebloodshed:game run title @a[x=0] title {"text":"Elytras deploy in","color":"green"}
execute in biomebloodshed:game run title @a[x=0] subtitle {"score":{"name": "countdown","objective": "bb.Variables","color":"green"}
execute in biomebloodshed:game as @a[x=0] at @s run playsound minecraft:block.note_block.bit block @s ~ ~ ~ 1 2 1
scoreboard players remove countdown bb.Variables 1
execute if score countdown bb.Variables matches 1.. run schedule function biomebloodshed:start/start_warn 1s replace