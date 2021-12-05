#1.変数tempを壊さないようにコピーします
scoreboard players operation #temp ckenja_chuman = #temp ckenja_chuman_h0
#2.temp - 目標角度
scoreboard players operation #temp ckenja_chuman_h0 -= @s ckenja_chuman_h0
#3.2の値が負の数だったら正の数にします
execute if score #temp ckenja_chuman_h0 matches -1.. run scoreboard players operation #temp ckenja_chuman_h0 *= #-1 ckenja_chuman_h0
#4.3の値が180以上ならtempに1を足し、180未満ならtempから1を引きます
execute if score #temp ckenja_chuman_h0 matches 180.. run scoreboard players add #temp ckenja_chuman 1
execute if score #temp ckenja_chuman_h0 matches ..179 run scoreboard players remove #temp ckenja_chuman 1
#5.アマスタ君に値を代入します。
execute store result entity @s Pose.Head[0] float 1 run scoreboard players get #temp ckenja_chuman

say h0