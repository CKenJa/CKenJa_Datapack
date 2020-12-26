data remove storage ckenja_named: CustomName
#名前
execute store result score #random ckj01_data run data get entity @s UUID[0] 1
scoreboard players operation #random ckj01_data = #tmp ckj01_data
scoreboard players operation #random ckj01_data = #tmp2 ckj01_data
scoreboard players operation #tmp ckj01_data %= #4 ckj01_data
scoreboard players add #tmp2 ckj01_data 1
scoreboard players operation #tmp2 ckj01_data /= #ckenja_named_denominator ckj01_data
scoreboard players operation #loop_counter ckj01_data = #tmp2 ckj01_data
execute if score #tmp2 ckj01_data matches ..0 unless score #tmp ckj01_data matches 0 run function ckenja_named:given/prepend
execute unless score #tmp2 ckj01_data matches ..0 unless score #tmp ckj01_data matches 0 run function ckenja_named:given/append
#苗字
execute store result score #random ckj01_data run data get entity @s UUID[1] 1
scoreboard players operation #random ckj01_data = #tmp ckj01_data
scoreboard players operation #random ckj01_data = #tmp2 ckj01_data
scoreboard players operation #tmp ckj01_data %= #4 ckj01_data
scoreboard players add #tmp2 ckj01_data 1
scoreboard players operation #tmp2 ckj01_data /= #ckenja_named_denominator ckj01_data
scoreboard players operation #loop_counter ckj01_data = #tmp2 ckj01_data
execute if score #tmp2 ckj01_data matches ..0 unless score #tmp ckj01_data matches 0 run function ckenja_named:family/prepend
execute unless score #tmp2 ckj01_data matches ..0 unless score #tmp ckj01_data matches 0 run function ckenja_named:family/append
#称号
execute store result score #random ckj01_data run data get entity @s UUID[3] 1
scoreboard players operation #random ckj01_data = #tmp ckj01_data
scoreboard players operation #random ckj01_data = #tmp2 ckj01_data
scoreboard players operation #tmp ckj01_data %= #4 ckj01_data
scoreboard players add #tmp2 ckj01_data 1
scoreboard players operation #tmp2 ckj01_data /= #ckenja_named_denominator ckj01_data
scoreboard players operation #loop_counter ckj01_data = #tmp2 ckj01_data
execute if score #tmp2 ckj01_data matches ..0 unless score #tmp ckj01_data matches 0 run function ckenja_named:title/prepend
execute unless score #tmp2 ckj01_data matches ..0 unless score #tmp ckj01_data matches 0 run function ckenja_named:title/append
#強化
#強化タグをつけるかどうか判定
#強化タグが付いていたらランダムな属性タグを付ける
#属性タグに応じて効果タグをつける
#UUID[4]は負の数にならないなぜか
#execute store result score #random ckj01_data run data get entity @s UUID[4] 1
#scoreboard players add #random ckj01_data 1
#scoreboard players operation #random ckj01_data /= #ckenja_named_denominator ckj01_data
#反映
execute in ckj01:void positioned 2 2 2 run function ckenja_named:naming
#data modify entity @s CustomName set from storage ckenja_named: CustomName[]