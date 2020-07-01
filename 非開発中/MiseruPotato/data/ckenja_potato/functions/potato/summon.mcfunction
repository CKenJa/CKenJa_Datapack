execute as @e[type=item,nbt={Item:{id:"minecraft:potato"}}] run data merge entity @s {PickupDelay:0s}
execute at @s run summon minecraft:armor_stand ~ ~-0.5 ~ {Invulnerable:1b,Invisible:1b,Tags:["ckenja_potato_initial","ckenja_potato_q"],ArmorItems:[{},{},{},{id:"minecraft:potato",Count:1b}]}
execute store result score #yaw ckenja_potato run data get entity @s Rotation[0]
execute store result score #pitch ckenja_potato run data get entity @s Rotation[1]
execute at @s run execute as @e[tag=ckenja_potato_initial] run function ckenja_potato:initilaize
clear @s minecraft:potato 1