#プレイヤーの視線先にaec
scoreboard players operation #tmp ckj01_data = @s ckenja_ghost
execute as @a[distance=..16] if score #tmp ckj01_data = @s ckj01_id at @s run summon minecraft:area_effect_cloud ^ ^ ^8 {Duration:0,Tags:["ckenja_ghost_aec"]}
#aecが遠ければtp
execute if entity @e[distance=1..24,tag=ckenja_ghost_aec] run tp @s ^ ^ ^0.4 facing entity @e[tag=ckenja_ghost_aec,sort=nearest,limit=1,distance=1..24]
#一定時間ごとに敵対雪玉
scoreboard players operation #tmp ckj01_data = @s ckenja_ghost2
scoreboard players operation #tmp ckj01_data %= #100 ckj01_data
execute store success score #tmp4 ckj01_data run execute if score #tmp ckj01_ghost matches 0 run function ckenja_ghost:ability/decoy2
execute if score #tmp4 ckj01_data matches 0 run function ckenja_ghost:ability/remove