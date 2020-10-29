#プレイヤーの視線先にaec
scoreboard players operation #tmp ckj01_data = @s ckenja_ghost
execute as @a[distance=..16] if score #tmp ckj01_data = @s ckj01_id at @s run summon minecraft:area_effect_cloud ^ ^ ^16 {Duration:0,Tags:["ckenja_ghost_aec"]}
#aecが遠ければtp
execute if entity @e[distance=1..24,tag=ckenja_ghost_aec] run tp @s ^ ^ ^0.4 facing entity @e[tag=ckenja_ghost_aec,sort=nearest,limit=1,distance=1..24]
#周りの敵をマーキング
execute store result score #tmp ckj01_data run effect give @e[type=#ckenja_ghost:enemy,tag=!global.ignore,tag=!global.ignore.kill,distance=..16] glowing 65536 1 true
execute if score #tmp ckj01_data matches 0 run function ckenja_ghost:ability/remove