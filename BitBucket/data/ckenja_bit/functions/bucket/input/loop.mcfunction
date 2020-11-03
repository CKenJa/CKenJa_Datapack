#idが同じアイテムがあったら数をカウントする。
execute store success score #tmp3 ckj01_data run data modify storage ckenja_bit: tmp.Inventory[0].id set from storage ckenja_bit: Inventory[{Slot:-106b}].id
execute if score #tmp3 ckj01_data matches 0 run function ckenja_bit:bucket/set/match
data remove storage ckenja_bit: tmp.Inventory[0]
execute if data storage ckenja_bit: tmp.Inventory[0] run function ckenja_bit:bucket/set/loop