execute store result score #tmp ckj01_data run data get entity @s UUID[0]
execute store result score #tmp1 ckj01_data run data get entity @s UUID[1]
execute store result score #tmp2 ckj01_data run data get entity @s UUID[2]
execute store result score #tmp3 ckj01_data run data get entity @s UUID[3]
execute as @e[type=#ckenja_ghost:enemy,tag=!global.ignore.kill,tag=!global.ignore,distance=..8] at @s run function ckenja_ghost:ability/decoy3
