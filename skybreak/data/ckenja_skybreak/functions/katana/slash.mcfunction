#ckj01_use_timeの値からパーティクルの位置を算出。4tick一周
scoreboard players operation #tmp ckj01_data = @s ckj01_coas_time
scoreboard players operation #tmp ckj01_data %= #4 ckj01_data
execute if score #tmp ckj01_data matches 1
execute if score #tmp ckj01_data matches 2
execute if score #tmp ckj01_data matches 3
execute if score #tmp ckj01_data matches 4
execute if score #tmp ckj01_data matches 4 as @e[distance=..1] at @s run function ckenja_skybreak:katana/damage