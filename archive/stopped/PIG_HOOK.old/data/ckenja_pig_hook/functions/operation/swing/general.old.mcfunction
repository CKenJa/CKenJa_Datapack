#デバッグ要員
function ckj03:datatag/fetch
#とりまリードの長さは8m固定
scoreboard players set @s ckj_pig_hook_len 1600
#鎖長の場所にAECを召喚するためにMotionを取得し召喚
##メモ
###座標は最大8桁
###スコアは最大10桁
###慣性は最大2桁
###attributeは最大4桁
##attribute算で座標+Motionを計算
##代入(10000分の1)
##マイナスなら整数にするよりも入れる
###x
scoreboard players set #tmp_- ckj03_data 0
execute unless score $tmp_pos_x ckj03_data matches 0.. run scoreboard players set #tmp_- ckj03_data 1

execute if score #tmp_- ckj03_data matches 0 run execute store result storage ckenja_pig_hook: tmp.Attributes[{Name:"generic.max_health"}].Modifers[{Name:"ckenja_pig_hook_pos"}].Amount double 0.0001 run data get storage ckj03: fetch_entitydata.Pos[0]
execute if score #tmp_- ckj03_data matches 1 run execute store result storage ckenja_pig_hook: tmp.Attributes[{Name:"generic.max_health"}].Modifers[{Name:"ckenja_pig_hook_pos"}].Amount double -0.0001 run data get storage ckj03: fetch_entitydata.Pos[0]

execute store result storage ckenja_pig_hook: tmp.Attributes[{Name:"generic.max_health"}].Modifers[{Name:"ckenja_pig_hook_mot"}].Amount double 0.0001 run data get storage ckj03: fetch_entitydata.Motion[0]

data modify entity @s Attributes set from storage ckenja_pig_hook: tmp.Attributes
execute store result storage ckenja_pig_hook tmp.Pos[0] double 10000 run attribute @s generic.max_health get

###y
scoreboard players set #tmp_- ckj03_data 0
execute unless score $tmp_pos_x ckj03_data matches 0.. run scoreboard players set #tmp_- ckj03_data 1

execute if score #tmp_- ckj03_data matches 0 run execute store result storage ckenja_pig_hook: tmp.Attributes[{Name:"generic.max_health"}].Modifers[{Name:"ckenja_pig_hook_pos"}].Amount double 0.0001 run data get storage ckj03: fetch_entitydata.Pos[1]
execute if score #tmp_- ckj03_data matches 1 run execute store result storage ckenja_pig_hook: tmp.Attributes[{Name:"generic.max_health"}].Modifers[{Name:"ckenja_pig_hook_pos"}].Amount double -0.0001 run data get storage ckj03: fetch_entitydata.Pos[1]

execute store result storage ckenja_pig_hook: tmp.Attributes[{Name:"generic.max_health"}].Modifers[{Name:"ckenja_pig_hook_mot"}].Amount double 0.0001 run data get storage ckj03: fetch_entitydata.Motion[1]


data modify entity @s Attributes set from storage ckenja_pig_hook: tmp.Attributes
execute store result storage ckenja_pig_hook tmp.Pos[1] double 10000 run attribute @s generic.max_health get

###z
scoreboard players set #tmp_- ckj03_data 0
execute unless score $tmp_pos_x ckj03_data matches 0.. run scoreboard players set #tmp_- ckj03_data 1

execute if score #tmp_- ckj03_data matches 0 run execute store result storage ckenja_pig_hook: tmp.Attributes[{Name:"generic.max_health"}].Modifers[{Name:"ckenja_pig_hook_pos"}].Amount double 0.0001 run data get storage ckj03: fetch_entitydata.Pos[2]
execute if score #tmp_- ckj03_data matches 1 run execute store result storage ckenja_pig_hook: tmp.Attributes[{Name:"generic.max_health"}].Modifers[{Name:"ckenja_pig_hook_pos"}].Amount double -0.0001 run data get storage ckj03: fetch_entitydata.Pos[2]

execute store result storage ckenja_pig_hook: tmp.Attributes[{Name:"generic.max_health"}].Modifers[{Name:"ckenja_pig_hook_mot"}].Amount double 0.0001 run data get storage ckj03: fetch_entitydata.Motion[2]


data modify entity @s Attributes set from storage ckenja_pig_hook: tmp.Attributes
execute store result storage ckenja_pig_hook tmp.Pos[2] double 10000 run attribute @s generic.max_health get

#AEC召喚
#AECにPos代入
#二分探索で、鎖長の場所にAECを召喚
#フックとブタの距離を測る
#あと原点向きMotion取得
#用済みはキル
tag @s add ckenja_pig_hook_arg
scoreboard players operation $tmp_id ckj03_data = @s ckj_pig_hook_id
execute as @e[tag=ckenja_pig_hook_hook,distance=..384] if score @s ckj_pig_hook_id = $tmp_id ckj03_data run function ckenja_pig_hook:operation/swing/hook
tag @s remove ckenja_pig_hook_arg
#arg ckj03_dataにリード長はいってる
#慣性を取得(100000000倍)
execute store result score $tmp_mot_x ckj03_data run data get storage ckj03: fetch_entitydata.Motion[0] 100000000
execute store result score $tmp_mot_y ckj03_data run data get storage ckj03: fetch_entitydata.Motion[1] 100000000
execute store result score $tmp_mot_z ckj03_data run data get storage ckj03: fetch_entitydata.Motion[2] 100000000
#ベクトル座標取得
execute store result score $tmp_vec_x ckj03_data run data get storage ckenja_pig_hook: tmp.vec.Pos[0] -100000000
execute store result score $tmp_vec_y ckj03_data run data get storage ckenja_pig_hook: tmp.vec.Pos[1] -100000000
execute store result score $tmp_vec_z ckj03_data run data get storage ckenja_pig_hook: tmp.vec.Pos[2] -100000000
#計算
# m + ( ( ( ( v * ( l - r ) ) + m ) ) / -0.98 )
#m 慣性(100000000倍)
#v ベクトル(100000000倍)
#l 鎖長
#r 現在の長さ
#l - rを最大10に制限、
tellraw @a {"score":{"name":"#ret","objective":"ckj03_data"}}

scoreboard players operation #ret ckj03_data *= #-1 ckj03_data
scoreboard players operation #ret ckj03_data += @s ckj_pig_hook_len
scoreboard players operation $ret ckj03_data = #ret ckj03_data
scoreboard players operation #ret ckj03_data /= #100 ckj03_data
scoreboard players operation #ret ckj03_data /= #2 ckj03_data

#x
scoreboard players operation $tmp_vec_x ckj03_data *= #ret ckj03_data
scoreboard players operation $tmp_vec_x ckj03_data += $tmp_mot_x ckj03_data
#y
scoreboard players operation $tmp_vec_y ckj03_data *= #ret ckj03_data
scoreboard players operation $tmp_vec_y ckj03_data += $tmp_mot_y ckj03_data
#z
scoreboard players operation $tmp_vec_z ckj03_data *= #ret ckj03_data
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
#tellraw @a {"score":{"name":"$tmp_vec_y","objective":"ckj03_data"}}
