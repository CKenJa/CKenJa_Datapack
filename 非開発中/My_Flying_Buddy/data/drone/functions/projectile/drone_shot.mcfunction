particle minecraft:dust 0.5 1 1 1 ~ ~ ~ 0 0 0 0 0
execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=#drone:hostiles,dx=0] run scoreboard players set @e[type=#drone:hostiles,nbt={HurtTime:0s},dx=0] Damage 5
execute positioned ~-0.5 ~-0.5 ~-0.5 if entity @e[type=#drone:hostiles,dx=0] as @e[type=#drone:hostiles,nbt={HurtTime:0s},dx=0] run function chuz_common:score_damage
execute positioned ~-0.5 ~-0.5 ~-0.5 unless entity @e[type=#drone:hostiles,dx=0] positioned ~0.5 ~0.5 ~0.5 positioned ^ ^ ^1 positioned ~ ~0.25 ~ if block ~ ~ ~ #drone:no_collision run function drone:projectile/drone_shot
