particle enchanted_hit ^ ^ ^3 0 0 0 0 1 force
#前回の座標との差を全部出す。負なら正にする
summon minecraft:area_effect_cloud ~ ~ ~ {Age: -2147483648, Duration: -1, WaitTime: -2147483648, Tags: ["ckenja_cut8_aec"]}
data modify storage ckenja_cut8: Pos set from entity @e[type=area_effect_cloud,tag=ckenja_cut8_aec,limit=1,sort=nearest] Pos
#kill @e[type=area_effect_cloud,tag=ckenja_cut8_aec,limit=1,sort=nearest]
data get entity @s Pos
execute store result score #tmp ckenja_cut8_x run data get storage ckenja_cut8: Pos[0] 0.01
execute store result score #tmp ckenja_cut8_y run data get storage ckenja_cut8: Pos[1] 0.01
execute store result score #tmp ckenja_cut8_z run data get storage ckenja_cut8: Pos[2] 0.01
scoreboard players operation @s ckenja_cut8_x -= #tmp ckenja_cut8_x
scoreboard players operation @s ckenja_cut8_y -= #tmp ckenja_cut8_y
scoreboard players operation @s ckenja_cut8_z -= #tmp ckenja_cut8_z
execute unless score @s ckenja_cut8_x matches ..0 run scoreboard players operation @s ckenja_cut8_x *= #-1 ckj02_data
execute unless score @s ckenja_cut8_y matches ..0 run scoreboard players operation @s ckenja_cut8_y *= #-1 ckj02_data
execute unless score @s ckenja_cut8_z matches ..0 run scoreboard players operation @s ckenja_cut8_z *= #-1 ckj02_data
#差が最も大きいものをタグ付けする
execute if score @s ckenja_cut8_x > @s ckenja_cut8_y if score @s ckenja_cut8_x > @s ckenja_cut8_z run tag @s add ckenja_cut8_x
execute if score @s ckenja_cut8_y > @s ckenja_cut8_x if score @s ckenja_cut8_y > @s ckenja_cut8_z run tag @s add ckenja_cut8_y
execute if score @s ckenja_cut8_z > @s ckenja_cut8_y if score @s ckenja_cut8_z > @s ckenja_cut8_x run tag @s add ckenja_cut8_z
#現座標を保存しておく
scoreboard players operation @s ckenja_cut8_x = #tmp ckenja_cut8_x
scoreboard players operation @s ckenja_cut8_y = #tmp ckenja_cut8_y
scoreboard players operation @s ckenja_cut8_z = #tmp ckenja_cut8_z