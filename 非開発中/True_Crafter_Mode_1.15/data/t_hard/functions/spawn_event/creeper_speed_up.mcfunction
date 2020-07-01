execute unless score #T_Hard_Gamerule T_Hard_Gamerule4 matches 2 run execute as @s[tag=!T_Hard_Already] run data merge entity @s {Fuse:9999,Attributes:[{Name:generic.movementSpeed,Base:0.3}]}
execute if score #T_Hard_Gamerule T_Hard_Gamerule4 matches 2 run execute as @s[tag=!T_Hard_Already] run data merge entity @s {Attributes:[{Name:generic.movementSpeed,Base:0.3}]}
tag @s add T_Hard_Already