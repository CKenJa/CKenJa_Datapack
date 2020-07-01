execute if entity @s[type=husk] run function t_hard:spawn_event/husk_change
execute as @s[type=#t_hard:no_sun_undead,tag=!T_Hard_Already] run function t_hard:spawn_event/undead_hat
data merge entity @s[type=zombie_pigman,tag=!T_Hard_Already] {Anger:32767}
data merge entity @s[nbt=!{IsBaby:1b}] {CanPickUpLoot:1b,Attributes:[{Name:generic.movementSpeed,Base:0.32}]}
data merge entity @s[nbt={IsBaby:1b}] {CanPickUpLoot:1b}
tag @s add T_Hard_Already