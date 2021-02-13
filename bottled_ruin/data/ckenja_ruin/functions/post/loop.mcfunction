data modify entity @s Pos set from storage ckenja_ruin: yet[0]
#変換
setblock ~ ~ ~ stone


#伝播
#y方向以外へは、start_yと現在の座標が一致した場合のみ
#範囲外出ないことを確認しろー
execute store result score #entity_x ckenja_ruin run data get storage ckenja_ruin: yet[0][0]
execute store result score #entity_y ckenja_ruin run data get storage ckenja_ruin: yet[0][1]
execute store result score #entity_z ckenja_ruin run data get storage ckenja_ruin: yet[0][2]
#y
scoreboard players add #entity_y ckenja_ruin 1
execute if score #entity_y ckenja_ruin <= #end_y ckenja_ruin run function ckenja_ruin:post/y
#x、z
execute if score #entity_y ckenja_ruin = #start_y ckenja_ruin run function ckenja_ruin:post/xz

data remove storage ckenja_ruin: yet[0]
scoreboard players remove #i_ckenja_ruin ckj03_data 1
execute if score #i_ckenja_ruin ckj03_data matches 1.. if data storage ckenja_ruin: yet[0] run function ckenja_ruin:post/loop