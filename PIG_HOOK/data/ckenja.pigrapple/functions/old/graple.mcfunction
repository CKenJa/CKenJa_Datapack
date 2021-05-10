#実行者:ブタ
#データ取得
execute store result score #tmp_x ckj04.data run data get storage ckj04: fetch_entitydata.Motion[0] 10
execute store result score #tmp_y ckj04.data run data get storage ckj04: fetch_entitydata.Motion[1] 10
execute store result score #tmp_z ckj04.data run data get storage ckj04: fetch_entitydata.Motion[2] 10
execute store result score #tmp_pos ckj04.data run data get storage ckj04: fetch_entitydata.Pos[1] 10
execute store result score #tmp_pos_x ckj04.data run data get storage ckj04: fetch_entitydata.Pos[0] 10
execute store result score #tmp_pos_y ckj04.data run data get storage ckj04: fetch_entitydata.Pos[1] 10
execute store result score #tmp_pos_z ckj04.data run data get storage ckj04: fetch_entitydata.Pos[2] 10

#重力の方向を変える
##計算法はこれ-->https://twitter.com/CKenJaC/status/1365882943768420352
##対象移動の軸を表すエンティティをブタとは別に出す
summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0f,Duration:0,Tags:["ckenja.pigrapple_aec","ckenja.pigrapple_aec_axis"]}
execute facing entity @e[tag=ckenja.pigrapple_hook,distance=..384] feet run teleport @e[tag=ckenja.pigrapple_aec_axis,distance=0,type=area_effect_cloud] ~ ~ ~ facing ^ ^-1 ^

##Yベクトルを表すAECを出す
summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0f,Duration:0,Tags:["ckenja.pigrapple_aec","ckenja.pigrapple_aec_vec"]}
scoreboard players operation #tmp_pos ckj04.data += #tmp_y ckj04.data
execute store result entity @e[tag=ckenja.pigrapple_aec_vec,distance=..0,limit=1,type=area_effect_cloud] Pos[1] double 0.1 run scoreboard players get #tmp_pos ckj04.data

##Yベクトルを表すAECを軸対象移動した位置にAECをもう1個ドン
execute as @e[tag=ckenja.pigrapple_aec_axis,distance=..16,type=area_effect_cloud] at @e[tag=ckenja.pigrapple_aec_vec,distance=..384,limit=1,type=area_effect_cloud] rotated as @s positioned ^ ^ ^1000 facing entity @s feet positioned ^ ^ ^2000 rotated as @s positioned ^ ^ ^1000 run summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0f,Duration:0,Tags:["ckenja.pigrapple_aec","ckenja.pigrapple_aec_point"]}

##垂線に
execute facing entity @e[tag=ckenja.pigrapple_aec_vec,distance=..0,limit=1,type=area_effect_cloud] feet run tp @e[tag=ckenja.pigrapple_aec_point,type=area_effect_cloud,distance=..384] ~ ~ ~ ~ ~

#new!垂線
execute facing entity @s feet as @e[tag=ckenja.pigrapple_hook,distance=..384,limit=1] at @s run teleport @s ~ ~ ~ facing ^ ^1 ^

##二分探索で交点を求める
###線Aはaxis、線Bはpoint


#Motion代入
data modify storage ckenja.pigrapple: Pos set from entity @e[tag=ckenja.pigrapple_aec_vec,distance=..384,limit=1] Pos
execute store result score #tmp_aec_x ckj04.data run data get storage ckenja.pigrapple: Pos[0] 10
execute store result score #tmp_aec_y ckj04.data run data get storage ckenja.pigrapple: Pos[1] 10
execute store result score #tmp_aec_z ckj04.data run data get storage ckenja.pigrapple: Pos[2] 10
#aec-pos=motion
scoreboard players operation #tmp_aec_x ckj04.data -= #tmp_pos_x ckj04.data
scoreboard players operation #tmp_aec_y ckj04.data -= #tmp_pos_y ckj04.data
scoreboard players operation #tmp_aec_z ckj04.data -= #tmp_pos_z ckj04.data
execute store result storage ckj04: merge_entitydata.Motion[0] double 0.1 run scoreboard players get #tmp_pos_x ckj04.data
execute store result storage ckj04: merge_entitydata.Motion[1] double 0.1 run scoreboard players get #tmp_pos_y ckj04.data
execute store result storage ckj04: merge_entitydata.Motion[2] double 0.1 run scoreboard players get #tmp_pos_z ckj04.data

kill @e[type=area_effect_cloud,tag=ckenja.pigrapple_aec,distance=..384]

#同idのプレイヤーのスコアボードからデータを持ってくる
#scoreboard players operation #tmp_id ckj04.data = @s ckj_pig_hook_id
#execute as @a[distance=..16] if score @s ckj04.id = #tmp_id ckj04.data run function ckenja.pigrapple:player/get_data

#デバッグ用
execute unless entity @e[tag=ckenja.pigrapple_hook,distance=..384] run say フックが存在しません
