#実行者:ブタ
#データ取得
execute store result score #tmp_x ckj03_data run data get storage ckj03: fetch_entitydata.Motion[0] 10
execute store result score #tmp_y ckj03_data run data get storage ckj03: fetch_entitydata.Motion[1] 10
execute store result score #tmp_z ckj03_data run data get storage ckj03: fetch_entitydata.Motion[2] 10
execute store result score #tmp_pos ckj03_data run data get storage ckj03: fetch_entitydata.Pos[1] 10
execute store result score #tmp_pos_x ckj03_data run data get storage ckj03: fetch_entitydata.Pos[0] 10
execute store result score #tmp_pos_y ckj03_data run data get storage ckj03: fetch_entitydata.Pos[1] 10
execute store result score #tmp_pos_z ckj03_data run data get storage ckj03: fetch_entitydata.Pos[2] 10

#重力の方向を変える
##ブタが対象移動の軸を表す
execute facing entity @e[tag=ckenja_pig_hook_hook,distance=..384] eyes run teleport @s ~ ~ ~ facing ^ ^-1 ^
##Yベクトルを表すAECを出す
summon minecraft:area_effect_cloud ~ ~ ~ {Duration:0,Tags:["ckenja_pig_hook_aec"]}
scoreboard players operation #tmp_pos ckj03_data += #tmp_y ckj03_data
execute store result entity @e[tag=ckenja_pig_hook_aec,distance=..0,limit=1] Pos[1] double 0.1 run scoreboard players get #tmp_pos ckj03_data
##Yベクトルを表すAECの座標をブタの視線で軸対象移動さる
execute at @e[tag=ckenja_pig_hook_aec,distance=..0,limit=1] rotated as @s positioned ^ ^ ^1000 facing entity @s feet positioned ^ ^ ^2000 rotated as @s positioned ^ ^ ^1000 run teleport @e[tag=ckenja_pig_hook_aec,distance=..0,limit=1] ~ ~ ~

#Motion代入
data modify storage ckenja_pig_hook: Pos set from entity @e[tag=ckenja_pig_hook_aec,distance=..0,limit=1] Pos
execute store result score #tmp_aec_x ckj03_data run data get storage ckenja_pig_hook: Pos[0] 10
execute store result score #tmp_aec_y ckj03_data run data get storage ckenja_pig_hook: Pos[1] 10
execute store result score #tmp_aec_z ckj03_data run data get storage ckenja_pig_hook: Pos[2] 10
kill @e[type=area_effect_cloud,tag=ckenja_pig_hook_aec]
#aec-pos=motion
scoreboard players operation #tmp_aec_x ckj03_data -= #tmp_pos_x ckj03_data
scoreboard players operation #tmp_aec_y ckj03_data -= #tmp_pos_y ckj03_data
scoreboard players operation #tmp_aec_z ckj03_data -= #tmp_pos_z ckj03_data
execute store result storage ckj03: merge_entitydata.Motion[0] double 0.1 run scoreboard players get #tmp_pos_x ckj03_data
execute store result storage ckj03: merge_entitydata.Motion[1] double 0.1 run scoreboard players get #tmp_pos_y ckj03_data
execute store result storage ckj03: merge_entitydata.Motion[2] double 0.1 run scoreboard players get #tmp_pos_z ckj03_data

#同idのプレイヤーのスコアボードからデータを持ってくる
#scoreboard players operation #tmp_id ckj03_data = @s ckj_pig_hook_id
#execute as @a[distance=..16] if score @s ckj03_id = #tmp_id ckj03_data run function ckenja_pig_hook:player/get_data
