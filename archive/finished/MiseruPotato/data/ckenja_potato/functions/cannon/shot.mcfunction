execute at @s run summon minecraft:armor_stand ~ ~-0.5 ~ {NoGravity:1b,Invulnerable:1b,Invisible:1b,Tags:["ckenja_potato","ckenja_potato_initial"],ArmorItems:[{},{},{},{id:"minecraft:potato",Count:1b,tag:{CustomModelData:126000}}]}
execute store result score #yaw ckenja_potato run data get entity @s Rotation[0]
execute store result score #pitch ckenja_potato run data get entity @s Rotation[1]
execute as @e[tag=ckenja_potato_initial] run function ckenja_potato:initilaize
scoreboard players operation @s ckenja_potato = #cooltime ckenja_potato
playsound entity.generic.explode master @s ~ ~ ~ 1 2
execute if score #infinity ckenja_potato matches 0 run clear @s minecraft:potato 1