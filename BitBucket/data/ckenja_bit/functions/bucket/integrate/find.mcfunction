##回す
data modify storage ckenja_bit: Inventory append from storage ckenja_bit: Inventory[0]
data remove storage ckenja_bit: Inventory[0]
###UUIDが一致したらバケツを自バケツと同じ場所に送る
data modify storage ckenja_bit: Source set from storage ckenja_bit: Buckets[0].UUID
data modify storage ckenja_bit: Destination set from storage ckenja_bit: Inventory[0].UUID
execute store result score #tmp5 ckj01_data run data modify storage ckenja_bit: Source set from storage ckenja_bit: Destination
execute if score #tmp5 ckj01_data matches 0 run data modify storage ckenja_bit: Buckets append from storage ckenja_bit: Inventory[0]
##ループ
execute store result score #tmp4 ckj01_data run data get storage ckenja_bit: Inventory[0].Slot
execute unless score #tmp3 ckj01_data = #tmp4 ckj01_data run function ckenja_bit:bucket/integrate/loop
