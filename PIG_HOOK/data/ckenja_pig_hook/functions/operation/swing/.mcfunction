#デバッグ要員
function ckj03:datatag/fetch
#とりまリードの長さは固定(100倍)
scoreboard players set @s ckj_pig_hook_len 1600
#自身の座標を取得
execute store result score $tmp_pos_x ckj03_data run data get storage ckj03: fetch_entitydata.Pos[0] 100000000
execute store result score $tmp_pos_y ckj03_data run data get storage ckj03: fetch_entitydata.Pos[1] 100000000
execute store result score $tmp_pos_z ckj03_data run data get storage ckj03: fetch_entitydata.Pos[2] 100000000
#慣性を取得(100000000倍)
execute store result score $tmp_mot_x ckj03_data run data get storage ckj03: fetch_entitydata.Motion[0] 100000000
execute store result score $tmp_mot_y ckj03_data run data get storage ckj03: fetch_entitydata.Motion[1] 100000000
execute store result score $tmp_mot_z ckj03_data run data get storage ckj03: fetch_entitydata.Motion[2] 100000000
#フックの座標を取得
#座標attribute計算 ブタ-フック

#AECいなかったら召喚

#AECにPos代入(フック位置)
#実行場所はそのまま慣性をpos代入
#実行場所から自分の場所向いて下記の関数
#二分探索で、鎖長の場所にAECを移動
#Posをブタのmotionに代入
#tag @s add ckenja_pig_hook_arg
#scoreboard players operation $tmp_id ckj03_data = @s ckj_pig_hook_id
#execute as @e[tag=ckenja_pig_hook_hook,distance=..384] if score @s ckj_pig_hook_id = $tmp_id ckj03_data run function ckenja_pig_hook:operation/swing/hook
#tag @s remove ckenja_pig_hook_arg
#arg ckj03_dataにリード長はいってる
#ベクトル座標取得
#execute store result score $tmp_vec_x ckj03_data run data get storage ckenja_pig_hook: tmp.vec.Pos[0] -100000000
#execute store result score $tmp_vec_y ckj03_data run data get storage ckenja_pig_hook: tmp.vec.Pos[1] -100000000
#execute store result score $tmp_vec_z ckj03_data run data get storage ckenja_pig_hook: tmp.vec.Pos[2] -100000000
#空気抵抗を逆算
#V= (x * 0.98)-( a * 0.98 )
#x 元のmotion
#v 代入するMoion(100000000倍)
#a 必要な加速
#a = ( v - ( x * 0.98 ) ) / 0.98
#x取得時0.98，a代入時100/98≒1.02040816327を引数に
tellraw @a {"score":{"name":"#ret","objective":"ckj03_data"}}

#代入
data merge storage ckj03: {merge_entitydata:{Motion:[0.0,0.0,0.0]}}
execute store result storage ckj03: merge_entitydata.Motion[0] double 0.00000001 run scoreboard players get $tmp_vec_x ckj03_data
execute store result storage ckj03: merge_entitydata.Motion[1] double 0.00000001 run scoreboard players get $tmp_vec_y ckj03_data
execute store result storage ckj03: merge_entitydata.Motion[2] double 0.00000001 run scoreboard players get $tmp_vec_z ckj03_data
#デバッグ要員
data modify storage test: merge_entitydata set from storage ckj03: merge_entitydata
particle angry_villager ~ ~ ~ ~ ~ ~ 1 0
function ckj03:datatag/merge
#tellraw @a {"score":{"name":"$tmp_vec_y","objective":"ckj03_data"}}
