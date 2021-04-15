#> ckenja_pig_hook:operation/swing/
#
#ブタのスイング移動をする
#
#@input as @e[type=!player]
#@reads
    #
#@within ckenja_pig_hook:player/exist_hook/general

#> private
#@private
    #declare score_holder $tmp_pos_x ブタ座標
    #declare score_holder $tmp_pos_y
    #declare score_holder $tmp_pos_z
    #declare score_holder $tmp_mot_x ブタ慣性
    #declare score_holder $tmp_mot_y
    #declare score_holder $tmp_mot_z
    #declare score_holder $tmp_hok_x フック座標
    #declare score_holder $tmp_hok_y
    #declare score_holder $tmp_hok_z
    #declare storage ckenja_pig_hook:tmp.Pos 代入する座標を入れとく
    #declare storage ckenja_pig_hook:tmp.Motion 代入する運動を入れとく

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
execute as @e[tag=ckenja_pig_hook_hook,distance=..384] if score @s ckj_pig_hook_id = $tmp_id ckj03_data run data modify storage ckenja_pig_hook: tmp.Pos set from entity @s Pos
execute store result score $tmp_hok_x ckj03_data run data get storage ckenja_pig_hook: tmp.Pos[0] 100000000
execute store result score $tmp_hok_y ckj03_data run data get storage ckenja_pig_hook: tmp.Pos[1] 100000000
execute store result score $tmp_hok_z ckj03_data run data get storage ckenja_pig_hook: tmp.Pos[2] 100000000
#座標attribute計算 ブタ座標-フック座標-慣性
#attribute算めんどい
scoreboard players operation $tmp_pos_x ckj03_data -= $tmp_hok_x ckj03_data
scoreboard players operation $tmp_pos_y ckj03_data -= $tmp_hok_y ckj03_data
scoreboard players operation $tmp_pos_z ckj03_data -= $tmp_hok_z ckj03_data
scoreboard players operation $tmp_pos_x ckj03_data -= $tmp_mot_x ckj03_data
scoreboard players operation $tmp_pos_y ckj03_data -= $tmp_mot_y ckj03_data
scoreboard players operation $tmp_pos_z ckj03_data -= $tmp_mot_z ckj03_data
#AECいなかったら召喚
summon minecraft:area_effect_cloud ~ ~ ~ {Radius:0f,Duration:0,Tags:["ckenja_pig_hook_aec"]}
#pos代入
#原点から自分向いて二分探索で鎖長にtp
#座標を保存
#用済みはキル
execute as @e[tag=ckenja_pig_hook_aec,distance=..384] run function ckenja_pig_hook:operation/swing/aec
#ベクトル座標取得
execute store result score $tmp_vec_x ckj03_data run data get storage ckenja_pig_hook: tmp.Vec[0] -100000000
execute store result score $tmp_vec_y ckj03_data run data get storage ckenja_pig_hook: tmp.Vec[1] -100000000
execute store result score $tmp_vec_z ckj03_data run data get storage ckenja_pig_hook: tmp.Vec[2] -100000000
#空気抵抗を逆算
#V= (x * 0.98)-( a * 0.98 )
#x 元のmotion
#v 代入するMoion(100000000倍)
#a 必要な加速
#a = ( v - ( x * 0.98 ) ) / 0.98
#x取得時0.98，a代入時100/98≒1.02040816327を引数に
execute store result score $tmp_mot_x ckj03_data run data get storage ckj03: fetch_entitydata.Motion[0] 98000000
execute store result score $tmp_mot_y ckj03_data run data get storage ckj03: fetch_entitydata.Motion[1] 98000000
execute store result score $tmp_mot_z ckj03_data run data get storage ckj03: fetch_entitydata.Motion[2] 98000000
scoreboard players operation $tmp_vec_x ckj03_data += $tmp_mot_x ckj03_data
scoreboard players operation $tmp_vec_y ckj03_data += $tmp_mot_y ckj03_data
scoreboard players operation $tmp_vec_z ckj03_data += $tmp_mot_z ckj03_data
#代入
data merge storage ckj03: {merge_entitydata:{Motion:[0.0,0.0,0.0]}}
execute store result storage ckj03: merge_entitydata.Motion[0] double 0.0000000102040816327 run scoreboard players get $tmp_vec_x ckj03_data
execute store result storage ckj03: merge_entitydata.Motion[1] double 0.0000000102040816327 run scoreboard players get $tmp_vec_y ckj03_data
execute store result storage ckj03: merge_entitydata.Motion[2] double 0.0000000102040816327 run scoreboard players get $tmp_vec_z ckj03_data
#デバッグ要員
data modify storage test: merge_entitydata set from storage ckj03: merge_entitydata
particle angry_villager ~ ~ ~ ~ ~ ~ 1 0
function ckj03:datatag/merge
#tellraw @a {"score":{"name":"$tmp_vec_y","objective":"ckj03_data"}}
