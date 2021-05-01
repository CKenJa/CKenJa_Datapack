execute as @a[tag=ckenja.vine.restrained,limit=1] run function ckenja.vine:vex/ai/player
execute if entity @a[tag=ckenja.vine.restrained,distance=..1] run function ckenja.vine:vex/ai/restrain
data modify storage ckenja.vine: ai.BoundX set from storage ckenja.vine Pos[0]
data modify storage ckenja.vine: ai.BoundX set from storage ckenja.vine Pos[1]
data modify storage ckenja.vine: ai.BoundX set from storage ckenja.vine Pos[2]
data modify entity @s {} set from storage ckenja.vine ai
execute positioned ~ ~-0.8075 ~ run summon armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["ckenja.vine.wood"],ArmorItems:[{},{},{},{id:"minecraft:oak_wood",Count:1b}]}