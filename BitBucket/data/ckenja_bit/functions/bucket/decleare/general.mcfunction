#tmp1:バケツ数 #tmp2:SelectedItemSlot #tmp3以降:store sucess用

#スタック可能アイテムなのか判定

#SelectedItem処理
execute store result score #tmp2 ckj01_data run data get entity @s SelectedItemSlot
#idとcount代入して
#二分探索めんどくさーい。うつくしくなーい
execute if score #tmp2 ckj01_data matches 0 run function ckenja_bit:bucket/decleare/0
execute if score #tmp2 ckj01_data matches 1 run function ckenja_bit:bucket/decleare/1
execute if score #tmp2 ckj01_data matches 2 run function ckenja_bit:bucket/decleare/2
execute if score #tmp2 ckj01_data matches 3 run function ckenja_bit:bucket/decleare/3
execute if score #tmp2 ckj01_data matches 4 run function ckenja_bit:bucket/decleare/4
execute if score #tmp2 ckj01_data matches 5 run function ckenja_bit:bucket/decleare/5
execute if score #tmp2 ckj01_data matches 6 run function ckenja_bit:bucket/decleare/6
execute if score #tmp2 ckj01_data matches 7 run function ckenja_bit:bucket/decleare/7
execute if score #tmp2 ckj01_data matches 8 run function ckenja_bit:bucket/decleare/8
#オフハンドの方は消す
replaceitem entity @s weapon.offhand air
