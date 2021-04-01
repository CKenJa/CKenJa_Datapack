#デバッグ要員
function ckj03:datatag/fetch
#とりまリードの長さは8m固定
scoreboard players set @s ckj_pig_hook_len 8
#二分探索で、リード長の場所にAECを召喚
#フックとブタの距離を測る
#あと原点向きMotion取得
#用済みはキル
tag @s add ckenja_pig_hook_arg
scoreboard players operation $tmp_id ckj03_data = @s ckj_pig_hook_id
execute as @e[tag=ckenja_pig_hook_hook,distance=..384] if score @s ckj_pig_hook_id = $tmp_id ckj03_data run function ckenja_pig_hook:operation/swing/hook
tag @s remove ckenja_pig_hook_arg
#arg ckj03_dataにリード長はいってる
#ベクトル座標取得
execute store result score $tmp_vec_x ckj03_data run data get storage ckenja_pig_hook: tmp.vec.Pos[0] -100000000
execute store result score $tmp_vec_y ckj03_data run data get storage ckenja_pig_hook: tmp.vec.Pos[1] -100000000
execute store result score $tmp_vec_z ckj03_data run data get storage ckenja_pig_hook: tmp.vec.Pos[2] -100000000
#慣性を取得
execute store result score $tmp_mot_x ckj03_data run data get storage ckj03: fetch_entitydata.Motion[0] 100000000
execute store result score $tmp_mot_y ckj03_data run data get storage ckj03: fetch_entitydata.Motion[1] 100000000
execute store result score $tmp_mot_z ckj03_data run data get storage ckj03: fetch_entitydata.Motion[2] 100000000
#計算
# m + ( ( ( ( v * ( l - r ) ) + m ) ) / -0.98 )
#m 慣性(100000000倍)
#v ベクトル(100000000倍)
#l 鎖長
#r 現在の長さ
#l - rを最大10に制限、
scoreboard players operation #ren ckj03_data /= #-100 ckj03_data
scoreboard players operation #ren ckj03_data += @s ckj_pig_hook_len
#x
scoreboard players operation $tmp_vec_x ckj03_data *= $length ckj03_data
scoreboard players operation $tmp_vec_x ckj03_data += $tmp_mot_x ckj03_data
#y
scoreboard players operation $tmp_vec_y ckj03_data *= $length ckj03_data
scoreboard players operation $tmp_vec_y ckj03_data += $tmp_mot_y ckj03_data
#z
scoreboard players operation $tmp_vec_z ckj03_data *= $length ckj03_data
scoreboard players operation $tmp_vec_z ckj03_data += $tmp_mot_z ckj03_data
#代入
data merge storage ckj03: {merge_entitydata:{Motion:[0.0,0.0,0.0]}}
execute store result storage ckj03: merge_entitydata.Motion[0] double 0.00000001 run scoreboard players get $tmp_vec_x ckj03_data
execute store result storage ckj03: merge_entitydata.Motion[1] double 0.00000001 run scoreboard players get $tmp_vec_y ckj03_data
execute store result storage ckj03: merge_entitydata.Motion[2] double 0.00000001 run scoreboard players get $tmp_vec_z ckj03_data
#デバッグ要員
data modify storage test: merge_entitydata set from storage ckj03: merge_entitydata
particle angry_villager ~ ~ ~ ~ ~ ~ 1 0
function ckj03:datatag/merge
