scoreboard players operation @s ckenja_ruin += #tmp_id ckj03_data
#https://minecraft-ja.gamepedia.com/%E3%83%A6%E3%83%BC%E3%82%B6%E3%83%BC:Kyaco11/execute%E5%B9%BE%E4%BD%95%E5%AD%A6#.E8.A6.96.E7.B7.9A.E3.83.88.E3.83.AC.E3.83.BC.E3.82.B9
execute positioned ^ ^ ^-1 facing ^ ^ ^-1 run tp @e[type=area_effect_cloud,tag=ckenja_ruin] ~ ~ ~ ~ ~
execute as @a[tag=ckenja_ruin,sort=nearest,distance=..32] at @s anchored feet positioned ^ ^ ^16 rotated as @e[type=#ckj03:area_effect_cloud-player,tag=ckenja_ruin,sort=nearest,distance=..32] positioned ^ ^ ^8 rotated as @e[type=#ckj03:area_effect_cloud-player,tag=ckenja_ruin,sort=nearest,distance=..32] positioned ^ ^ ^4 rotated as @e[type=#ckj03:area_effect_cloud-player,tag=ckenja_ruin,sort=nearest,distance=..32] positioned ^ ^ ^2 rotated as @e[type=#ckj03:area_effect_cloud-player,tag=ckenja_ruin,sort=nearest,distance=..32] positioned ^ ^ ^1 rotated as @e[type=#ckj03:area_effect_cloud-player,tag=ckenja_ruin,sort=nearest,distance=..32] positioned ^ ^ ^0.5 rotated as @e[type=#ckj03:area_effect_cloud-player,tag=ckenja_ruin,sort=nearest,distance=..32] positioned ^ ^ ^0.25 rotated as @e[type=#ckj03:area_effect_cloud-player,tag=ckenja_ruin,sort=nearest,distance=..32] positioned ^ ^ ^0.125 rotated as @e[type=#ckj03:area_effect_cloud-player,tag=ckenja_ruin,sort=nearest,distance=..32] positioned ^ ^ ^0.0625 facing entity @s feet unless block ~ ~1.7 ~ air run tp @e[type=area_effect_cloud,tag=ckenja_ruin,distance=..32] ~ ~1.8 ~ ~ ~
tag @s remove ckenja_ruin
tag @s add ckenja_ruin_end_point