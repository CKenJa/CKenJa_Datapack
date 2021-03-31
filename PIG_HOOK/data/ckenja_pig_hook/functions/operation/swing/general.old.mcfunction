function ckj03:datatag/fetch
#スコアからリードの長さを取得(フック射出時に測る)
#二分探索で、リード長の場所にAECを召喚しベクトル座標取得、用済みはキル
tag @s add ckenja_pig_hook_now
scoreboard players operation $tmp_id ckj03_data = @s ckj_pig_hook_id
execute as @e[tag=ckenja_pig_hook_hook,distance=..384] at @s if score @s ckj_pig_hook_id = $tmp_id ckj03_data run function ckenja_pig_hook:operation/swing/hook
tag @s remove ckenja_pig_hook_now
#ベクトル座標取得
execute store result score $tmp_vec_x ckj03_data run data get storage ckenja_pig_hook: tmp.vec.Pos[0] -10000
execute store result score $tmp_vec_y ckj03_data run data get storage ckenja_pig_hook: tmp.vec.Pos[1] -10000
execute store result score $tmp_vec_z ckj03_data run data get storage ckenja_pig_hook: tmp.vec.Pos[2] -10000
#現在座標取得
execute store result score $tmp_pos_x ckj03_data run data get storage ckj03: fetch_entitydata.Pos[0] 10000
execute store result score $tmp_pos_y ckj03_data run data get storage ckj03: fetch_entitydata.Pos[1] 10000
execute store result score $tmp_pos_z ckj03_data run data get storage ckj03: fetch_entitydata.Pos[2] 10000
#慣性を取得
execute store result score $tmp_mot_x ckj03_data run data get storage ckj03: fetch_entitydata.Motion[0] 10000
execute store result score $tmp_mot_y ckj03_data run data get storage ckj03: fetch_entitydata.Motion[1] 10000
execute store result score $tmp_mot_z ckj03_data run data get storage ckj03: fetch_entitydata.Motion[2] 10000
##Motion演算する
#(現在座標-ベクトル座標)+慣性を
# m + ( ( ( ( p - v ) + m ) - 0.98 * p ) / -0.98 )
#X
scoreboard players operation $tmp_vec_x ckj03_data += $tmp_pos_x ckj03_data
scoreboard players operation $tmp_vec_x ckj03_data += $tmp_mot_x ckj03_data

#scoreboard players operation $tmp_pos_x ckj03_data /= #50 ckj03_data
#scoreboard players operation $tmp_pos_x ckj03_data *= #49 ckj03_data

#scoreboard players operation $tmp_vec_x ckj03_data -= $tmp_pos_x ckj03_data

#scoreboard players operation $tmp_vec_x ckj03_data /= #49 ckj03_data
#scoreboard players operation $tmp_vec_x ckj03_data *= #50 ckj03_data

#scoreboard players operation $tmp_mot_x ckj03_data -= $tmp_vec_x ckj03_data
#Y
scoreboard players operation $tmp_vec_y ckj03_data += $tmp_pos_y ckj03_data
scoreboard players operation $tmp_vec_y ckj03_data += $tmp_mot_y ckj03_data

#scoreboard players operation $tmp_pos_y ckj03_data /= #50 ckj03_data
#scoreboard players operation $tmp_pos_y ckj03_data *= #49 ckj03_data

#scoreboard players operation $tmp_vec_y ckj03_data -= $tmp_pos_y ckj03_data

#scoreboard players operation $tmp_vec_y ckj03_data /= #49 ckj03_data
#scoreboard players operation $tmp_vec_y ckj03_data *= #50 ckj03_data

#scoreboard players operation $tmp_mot_y ckj03_data -= $tmp_vec_y ckj03_data

#Z
scoreboard players operation $tmp_vec_z ckj03_data += $tmp_pos_z ckj03_data
scoreboard players operation $tmp_vec_z ckj03_data += $tmp_mot_z ckj03_data

#scoreboard players operation $tmp_pos_z ckj03_data /= #50 ckj03_data
#scoreboard players operation $tmp_pos_z ckj03_data *= #49 ckj03_data

#scoreboard players operation $tmp_vec_z ckj03_data -= $tmp_pos_z ckj03_data

#scoreboard players operation $tmp_vec_z ckj03_data /= #49 ckj03_data
#scoreboard players operation $tmp_vec_z ckj03_data *= #50 ckj03_data

#scoreboard players operation $tmp_mot_z ckj03_data -= $tmp_vec_z ckj03_data

#代入する
data merge storage ckj03: {merge_entitydata:{Motion:[0.0,0.0,0.0]}}
#execute store result storage ckj03: merge_entitydata.Motion[0] double 0.1 run scoreboard players get $tmp_mot_x ckj03_data
#execute store result storage ckj03: merge_entitydata.Motion[1] double 0.1 run scoreboard players get $tmp_mot_y ckj03_data
#execute store result storage ckj03: merge_entitydata.Motion[2] double 0.1 run scoreboard players get $tmp_mot_z ckj03_data

execute store result storage ckj03: merge_entitydata.Motion[0] double 0.00001 run scoreboard players get $tmp_vec_x ckj03_data
execute store result storage ckj03: merge_entitydata.Motion[1] double 0.00001 run scoreboard players get $tmp_vec_y ckj03_data
execute store result storage ckj03: merge_entitydata.Motion[2] double 0.00001 run scoreboard players get $tmp_vec_z ckj03_data

##空気抵抗演算の逆算メモ
#V = (0.98x)-(0.98acceleration)
#V:加速後 X:加速前 A:加速度
#VとXからAを求める。
#(V - 0.98X) / -0.98 = A
data modify storage test: merge_entitydata set from storage ckj03: merge_entitydata

particle angry_villager ~ ~ ~ ~ ~ ~ 1 0
say yeah
function ckj03:datatag/merge