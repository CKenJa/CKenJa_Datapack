execute if score # ckenja_sand matches 1 run tp ^1 ^ ^
execute if score # ckenja_sand matches 0 run tp ^-1 ^ ^
execute if entity @s[nbt={Rotation:[0.0f,0.0f]}] run data merge entity @s {Rotation:[-180.0f,0.0f]}
execute if entity @s[nbt={Rotation:[90.0f,0.0f]}] run data merge entity @s {Rotation:[-90.0f,0.0f]}
execute if entity @s[nbt={Rotation:[-180.0f,0.0f]}] run data merge entity @s {Rotation:[0.0f,0.0f]}
execute if entity @s[nbt={Rotation:[-90.0f,0.0f]}] run data merge entity @s {Rotation:[90.0f,0.0f]}
tp @s ^ ^ ^-1