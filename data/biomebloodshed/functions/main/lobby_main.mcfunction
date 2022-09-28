execute as @a[x=-6.5,y=9,z=-3.5,distance=..1.5] run function hub:parkour/start
execute as @a[x=-9.5,y=22,z=-15.5,distance=..1.5,tag=Parkour] run function hub:parkour/end_parkour
execute as @a[x=0] run effect give @s weakness 1 100 true
execute as @a[x=0] run effect give @s saturation 1 100 true
execute as @a[x=0] run effect give @s resistance 1 100 true