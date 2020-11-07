#データが一致してるか?
data modify storage ckenja_bit: Tmp set from storage ckenja_bit: Inventory[0]
##エンティティデータをコピー
data modify storage ckenja_bit: Item set from entity @s Item
##tag.ckenja_bitを消す
data remove storage ckenja_bit: Tmp.tag.ckenja_bit
##Countも消す
execute store result score #tmp4 ckj01_data run data get storage ckenja_bit: Item.Count
data remove storage ckenja_bit: Tmp.Count
data remove storage ckenja_bit: Item.Count
#一致したら代入
execute store success score #tmp3 ckj01_data run data modify storage ckenja_bit: Tmp set from storage ckenja_bit: Item
execute if score #tmp3 ckj01_data matches 0 run function ckenja_bit:bucket/assign/success