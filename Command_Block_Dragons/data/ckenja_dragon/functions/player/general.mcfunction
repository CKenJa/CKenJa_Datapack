#scoreboard players operation #tmp_id ckj03_data = @s ckj03_data
#Motion取得
execute positioned 0.0 0.0 0.0 rotated as @s run summon minecraft:area_effect_cloud ^ ^ ^2 {Radius:0f,Duration:0,Tags:["ckenja_dragon_aec"]}

#Motion代入
execute as @e[type=area_effect_cloud,tag=ckenja_dragon_aec] run function ckenja_dragon:player/aec