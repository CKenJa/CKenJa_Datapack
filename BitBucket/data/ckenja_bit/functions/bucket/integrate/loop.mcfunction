##回す
data modify storage ckenja_bit: Inventory append from storage ckenja_bit: Inventory[0]
data remove storage ckenja_bit: Inventory[0]
##ループ
execute store result score #tmp4 ckj01_data run data get storage ckenja_bit: Inventory[0].Slot
###データが一致したらバケツを自バケツと同じ場所に送る

#execute if score #tmp5 ckj01_data run data modify storage ckenja_bit: Tmp append from storage ckenja_bit: Inventory[0]
execute unless score #tmp3 ckj01_data = #tmp4 ckj01_data run function ckenja_bit:bucket/integrate/loop