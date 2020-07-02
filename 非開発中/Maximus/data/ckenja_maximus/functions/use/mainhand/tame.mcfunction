clear @s minecraft:golden_apple 1
execute as @e[type=#ckenja_maximus:horses,distance=..2,nbt={Tame:0b}] run data merge entity @s {Tame:1b}
particle heart ^ ^1 ^1 0.5 0.5 0.5 1 7 normal