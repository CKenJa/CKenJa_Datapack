#デバッグ要員
function ckj04:datatag/fetch
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
scoreboard players set #tmp_- ckj04.data 0
execute unless score $tmp_pos_x ckj04.data matches 0.. run scoreboard players set #tmp_- ckj04.data 1

execute if score #tmp_- ckj04.data matches 0 run execute store result storage ckenja.pigrapple: tmp.Attributes[{Name:"generic.max_health"}].Modifers[{Name:"ckenja.pigrapple_pos"}].Amount double 0.0001 run data get storage ckj04: fetch_entitydata.Pos[0]
execute if score #tmp_- ckj04.data matches 1 run execute store result storage ckenja.pigrapple: tmp.Attributes[{Name:"generic.max_health"}].Modifers[{Name:"ckenja.pigrapple_pos"}].Amount double -0.0001 run data get storage ckj04: fetch_entitydata.Pos[0]

execute store result storage ckenja.pigrapple: tmp.Attributes[{Name:"generic.max_health"}].Modifers[{Name:"ckenja.pigrapple_mot"}].Amount double 0.0001 run data get storage ckj04: fetch_entitydata.Motion[0]

data modify entity @s Attributes set from storage ckenja.pigrapple: tmp.Attributes
execute store result storage ckenja.pigrapple tmp.Pos[0] double 10000 run attribute @s generic.max_health get

###y
scoreboard players set #tmp_- ckj04.data 0
execute unless score $tmp_pos_x ckj04.data matches 0.. run scoreboard players set #tmp_- ckj04.data 1

execute if score #tmp_- ckj04.data matches 0 run execute store result storage ckenja.pigrapple: tmp.Attributes[{Name:"generic.max_health"}].Modifers[{Name:"ckenja.pigrapple_pos"}].Amount double 0.0001 run data get storage ckj04: fetch_entitydata.Pos[1]
execute if score #tmp_- ckj04.data matches 1 run execute store result storage ckenja.pigrapple: tmp.Attributes[{Name:"generic.max_health"}].Modifers[{Name:"ckenja.pigrapple_pos"}].Amount double -0.0001 run data get storage ckj04: fetch_entitydata.Pos[1]

execute store result storage ckenja.pigrapple: tmp.Attributes[{Name:"generic.max_health"}].Modifers[{Name:"ckenja.pigrapple_mot"}].Amount double 0.0001 run data get storage ckj04: fetch_entitydata.Motion[1]


data modify entity @s Attributes set from storage ckenja.pigrapple: tmp.Attributes
execute store result storage ckenja.pigrapple tmp.Pos[1] double 10000 run attribute @s generic.max_health get

###z
scoreboard players set #tmp_- ckj04.data 0
execute unless score $tmp_pos_x ckj04.data matches 0.. run scoreboard players set #tmp_- ckj04.data 1

execute if score #tmp_- ckj04.data matches 0 run execute store result storage ckenja.pigrapple: tmp.Attributes[{Name:"generic.max_health"}].Modifers[{Name:"ckenja.pigrapple_pos"}].Amount double 0.0001 run data get storage ckj04: fetch_entitydata.Pos[2]
execute if score #tmp_- ckj04.data matches 1 run execute store result storage ckenja.pigrapple: tmp.Attributes[{Name:"generic.max_health"}].Modifers[{Name:"ckenja.pigrapple_pos"}].Amount double -0.0001 run data get storage ckj04: fetch_entitydata.Pos[2]

execute store result storage ckenja.pigrapple: tmp.Attributes[{Name:"generic.max_health"}].Modifers[{Name:"ckenja.pigrapple_mot"}].Amount double 0.0001 run data get storage ckj04: fetch_entitydata.Motion[2]


data modify entity @s Attributes set from storage ckenja.pigrapple: tmp.Attributes
execute store result storage ckenja.pigrapple tmp.Pos[2] double 10000 run attribute @s generic.max_health get

#AEC召喚
#AECにPos代入
#二分探索で、鎖長の場所にAECを召喚
#フックとブタの距離を測る
#あと原点向きMotion取得
#用済みはキル
tag @s add ckenja.pigrapple_arg
scoreboard players operation $tmp_id ckj04.data = @s ckj_pig_hook_id
execute as @e[tag=ckenja.pigrapple_hook,distance=..384] if score @s ckj_pig_hook_id = $tmp_id ckj04.data run function ckenja.pigrapple:operation/swing/hook
tag @s remove ckenja.pigrapple_arg
#arg ckj04.dataにリード長はいってる
#慣性を取得(100000000倍)
execute store result score $tmp_mot_x ckj04.data run data get storage ckj04: fetch_entitydata.Motion[0] 100000000
execute store result score $tmp_mot_y ckj04.data run data get storage ckj04: fetch_entitydata.Motion[1] 100000000
execute store result score $tmp_mot_z ckj04.data run data get storage ckj04: fetch_entitydata.Motion[2] 100000000
#ベクトル座標取得
execute store result score $tmp_vec_x ckj04.data run data get storage ckenja.pigrapple: tmp.vec.Pos[0] -100000000
execute store result score $tmp_vec_y ckj04.data run data get storage ckenja.pigrapple: tmp.vec.Pos[1] -100000000
execute store result score $tmp_vec_z ckj04.data run data get storage ckenja.pigrapple: tmp.vec.Pos[2] -100000000
#計算
# m + ( ( ( ( v * ( l - r ) ) + m ) ) / -0.98 )
#m 慣性(100000000倍)
#v ベクトル(100000000倍)
#l 鎖長
#r 現在の長さ
#l - rを最大10に制限、
tellraw @a {"score":{"name":"#ret","objective":"ckj04.data"}}

scoreboard players operation #ret ckj04.data *= #-1 ckj04.data
scoreboard players operation #ret ckj04.data += @s ckj_pig_hook_len
scoreboard players operation $ret ckj04.data = #ret ckj04.data
scoreboard players operation #ret ckj04.data /= #100 ckj04.data
scoreboard players operation #ret ckj04.data /= #2 ckj04.data

#x
scoreboard players operation $tmp_vec_x ckj04.data *= #ret ckj04.data
scoreboard players operation $tmp_vec_x ckj04.data += $tmp_mot_x ckj04.data
#y
scoreboard players operation $tmp_vec_y ckj04.data *= #ret ckj04.data
scoreboard players operation $tmp_vec_y ckj04.data += $tmp_mot_y ckj04.data
#z
scoreboard players operation $tmp_vec_z ckj04.data *= #ret ckj04.data
scoreboard players operation $tmp_vec_z ckj04.data += $tmp_mot_z ckj04.data
#代入
data merge storage ckj04: {merge_entitydata:{Motion:[0.0,0.0,0.0]}}
execute store result storage ckj04: merge_entitydata.Motion[0] double 0.00000001 run scoreboard players get $tmp_vec_x ckj04.data
execute store result storage ckj04: merge_entitydata.Motion[1] double 0.00000001 run scoreboard players get $tmp_vec_y ckj04.data
execute store result storage ckj04: merge_entitydata.Motion[2] double 0.00000001 run scoreboard players get $tmp_vec_z ckj04.data
#デバッグ要員
data modify storage test: merge_entitydata set from storage ckj04: merge_entitydata
particle angry_villager ~ ~ ~ ~ ~ ~ 1 0
function ckj04:datatag/merge
#tellraw @a {"score":{"name":"$tmp_vec_y","objective":"ckj04.data"}}
