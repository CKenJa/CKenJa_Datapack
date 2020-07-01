execute as @s[type=#t_hard:no_sun_undead] run function t_hard:spawn_event/undead_hat
execute if entity @s[type=skeleton] run function t_hard:spawn_event/skeleton_change
execute if entity @s[type=stray] run function t_hard:spawn_event/stray_change
#ウィザスケ
execute as @e[type=wither_skeleton] run data merge entity @s {Health:30f,Attributes:[{Name:generic.maxHealth,Base:30}]}
replaceitem entity @s[type=wither_skeleton] weapon.mainhand minecraft:bow
data merge entity @s {CanPickUpLoot:1b}
tag @s add T_Hard_Already
tag @s add T_Hard_Ske_Ranged
