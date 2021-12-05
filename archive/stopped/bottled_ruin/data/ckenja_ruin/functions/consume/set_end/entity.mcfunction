scoreboard players operation @s ckenja_ruin += #tmp_id ckj03_data
#https://minecraft-ja.gamepedia.com/%E3%83%A6%E3%83%BC%E3%82%B6%E3%83%BC:Kyaco11/execute%E5%B9%BE%E4%BD%95%E5%AD%A6#.E8.A6.96.E7.B7.9A.E3.83.88.E3.83.AC.E3.83.BC.E3.82.B9
#execute positioned ^ ^ ^-1 facing ^ ^ ^-1 run tp @e[type=area_effect_cloud,tag=ckenja_ruin] ~ ~ ~ ~ ~
#execute as @a[tag=ckenja_ruin,sort=nearest,distance=..32] at @s anchored feet positioned ^ ^ ^16 rotated as @e[type=#ckj03:area_effect_cloud-player,tag=ckenja_ruin,sort=nearest,distance=..32] positioned ^ ^ ^8 rotated as @e[type=#ckj03:area_effect_cloud-player,tag=ckenja_ruin,sort=nearest,distance=..32] positioned ^ ^ ^4 rotated as @e[type=#ckj03:area_effect_cloud-player,tag=ckenja_ruin,sort=nearest,distance=..32] positioned ^ ^ ^2 rotated as @e[type=#ckj03:area_effect_cloud-player,tag=ckenja_ruin,sort=nearest,distance=..32] positioned ^ ^ ^1 rotated as @e[type=#ckj03:area_effect_cloud-player,tag=ckenja_ruin,sort=nearest,distance=..32] positioned ^ ^ ^0.5 rotated as @e[type=#ckj03:area_effect_cloud-player,tag=ckenja_ruin,sort=nearest,distance=..32] positioned ^ ^ ^0.25 rotated as @e[type=#ckj03:area_effect_cloud-player,tag=ckenja_ruin,sort=nearest,distance=..32] positioned ^ ^ ^0.125 rotated as @e[type=#ckj03:area_effect_cloud-player,tag=ckenja_ruin,sort=nearest,distance=..32] positioned ^ ^ ^0.0625 facing entity @s feet unless block ~ ~1.7 ~ air run tp @e[type=area_effect_cloud,tag=ckenja_ruin,distance=..32] ~ ~1.8 ~ ~ ~
tag @s remove ckenja_ruin
tag @s add ckenja_ruin_end_point
say 終点を指定しました・

data modify storage ckenja_ruin: entitydata.Pos set from entity @s Pos
execute store result score #end_x ckenja_ruin run data get storage ckenja_ruin: entitydata.Pos[0]
execute store result score #end_y ckenja_ruin run data get storage ckenja_ruin: entitydata.Pos[1]
execute store result score #end_z ckenja_ruin run data get storage ckenja_ruin: entitydata.Pos[2]

#一番デカい数字を整理しとく。start<endでnedの方が大きくなるように
execute if score #start_x ckenja_ruin > #end_x ckenja_ruin run scoreboard players operation #start_x ckenja_ruin >< #end_x ckenja_ruin
execute if score #start_y ckenja_ruin > #end_y ckenja_ruin run scoreboard players operation #start_y ckenja_ruin >< #end_y ckenja_ruin
execute if score #start_z ckenja_ruin > #end_z ckenja_ruin run scoreboard players operation #start_z ckenja_ruin >< #end_z ckenja_ruin

kill @s