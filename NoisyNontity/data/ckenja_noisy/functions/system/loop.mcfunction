#再帰処理
scoreboard remove #tmp ckj02_data 1
execute if score #tmp ckj02_data matches 1.. run function ckenja_noisy:system/loop

#スタック回す
data modify storage ckenja_noisy: Data append from storage ckenja_noisy: Data[0]
data remove storage ckenja_noisy: Data[0]
#Pos代入
data modify entity @s Pos set from storage ckenja_noisy: Pos
#実行
execute at @s run function #ckenja_noisy:tag
